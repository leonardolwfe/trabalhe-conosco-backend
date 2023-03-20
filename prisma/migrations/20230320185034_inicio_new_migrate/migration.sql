/*
  Warnings:

  - You are about to drop the column `idCargo` on the `Interesse` table. All the data in the column will be lost.
  - You are about to drop the column `idProfissao` on the `Interesse` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Interesse" DROP COLUMN "idCargo",
DROP COLUMN "idProfissao";
