CREATE DATABASE medical_report_analyzer;

USE medical_report_analyzer;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100)
);

CREATE TABLE medical_reports (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    report_name VARCHAR(255),
    upload_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE analysis_results (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    report_id INT,
    analysis_details TEXT,
    generated_date DATE,
    FOREIGN KEY (report_id) REFERENCES medical_reports(report_id)
);
