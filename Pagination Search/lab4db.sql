CREATE DATABASE lab4db;

CREATE TABLE `lab4db`.`department` ( `department_id` INT(30) NOT NULL AUTO_INCREMENT , `department_name` VARCHAR(50) NOT NULL , PRIMARY KEY (`department_id`)) ENGINE = InnoDB;

CREATE TABLE `lab4db`.`professor` ( `professor_id` INT(30) NOT NULL AUTO_INCREMENT , `professor_name` VARCHAR(60) NOT NULL , PRIMARY KEY (`professor_id`)) ENGINE = InnoDB

CREATE TABLE `lab4db`.`course` ( `course_id` INT(30) NOT NULL AUTO_INCREMENT , `course_name` VARCHAR(15) NOT NULL , `course_description` TEXT NOT NULL , `department_id` INT(30) NOT NULL , `professor_id` INT(30) NOT NULL , PRIMARY KEY (`course_id`)) ENGINE = InnoDB;

ALTER TABLE `course` ADD CONSTRAINT `dept_foreign` FOREIGN KEY (`department_id`) REFERENCES `department`(`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `course` ADD CONSTRAINT `prof_foreign` FOREIGN KEY (`professor_id`) REFERENCES `professor`(`professor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO `department`(`department_name`) VALUES ('Computer Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Electrical Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Architecture');
INSERT INTO `department`(`department_name`) VALUES ('Civil Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Communications');
INSERT INTO `department`(`department_name`) VALUES ('BioMedical Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Marine Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Mechanical Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Chemical Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Aerospace Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Industrial Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Materials Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Nuclear Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Agricultural Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Mining and Geological Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Computer Hardware Engineering');
INSERT INTO `department`(`department_name`) VALUES ('Petroleum Engineering');



INSERT INTO `professor`(`professor_name`) VALUES ('Mohamed Ahmed');
INSERT INTO `professor`(`professor_name`) VALUES ('Ahmed Said');
INSERT INTO `professor`(`professor_name`) VALUES ('Aly Kamel');
INSERT INTO `professor`(`professor_name`) VALUES ('Youssef Abdelsalam');
INSERT INTO `professor`(`professor_name`) VALUES ('Hisham Khaled');
INSERT INTO `professor`(`professor_name`) VALUES ('Khaled Mahmoud');
INSERT INTO `professor`(`professor_name`) VALUES ('Magdy Sameh');
INSERT INTO `professor`(`professor_name`) VALUES ('Gaber Wahba');
INSERT INTO `professor`(`professor_name`) VALUES ('Mohamed Abuzeid');
INSERT INTO `professor`(`professor_name`) VALUES ('Refaat Ahmed');
INSERT INTO `professor`(`professor_name`) VALUES ('Hossam Samy ');
INSERT INTO `professor`(`professor_name`) VALUES ('Noha Hisham');
INSERT INTO `professor`(`professor_name`) VALUES ('Layla Fawzy');
INSERT INTO `professor`(`professor_name`) VALUES ('Ayman Khaled');
INSERT INTO `professor`(`professor_name`) VALUES ('Mervat Sabry');

INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Mathematics','Solving Equations',1,2);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Discrete Mathematical Structures','Discrete mathematics is the study of mathematical structures that are fundamentally discrete rather than continuous',1,2);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Artificial Intelligence','AI refers to the simulation of human intelligence in machines that are programmed to think like humans and mimic their actions',1,3);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('History of Architecture I','History of architecture traces the changes in architecture through various traditions, regions, overarching stylistic trends, and dates',3,1);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Building Construction','The process of adding structure to real property. The vast majority of building construction projects are small renovations',4,1);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Human Anatomy & Physiology','Anatomy is the study of the structure and relationship between body parts. Physiology is the study of the function of body parts',6,5);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('engineering geology','It is the application of geology to engineering study for the purpose of assuring that the geological factors regarding the location',4,1);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Petroleum engineering','A field of engineering concerned with the activities related to the production of Hydrocarbonss',17,6);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Power generation and supply','course explains the essentials of electricity generation, electricity supply',2,7);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Signal Processing','course covers theory and methods for digital signal processing including basic principles',5,8);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Aerodynamics',' provides a study of the motion of air and the forces acting on bodies moving through the air',10,9);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Production planning','Provides information on the design and management of operations and production planning/control systems including capacity planning',11,7);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Applied Nuclear Physics','Communicate knowledge of physical techniques which exploit nuclear particles',13,10);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Chemistry of Materials','The study of the synthesis, structure, properties, and application of solid materialss',12,11);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Separation processes','covered include distillation (including flash, binary column and multicomponent column)',9,11);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Control systems','the study of the analysis and regulation of the output behaviors of dynamical systems subject to input signals',16,2);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Rock Mechanics',' course are for the students to develop an understanding of the engineering properties of rocks',15,13);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Systems Analysis in Agriculture.','An understanding of the economic framework that underpins agricultural industries',14,14);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Oil & Gas Industry','course looks at the two most fundamental aspects of the oil and gas industry, its operations and markets',17,15);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Power Electronics','Understand the fundamentals of magnetic components including inductors and transformers',2,9);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Physics for Mariners I','his course is designed to get familiar and understand conceptually topics of physics and mechanics',7,4);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Thermodynamics','Develops understanding of mass, energy, heat, work, efficiency, ideal and real thermodynamic cycles and processes',8,6);
INSERT INTO `course`(`course_name`, `course_description`, `department_id`, `professor_id`) VALUES ('Medical Instrumentation','In this course, you will learn key measurement principles of sensors found in health technologies, ranging from medical devices used in hospitals to wearables for fitness monitoring',6,12);