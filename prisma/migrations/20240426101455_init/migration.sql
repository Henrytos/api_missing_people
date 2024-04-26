-- CreateTable
CREATE TABLE `Usuario` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `senha` VARCHAR(191) NOT NULL,
    `telefone` INTEGER NOT NULL,
    `is_banido` BOOLEAN NOT NULL DEFAULT true,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Desaparecido` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome_desaparecido` VARCHAR(191) NOT NULL,
    `nome_social` VARCHAR(191) NOT NULL,
    `idade` INTEGER NOT NULL,
    `foto` INTEGER NOT NULL,
    `genero` VARCHAR(191) NOT NULL,
    `caracteristica` VARCHAR(191) NOT NULL,
    `visto_por_ultimo` DATETIME(3) NOT NULL,
    `historia` VARCHAR(191) NOT NULL,
    `regiao` VARCHAR(191) NOT NULL,
    `esta_desaparecido` BOOLEAN NOT NULL DEFAULT true,
    `usuario_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Contato` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `telefone` INTEGER NOT NULL,
    `desaparecido_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Desaparecido` ADD CONSTRAINT `Desaparecido_usuario_id_fkey` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Contato` ADD CONSTRAINT `Contato_desaparecido_id_fkey` FOREIGN KEY (`desaparecido_id`) REFERENCES `Desaparecido`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
