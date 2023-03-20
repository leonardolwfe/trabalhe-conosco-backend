/*
  Warnings:

  - Changed the type of `atualizadoPor` on the `Vaga` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `criadoPor` on the `Vaga` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Vaga" DROP COLUMN "atualizadoPor",
ADD COLUMN     "atualizadoPor" INTEGER NOT NULL,
DROP COLUMN "criadoPor",
ADD COLUMN     "criadoPor" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Vaga" ADD CONSTRAINT "Vaga_criadoPor_fkey" FOREIGN KEY ("criadoPor") REFERENCES "Usuario"("idUsuario") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vaga" ADD CONSTRAINT "Vaga_atualizadoPor_fkey" FOREIGN KEY ("atualizadoPor") REFERENCES "Usuario"("idUsuario") ON DELETE RESTRICT ON UPDATE CASCADE;
