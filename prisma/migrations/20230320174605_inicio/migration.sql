-- CreateTable
CREATE TABLE "TipoCurso" (
    "idTipoCurso" SERIAL NOT NULL,
    "nomeTipoCurso" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "TipoCurso_pkey" PRIMARY KEY ("idTipoCurso")
);

-- CreateTable
CREATE TABLE "Escolaridade" (
    "idEscolaridade" SERIAL NOT NULL,
    "instituicao" TEXT NOT NULL,
    "nomeEscolaridade" TEXT NOT NULL,
    "cnpjInstituicao" TEXT NOT NULL,
    "dataInicio" TIMESTAMP(3) NOT NULL,
    "dataFinal" TIMESTAMP(3) NOT NULL,
    "idUsuario" INTEGER NOT NULL,
    "idTipoCurso" INTEGER NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Escolaridade_pkey" PRIMARY KEY ("idEscolaridade")
);

-- CreateTable
CREATE TABLE "Usuario" (
    "idUsuario" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "usuario" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "provedor" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "resetarSenhaToken" TEXT NOT NULL,
    "confirmacaoToken" TEXT NOT NULL,
    "confirmado" BOOLEAN NOT NULL DEFAULT false,
    "idDadoPessoal" INTEGER NOT NULL,
    "idEndereco" INTEGER NOT NULL,
    "idInteresse" INTEGER NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("idUsuario")
);

-- CreateTable
CREATE TABLE "EstadoCivil" (
    "idEstadoCivil" SERIAL NOT NULL,
    "nomeEstadoCivil" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "EstadoCivil_pkey" PRIMARY KEY ("idEstadoCivil")
);

-- CreateTable
CREATE TABLE "Sexo" (
    "idSexo" SERIAL NOT NULL,
    "nomeSexo" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Sexo_pkey" PRIMARY KEY ("idSexo")
);

-- CreateTable
CREATE TABLE "DadoPessoal" (
    "idDadoPessoal" SERIAL NOT NULL,
    "nascimento" TIMESTAMP(3) NOT NULL,
    "celular" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "idSexo" INTEGER NOT NULL,
    "idEstadoCivil" INTEGER NOT NULL,
    "idUsuario" INTEGER NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "DadoPessoal_pkey" PRIMARY KEY ("idDadoPessoal")
);

-- CreateTable
CREATE TABLE "Estado" (
    "idEstado" SERIAL NOT NULL,
    "nomeEstado" TEXT NOT NULL,
    "siglaEstado" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Estado_pkey" PRIMARY KEY ("idEstado")
);

-- CreateTable
CREATE TABLE "Cidade" (
    "idCidade" SERIAL NOT NULL,
    "nomeCidade" TEXT NOT NULL,
    "idEstado" INTEGER NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Cidade_pkey" PRIMARY KEY ("idCidade")
);

-- CreateTable
CREATE TABLE "Endereco" (
    "idEndereco" SERIAL NOT NULL,
    "bairro" TEXT NOT NULL,
    "rua" TEXT NOT NULL,
    "cep" TEXT NOT NULL,
    "numero" INTEGER NOT NULL,
    "idCidade" INTEGER NOT NULL,
    "idUsuario" INTEGER NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Endereco_pkey" PRIMARY KEY ("idEndereco")
);

-- CreateTable
CREATE TABLE "Interesse" (
    "idInteresse" SERIAL NOT NULL,
    "disponiTrocaCidade" BOOLEAN NOT NULL,
    "idCidade" INTEGER NOT NULL,
    "idCargo" INTEGER NOT NULL,
    "idProfissao" INTEGER NOT NULL,
    "idUsuario" INTEGER NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Interesse_pkey" PRIMARY KEY ("idInteresse")
);

-- CreateTable
CREATE TABLE "Cargo" (
    "idCargo" SERIAL NOT NULL,
    "nomeCargo" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Cargo_pkey" PRIMARY KEY ("idCargo")
);

-- CreateTable
CREATE TABLE "Profissao" (
    "idProfissao" SERIAL NOT NULL,
    "nomeProfissao" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Profissao_pkey" PRIMARY KEY ("idProfissao")
);

-- CreateTable
CREATE TABLE "Periodo" (
    "idPeriodo" SERIAL NOT NULL,
    "nomePeriodo" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Periodo_pkey" PRIMARY KEY ("idPeriodo")
);

-- CreateTable
CREATE TABLE "Recrutador" (
    "idRecrutador" SERIAL NOT NULL,
    "nomeRecrutador" TEXT NOT NULL,
    "matriculaRecrutador" TEXT NOT NULL,
    "idEmpresa" INTEGER NOT NULL,
    "idUsuario" INTEGER NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Recrutador_pkey" PRIMARY KEY ("idRecrutador")
);

-- CreateTable
CREATE TABLE "Empresa" (
    "idEmpresa" SERIAL NOT NULL,
    "nomeEmpresa" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Empresa_pkey" PRIMARY KEY ("idEmpresa")
);

-- CreateTable
CREATE TABLE "Vaga" (
    "idVaga" SERIAL NOT NULL,
    "idCargo" INTEGER NOT NULL,
    "idProfissao" INTEGER NOT NULL,
    "idCidade" INTEGER NOT NULL,
    "idEmpresa" INTEGER NOT NULL,
    "idPeriodo" INTEGER NOT NULL,
    "idTipoCurso" INTEGER NOT NULL,
    "descricao" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Vaga_pkey" PRIMARY KEY ("idVaga")
);

-- CreateTable
CREATE TABLE "_InteresseToProfissao" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_CargoToInteresse" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_usuario_key" ON "Usuario"("usuario");

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_email_key" ON "Usuario"("email");

-- CreateIndex
CREATE UNIQUE INDEX "DadoPessoal_idUsuario_key" ON "DadoPessoal"("idUsuario");

-- CreateIndex
CREATE UNIQUE INDEX "Endereco_idUsuario_key" ON "Endereco"("idUsuario");

-- CreateIndex
CREATE UNIQUE INDEX "Interesse_idUsuario_key" ON "Interesse"("idUsuario");

-- CreateIndex
CREATE UNIQUE INDEX "Recrutador_idUsuario_key" ON "Recrutador"("idUsuario");

-- CreateIndex
CREATE UNIQUE INDEX "_InteresseToProfissao_AB_unique" ON "_InteresseToProfissao"("A", "B");

-- CreateIndex
CREATE INDEX "_InteresseToProfissao_B_index" ON "_InteresseToProfissao"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_CargoToInteresse_AB_unique" ON "_CargoToInteresse"("A", "B");

-- CreateIndex
CREATE INDEX "_CargoToInteresse_B_index" ON "_CargoToInteresse"("B");

-- AddForeignKey
ALTER TABLE "Escolaridade" ADD CONSTRAINT "Escolaridade_idUsuario_fkey" FOREIGN KEY ("idUsuario") REFERENCES "Usuario"("idUsuario") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Escolaridade" ADD CONSTRAINT "Escolaridade_idTipoCurso_fkey" FOREIGN KEY ("idTipoCurso") REFERENCES "TipoCurso"("idTipoCurso") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DadoPessoal" ADD CONSTRAINT "DadoPessoal_idUsuario_fkey" FOREIGN KEY ("idUsuario") REFERENCES "Usuario"("idUsuario") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DadoPessoal" ADD CONSTRAINT "DadoPessoal_idEstadoCivil_fkey" FOREIGN KEY ("idEstadoCivil") REFERENCES "EstadoCivil"("idEstadoCivil") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DadoPessoal" ADD CONSTRAINT "DadoPessoal_idSexo_fkey" FOREIGN KEY ("idSexo") REFERENCES "Sexo"("idSexo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Cidade" ADD CONSTRAINT "Cidade_idEstado_fkey" FOREIGN KEY ("idEstado") REFERENCES "Estado"("idEstado") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Endereco" ADD CONSTRAINT "Endereco_idCidade_fkey" FOREIGN KEY ("idCidade") REFERENCES "Cidade"("idCidade") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Endereco" ADD CONSTRAINT "Endereco_idUsuario_fkey" FOREIGN KEY ("idUsuario") REFERENCES "Usuario"("idUsuario") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Interesse" ADD CONSTRAINT "Interesse_idCidade_fkey" FOREIGN KEY ("idCidade") REFERENCES "Cidade"("idCidade") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Interesse" ADD CONSTRAINT "Interesse_idUsuario_fkey" FOREIGN KEY ("idUsuario") REFERENCES "Usuario"("idUsuario") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Recrutador" ADD CONSTRAINT "Recrutador_idEmpresa_fkey" FOREIGN KEY ("idEmpresa") REFERENCES "Empresa"("idEmpresa") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Recrutador" ADD CONSTRAINT "Recrutador_idUsuario_fkey" FOREIGN KEY ("idUsuario") REFERENCES "Usuario"("idUsuario") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vaga" ADD CONSTRAINT "Vaga_idPeriodo_fkey" FOREIGN KEY ("idPeriodo") REFERENCES "Periodo"("idPeriodo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vaga" ADD CONSTRAINT "Vaga_idCidade_fkey" FOREIGN KEY ("idCidade") REFERENCES "Cidade"("idCidade") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vaga" ADD CONSTRAINT "Vaga_idEmpresa_fkey" FOREIGN KEY ("idEmpresa") REFERENCES "Empresa"("idEmpresa") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vaga" ADD CONSTRAINT "Vaga_idCargo_fkey" FOREIGN KEY ("idCargo") REFERENCES "Cargo"("idCargo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vaga" ADD CONSTRAINT "Vaga_idTipoCurso_fkey" FOREIGN KEY ("idTipoCurso") REFERENCES "TipoCurso"("idTipoCurso") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vaga" ADD CONSTRAINT "Vaga_idProfissao_fkey" FOREIGN KEY ("idProfissao") REFERENCES "Profissao"("idProfissao") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_InteresseToProfissao" ADD CONSTRAINT "_InteresseToProfissao_A_fkey" FOREIGN KEY ("A") REFERENCES "Interesse"("idInteresse") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_InteresseToProfissao" ADD CONSTRAINT "_InteresseToProfissao_B_fkey" FOREIGN KEY ("B") REFERENCES "Profissao"("idProfissao") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CargoToInteresse" ADD CONSTRAINT "_CargoToInteresse_A_fkey" FOREIGN KEY ("A") REFERENCES "Cargo"("idCargo") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CargoToInteresse" ADD CONSTRAINT "_CargoToInteresse_B_fkey" FOREIGN KEY ("B") REFERENCES "Interesse"("idInteresse") ON DELETE CASCADE ON UPDATE CASCADE;
