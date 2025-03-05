SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `hospitaldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
USE `hospitaldb` ;

CREATE TABLE IF NOT EXISTS `hospitaldb`.`departments` (
  `DepartmentID` INT NOT NULL AUTO_INCREMENT,
  `DepartmentName` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `hospitaldb`.`doctors` (
  `DoctorID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(255) NULL DEFAULT NULL,
  `LastName` VARCHAR(255) NULL DEFAULT NULL,
  `Specialty` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`DoctorID`),
  INDEX `idx_DoctorID` (`DoctorID` ASC) VISIBLE
)
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `hospitaldb`.`patients` (
  `PatientID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(255) NULL DEFAULT NULL,
  `LastName` VARCHAR(255) NULL DEFAULT NULL,
  `AdmissionDate` DATE NULL DEFAULT NULL,
  `DischargeDate` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`PatientID`),
  INDEX `idx_AdmissionDate` (`AdmissionDate` ASC) VISIBLE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `hospitaldb`.`services` (
  `ServiceID` INT NOT NULL AUTO_INCREMENT,
  `ServiceName` VARCHAR(255) NULL DEFAULT NULL,
  `Cost` DECIMAL(10,2) NULL DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `hospitaldb`.`surgeries` (
  `SurgeryID` INT NOT NULL AUTO_INCREMENT,
  `PatientID` INT NULL DEFAULT NULL,
  `DoctorID` INT NULL DEFAULT NULL,
  `SurgeryDate` DATE NULL DEFAULT NULL,
  `DepartmentID` INT NULL,
  PRIMARY KEY (`SurgeryID`),
  INDEX `PatientID` (`PatientID` ASC) VISIBLE,
  INDEX `DoctorID` (`DoctorID` ASC) VISIBLE,
  INDEX `idx_SurgeryDate` (`SurgeryDate` ASC) VISIBLE,
  INDEX `surgeries_ibfk_3_idx` (`DepartmentID` ASC) VISIBLE,
  CONSTRAINT `surgeries_ibfk_1`
    FOREIGN KEY (`PatientID`)
    REFERENCES `hospitaldb`.`patients` (`PatientID`),
  CONSTRAINT `surgeries_ibfk_2`
    FOREIGN KEY (`DoctorID`)
    REFERENCES `hospitaldb`.`doctors` (`DoctorID`),
  CONSTRAINT `surgeries_ibfk_3`
    FOREIGN KEY (`DepartmentID`)
    REFERENCES `hospitaldb`.`departments` (`DepartmentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `hospitaldb`.`visits` (
  `VisitID` INT NOT NULL AUTO_INCREMENT,
  `PatientID` INT NULL DEFAULT NULL,
  `DoctorID` INT NULL DEFAULT NULL,
  `DepartmentID` INT NULL DEFAULT NULL,
  `ServiceID` INT NULL DEFAULT NULL,
  `VisitDate` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`VisitID`),
  INDEX `PatientID` (`PatientID` ASC) VISIBLE,
  INDEX `DoctorID` (`DoctorID` ASC) VISIBLE,
  INDEX `idx_DepartmentID` (`DepartmentID` ASC) VISIBLE,
  INDEX `idx_ServiceID` (`ServiceID` ASC) VISIBLE,
  CONSTRAINT `visits_ibfk_1`
    FOREIGN KEY (`PatientID`)
    REFERENCES `hospitaldb`.`patients` (`PatientID`),
  CONSTRAINT `visits_ibfk_2`
    FOREIGN KEY (`DoctorID`)
    REFERENCES `hospitaldb`.`doctors` (`DoctorID`),
  CONSTRAINT `visits_ibfk_3`
    FOREIGN KEY (`DepartmentID`)
    REFERENCES `hospitaldb`.`departments` (`DepartmentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `visits_ibfk_4`
    FOREIGN KEY (`ServiceID`)
    REFERENCES `hospitaldb`.`services` (`ServiceID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `hospitaldb`.`ServiceDr` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `DoctorID` INT NOT NULL,
  `ServiceID` INT NOT NULL,
  INDEX `s_ifk_idx` (`ServiceID` ASC) VISIBLE,
  PRIMARY KEY (`ID`),
  INDEX `dr_ifk_idx` (`DoctorID` ASC) VISIBLE,
  CONSTRAINT `s_ifk`
    FOREIGN KEY (`ServiceID`)
    REFERENCES `hospitaldb`.`services` (`ServiceID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `dr_ifk`
    FOREIGN KEY (`DoctorID`)
    REFERENCES `hospitaldb`.`doctors` (`DoctorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  UNIQUE (`DoctorID`, `ServiceID`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `hospitaldb`.`appointments` (
  `AppointmentID` INT NOT NULL AUTO_INCREMENT,
  `PatientID` INT NOT NULL,
  `DoctorID` INT NOT NULL,
  `AppointmentDate` DATE NOT NULL,
  PRIMARY KEY (`AppointmentID`),
  INDEX `PatientID_idx` (`PatientID` ASC) VISIBLE,
  INDEX `DoctorID_idx` (`DoctorID` ASC) VISIBLE,
  CONSTRAINT `appointments_ibfk_1`
    FOREIGN KEY (`PatientID`)
    REFERENCES `hospitaldb`.`patients` (`PatientID`),
  CONSTRAINT `appointments_ibfk_2`
    FOREIGN KEY (`DoctorID`)
    REFERENCES `hospitaldb`.`doctors` (`DoctorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

DELIMITER $$
CREATE TRIGGER surgeries_check_date
BEFORE INSERT ON hospitaldb.surgeries
FOR EACH ROW
BEGIN
    DECLARE admission DATE;
    DECLARE discharge DATE;
    SELECT AdmissionDate, DischargeDate
    INTO admission, discharge
    FROM hospitaldb.patients
    WHERE PatientID = NEW.PatientID;
    IF NEW.SurgeryDate < admission OR NEW.SurgeryDate > discharge THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'SurgeryDate must be between AdmissionDate and DischargeDate.';
    END IF;
END;
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER appointments_check_date
BEFORE INSERT ON hospitaldb.appointments
FOR EACH ROW
BEGIN
    DECLARE admission DATE;
    DECLARE discharge DATE;
    SELECT AdmissionDate, DischargeDate
    INTO admission, discharge
    FROM hospitaldb.patients
    WHERE PatientID = NEW.PatientID;
    IF NEW.AppointmentDate < admission OR NEW.AppointmentDate > discharge THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'AppointmentDate must be between AdmissionDate and DischargeDate.';
    END IF;
END;
$$
DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
