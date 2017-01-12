USE postgkh;


DROP TABLE IF EXISTS filetype;
CREATE TABLE filetype (
    FILETYPE_ID INT AUTO_INCREMENT PRIMARY KEY
    FILETYPE_NAME VARCHAR(255) NOT NULL,
    UNIQUE (FILETYPE_NAME)
) ENGINE = InnoDB;


DROP TABLE IF EXISTS file;
CREATE TABLE file(
    FILE_ID INT AUTO_INCREMENT PRIMARY KEY,
    FILETYPE_ID INT NOT NULL,
    FILE_URI VARCHAR(255) NOT NULL,
    UNIQUE (FILE_URI)
) ENGINE = InnoDB;