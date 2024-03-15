DROP TABLE new_books_error_log;

CREATE TABLE new_books_error_log
  (isbn			VARCHAR2(13),
   branch_number	NUMBER,
   error_message	VARCHAR2(100));

