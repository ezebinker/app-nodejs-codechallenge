import { BadRequestException, Injectable } from '@nestjs/common';
import { Transaction } from '../entities/transaction.entity';
import { CreateTransactionDto } from '../dtos/create-transaction.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { v4 as uuid } from 'uuid';
import { TransactionTypeService } from './transaction-type.service';
import { TransactionStatuses } from '../enums/transaction-status.enum';
import { TransactionStatusService } from './transaction-status.service';

@Injectable()
export class TransactionService {
  constructor(
    @InjectRepository(Transaction)
    private repository: Repository<Transaction>,
    private transactionTypeService: TransactionTypeService,
    private transactionStatusService: TransactionStatusService,
  ) {}

  async findOne(transactionExternalId: string): Promise<Transaction> {
    const transaction = await this.repository.findOne({
      where: { transactionExternalId },
      select: {
        accountExternalIdDebit: false,
        accountExternalIdCredit: false,
        transactionType: {
          id: false,
          name: true,
        },
        transactionStatus: {
          id: false,
          name: true,
        },
      },
      relations: {
        transactionType: true,
        transactionStatus: true,
      },
    });

    if (!transaction) throw new BadRequestException('Transaction not found');

    return transaction;
  }

  async create(
    createTransactionDto: CreateTransactionDto,
  ): Promise<Transaction> {
    const transactionType = await this.transactionTypeService.findOne(
      createTransactionDto.transactionTypeId,
    );

    if (!transactionType)
      throw new BadRequestException('Transaction type not found');

    const transactionStatus = await this.transactionStatusService.findOne(
      TransactionStatuses.PENDING,
    );

    if (!transactionStatus)
      throw new BadRequestException('Transaction status not found');

    const transaction = new Transaction();
    transaction.transactionExternalId = uuid();
    transaction.accountExternalIdDebit =
      createTransactionDto.accountExternalIdDebit;
    transaction.accountExternalIdCredit =
      createTransactionDto.accountExternalIdCredit;
    transaction.transactionType = transactionType;
    transaction.value = createTransactionDto.value;
    transaction.transactionStatus = transactionStatus;
    return await this.repository.save(transaction);
  }
}
