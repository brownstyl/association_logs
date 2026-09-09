CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(200) UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE associations (
    association_id INT PRIMARY KEY AUTO_INCREMENT,
    association_name VARCHAR(100) NOT NULL,
    association_img_url VARCHAR(255) DEFAULT NULL,
    public_association_unique_code VARCHAR(50) NOT NULL UNIQUE,
    association_slug VARCHAR(100) NOT NULL UNIQUE,
    created_by INT NOT NULL
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 

    FOREIGN KEY (created_by) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE meetingrecord (
    meeting_id INT PRIMARY KEY AUTO_INCREMENT,

)
