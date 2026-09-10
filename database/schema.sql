CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(200) UNIQUE,
    user_img_url VARCHAR(255) DEFAULT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE associations (
    association_id INT PRIMARY KEY AUTO_INCREMENT,
    association_name VARCHAR(100) NOT NULL,
    association_img_url VARCHAR(255) DEFAULT NULL,
    public_association_unique_code VARCHAR(50) NOT NULL UNIQUE,
    association_slug VARCHAR(100) NOT NULL UNIQUE,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 

    FOREIGN KEY (created_by) REFERENCES users(user_id) ON DELETE RESTRICT
);


CREATE TABLE memberships (
    membership_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    association_id INT NOT NULL,
    roles ENUM('Admin', 'Member') DEFAULT 'Member',
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_membership_users_id 
        FOREIGN KEY (user_id) REFERENCES users(user_id) 
            ON DELETE RESTRICT,

    CONSTRAINT fk_membership_association_id 
        FOREIGN KEY (association_id) REFERENCES associations (association_id)
            ON DELETE RESTRICT,

    CONSTRAINT unique_membership 
        UNIQUE (user_id, association_id)
    
);


CREATE TABLE meetings (
    
)