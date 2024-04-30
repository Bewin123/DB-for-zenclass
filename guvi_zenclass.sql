-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 03:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guvi_zenclass`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `assignment_name` varchar(255) DEFAULT NULL,
  `assignment_description` text DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `class_id`, `assignment_name`, `assignment_description`, `due_date`, `file_id`) VALUES
(1, 1, 'Algebra Exercise 1', 'Solve equations and inequalities.', '2024-05-08', NULL),
(2, 2, 'HTML Quiz', 'Test your knowledge of HTML basics.', '2024-05-09', NULL),
(3, 3, 'Sonnet Analysis', 'Analyze and interpret Shakespearean sonnets.', '2024-05-10', NULL),
(4, 4, 'WWII Research Paper', 'Write a research paper on a WWII topic.', '2024-05-11', NULL),
(5, 5, 'Cell Biology Quiz', 'Test your understanding of cell biology concepts.', '2024-05-12', NULL),
(6, 6, 'Newton\'s Laws Problems', 'Solve problems based on Newtonian mechanics principles.', '2024-05-13', NULL),
(7, 7, 'Chemical Bonding Worksheet', 'Practice problems on chemical bonding.', '2024-05-14', NULL),
(8, 8, 'Renaissance Art Essay', 'Write an essay on a Renaissance art masterpiece.', '2024-05-15', NULL),
(9, 9, 'Music Composition Project', 'Compose a short piece of music.', '2024-05-16', NULL),
(10, 10, 'Fitness Training Plan', 'Create a fitness training plan for yourself.', '2024-05-17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `class_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `course_id`, `instructor_id`, `class_date`, `start_time`, `end_time`) VALUES
(1, 1, 1, '2024-05-01', '09:00:00', '11:00:00'),
(2, 2, 2, '2024-05-02', '10:00:00', '12:00:00'),
(3, 3, 3, '2024-05-03', '11:00:00', '13:00:00'),
(4, 4, 4, '2024-05-04', '12:00:00', '14:00:00'),
(5, 5, 5, '2024-05-05', '13:00:00', '15:00:00'),
(6, 6, 6, '2024-05-06', '14:00:00', '16:00:00'),
(7, 7, 7, '2024-05-07', '15:00:00', '17:00:00'),
(8, 8, 8, '2024-05-08', '16:00:00', '18:00:00'),
(9, 9, 9, '2024-05-09', '17:00:00', '19:00:00'),
(10, 10, 10, '2024-05-10', '18:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `description`) VALUES
(1, 'Mathematics', 'Study of numbers, quantity, and space.'),
(2, 'Computer Science', 'Study of computers and computational systems.'),
(3, 'English Literature', 'Study of literature written in the English language.'),
(4, 'History', 'Study of past events, particularly in human affairs.'),
(5, 'Biology', 'Study of living organisms and their interactions with one another and their environments.'),
(6, 'Physics', 'Study of matter, energy, and the fundamental forces of nature.'),
(7, 'Chemistry', 'Study of the composition, structure, and properties of matter.'),
(8, 'Art', 'Expression or application of human creative skill and imagination.'),
(9, 'Music', 'Art form and cultural activity whose medium is sound organized in time.'),
(10, 'Physical Education', 'Instruction in the development and care of the body.');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enrollment_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollment_id`, `class_id`, `student_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `file_name`, `file_path`, `file_size`, `file_type`, `upload_date`) VALUES
(1, 'algebra_notes.pdf', '/files/algebra_notes.pdf', 1024, 'PDF', '2024-04-30 13:50:48'),
(2, 'html_basics.pptx', '/files/html_basics.pptx', 2048, 'Presentation', '2024-04-30 13:50:48'),
(3, 'sonnet_analysis.docx', '/files/sonnet_analysis.docx', 1536, 'Document', '2024-04-30 13:50:48'),
(4, 'wwii_research.pdf', '/files/wwii_research.pdf', 4096, 'PDF', '2024-04-30 13:50:48'),
(5, 'cell_biology_quiz.pdf', '/files/cell_biology_quiz.pdf', 1024, 'PDF', '2024-04-30 13:50:48'),
(6, 'newton_problems.xlsx', '/files/newton_problems.xlsx', 2048, 'Spreadsheet', '2024-04-30 13:50:48'),
(7, 'chemical_bonding_practice.docx', '/files/chemical_bonding_practice.docx', 1536, 'Document', '2024-04-30 13:50:48'),
(8, 'renaissance_art_essay.pdf', '/files/renaissance_art_essay.pdf', 4096, 'PDF', '2024-04-30 13:50:48'),
(9, 'music_composition.mp3', '/files/music_composition.mp3', 3072, 'Audio', '2024-04-30 13:50:48'),
(10, 'fitness_training_plan.pdf', '/files/fitness_training_plan.pdf', 2048, 'PDF', '2024-04-30 13:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_id` int(11) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `instructor_name`, `email`) VALUES
(1, 'John Smith', 'john.smith@example.com'),
(2, 'Jane Doe', 'jane.doe@example.com'),
(3, 'Michael Johnson', 'michael.johnson@example.com'),
(4, 'Emily Davis', 'emily.davis@example.com'),
(5, 'Robert Wilson', 'robert.wilson@example.com'),
(6, 'Jessica Brown', 'jessica.brown@example.com'),
(7, 'Christopher Lee', 'christopher.lee@example.com'),
(8, 'Jennifer Miller', 'jennifer.miller@example.com'),
(9, 'David Taylor', 'david.taylor@example.com'),
(10, 'Sarah White', 'sarah.white@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `material_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `material_description` text DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `class_id`, `material_name`, `material_description`, `file_id`) VALUES
(1, 1, 'Introduction to Algebra', 'Basic concepts of algebra.', NULL),
(2, 2, 'HTML Basics', 'Introduction to Hypertext Markup Language.', NULL),
(3, 3, 'Shakespearean Sonnets', 'Study of Shakespearean sonnets.', NULL),
(4, 4, 'World War II', 'Overview of World War II.', NULL),
(5, 5, 'Cell Biology', 'Study of the cell.', NULL),
(6, 6, 'Newtonian Mechanics', 'Fundamental principles of classical mechanics.', NULL),
(7, 7, 'Chemical Bonding', 'Concepts of chemical bonding.', NULL),
(8, 8, 'Renaissance Art', 'Study of art during the Renaissance period.', NULL),
(9, 9, 'Music Theory Basics', 'Introduction to music theory.', NULL),
(10, 10, 'Fitness Training', 'Instruction on physical fitness.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `email`) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com'),
(2, 'Bob Smith', 'bob.smith@example.com'),
(3, 'Charlie Brown', 'charlie.brown@example.com'),
(4, 'David Lee', 'david.lee@example.com'),
(5, 'Emma Wilson', 'emma.wilson@example.com'),
(6, 'Frank Davis', 'frank.davis@example.com'),
(7, 'Grace Taylor', 'grace.taylor@example.com'),
(8, 'Henry Martinez', 'henry.martinez@example.com'),
(9, 'Isabella Anderson', 'isabella.anderson@example.com'),
(10, 'Jack Garcia', 'jack.garcia@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`material_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `instructor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
