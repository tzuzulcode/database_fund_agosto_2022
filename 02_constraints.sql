ALTER TABLE `test`.`users` 
    ADD COLUMN `email` VARCHAR(100) NOT NULL AFTER `married`,
    ADD COLUMN `firstName` VARCHAR(45) NULL AFTER `email`,
    ADD COLUMN `lastName` VARCHAR(45) NULL AFTER `firstName`,
    CHANGE COLUMN `id` `id` INT UNSIGNED NOT NULL ,
    CHANGE COLUMN `name` `name` VARCHAR(120) GENERATED ALWAYS AS (CONCAT(firstName,' ',lastName)) ,
    CHANGE COLUMN `age` `age` INT ZEROFILL NOT NULL ,
    CHANGE COLUMN `birthday` `birthday` DATE NOT NULL ,
    CHANGE COLUMN `married` `married` TINYINT NOT NULL ,
    ADD UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE;
;