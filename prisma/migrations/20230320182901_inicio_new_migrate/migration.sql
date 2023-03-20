/*
  Warnings:

  - You are about to drop the column `idUsuario` on the `DadoPessoal` table. All the data in the column will be lost.
  - You are about to drop the column `idUsuario` on the `Endereco` table. All the data in the column will be lost.
  - You are about to drop the column `idUsuario` on the `Interesse` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[idDadoPessoal]` on the table `Usuario` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[idEndereco]` on the table `Usuario` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[idInteresse]` on the table `Usuario` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "DadoPessoal" DROP CONSTRAINT "DadoPessoal_idUsuario_fkey";

-- DropForeignKey
ALTER TABLE "Endereco" DROP CONSTRAINT "Endereco_idUsuario_fkey";

-- DropForeignKey
ALTER TABLE "Interesse" DROP CONSTRAINT "Interesse_idUsuario_fkey";

-- DropIndex
DROP INDEX "DadoPessoal_idUsuario_key";

-- DropIndex
DROP INDEX "Endereco_idUsuario_key";

-- DropIndex
DROP INDEX "Interesse_idUsuario_key";

-- AlterTable
ALTER TABLE "DadoPessoal" DROP COLUMN "idUsuario";

-- AlterTable
ALTER TABLE "Endereco" DROP COLUMN "idUsuario";

-- AlterTable
ALTER TABLE "Interesse" DROP COLUMN "idUsuario";

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_idDadoPessoal_key" ON "Usuario"("idDadoPessoal");

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_idEndereco_key" ON "Usuario"("idEndereco");

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_idInteresse_key" ON "Usuario"("idInteresse");

-- AddForeignKey
ALTER TABLE "Usuario" ADD CONSTRAINT "Usuario_idDadoPessoal_fkey" FOREIGN KEY ("idDadoPessoal") REFERENCES "DadoPessoal"("idDadoPessoal") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Usuario" ADD CONSTRAINT "Usuario_idEndereco_fkey" FOREIGN KEY ("idEndereco") REFERENCES "Endereco"("idEndereco") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Usuario" ADD CONSTRAINT "Usuario_idInteresse_fkey" FOREIGN KEY ("idInteresse") REFERENCES "Interesse"("idInteresse") ON DELETE RESTRICT ON UPDATE CASCADE;
