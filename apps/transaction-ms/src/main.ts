import { NestFactory } from '@nestjs/core';
import { TransactionMsModule } from './transaction-ms.module';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { ValidationPipe, BadRequestException } from '@nestjs/common';
import { ValidationError } from 'class-validator';
import { ConfigService } from '@nestjs/config';

async function bootstrap() {
  const app = await NestFactory.create(TransactionMsModule);
  const port = app.get(ConfigService).get('TRANSACTION_MS_PORT', 3000);

  const config = new DocumentBuilder()
    .setTitle('Transaction Microservice')
    .setDescription('The Transaction API description')
    .setVersion('1.0')
    .build();
  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('api/transaction-ms', app, document);

  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      forbidNonWhitelisted: true,
      transformOptions: {
        enableImplicitConversion: true,
      },
      exceptionFactory: (validationErrors: Array<ValidationError> = []) => {
        return new BadRequestException(validationErrors);
      },
    }),
  );

  await app.listen(port);
}
bootstrap();
