DROP TABLE new_books;

CREATE TABLE new_books
  (isbn			VARCHAR2(13),
   branch_number	NUMBER,
   loan_period		NUMBER);

INSERT INTO new_books
 VALUES ('0-87709-041-6',1,14);

INSERT INTO new_books
 VALUES ('0-380-72544-4',2,21);

INSERT INTO new_books
 VALUES ('0-89435-356-X',3,21);

INSERT INTO new_books
 VALUES ('0-471-93412-7',3,7);

INSERT INTO new_books
 VALUES ('0-471-93412-7',4,21);

INSERT INTO new_books
 VALUES ('0-471-93412-7',6,21);

INSERT INTO new_books
 VALUES ('0-7707-1324-0',2,14);

INSERT INTO new_books
 VALUES ('0-88830-100-6',2,21);

INSERT INTO new_books
 VALUES ('0-13-443631-8',3,21);

COMMIT;
