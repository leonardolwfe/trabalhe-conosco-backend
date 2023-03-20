/*
  Warnings:

  - Added the required column `atualizadoPor` to the `Vaga` table without a default value. This is not possible if the table is not empty.
  - Added the required column `criadoPor` to the `Vaga` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Vaga" ADD COLUMN     "atualizadoPor" TEXT NOT NULL,
ADD COLUMN     "criadoPor" TEXT NOT NULL;
