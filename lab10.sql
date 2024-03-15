/********************************************
*      Lab 10                                *
*      Triggers                           *
*                                           *
*      Author: Ana Joselyn Alarcon          *
*      Date: Dec 06, 2023              *
********************************************/

/*2.	Create a trigger to prevent the insertion of 
a row into the WGL_RESERVE_LIST table 
when a book’s status is ‘OS’ 
(i.e., it is available on the shelf 
at the branch number identified in the BRANCH_RESERVED_AT
 column of the triggering statement).   (5 marks)
 
 
 validation
 1) SELECT INTO with a count and decision structure
 2) SELECT INTO with an exception block
 3) Explicit cursor with loop

 Situation:
 1) SELECT INTO/COUNT has zero rows
    -the book is not on the shelf at that library branch
    -It should be allowed on the reserved list

2) SELECT INTO/COUNT has one row
    -There is one copy of this ISBN on the shelf at this branch
    -We want to prevent the original INSERT

3) SELECT INTO/COUNT has more than one row
    -there is more than one copy of the book on the shelf at this branch
    -We want to prevent the original INSERT


The SELECT INTO WHERE clause has three(3) conditions.
1) Status (OS)
2) ISBN (book)
3)branch_number (requested library branch)

The one that is usually left out is the status (OS)
 */



SET SERVEROUTPUT ON

/* Question 1 */
-- Trigger 
-- INSERT INTO wgl_reserve_list
-- (patron_number, isbn, branch_reserved_at, pick_up_branch)
-- VALUES (10, '0-88830-100-6', 1, 1);

--1. Define trigger
CREATE OR REPLACE TRIGGER prevent_insert_trigger
BEFORE INSERT ON WGL_RESERVE_LIST
FOR EACH ROW

--2. Begin trigger block
DECLARE
  book_status VARCHAR2(2);
  book_branch NUMBER;
  book_ISBN VARCHAR2(13);


  --Cursor for Retrieve book status and branch number from accession_register, based on isbn and accession number 
  Cursor c_book_status IS
  SELECT ISBN, STATUS, BRANCH_NUMBER
  FROM WGL_ACCESSION_REGISTER
  WHERE ISBN = :NEW.ISBN;
    
BEGIN


--3. Open cursor
    FOR r_book_status IN c_book_status LOOP
    book_status := r_book_status.status;
    book_branch := r_book_status.branch_number;
    book_ISBN := r_book_status.ISBN;




  --4.Check book status is 'OS' AND THE branch_number = branch_reserved_at
    IF book_status = 'OS' AND book_branch = :NEW.BRANCH_RESERVED_AT THEN
        RAISE_APPLICATION_ERROR(-20001, 'Insertion not allowed. Book is available on the shelf.');
    


  --5. Insert the date in date_reserved with the current date if book NOT on the shelf(available for reserve list)
    ELSE
        :NEW.DATE_RESERVED := SYSDATE;
    END IF;


    END LOOP;

END;
/

/*INSERT INTO wgl_loan
(patron_number, accession_number, loan_type)
VALUES (15, 2, 'O');


WGL_LOAN(table)
Loan_number (PK) NUMBER(9)    --- seq.nextval
* Patron_number (FK1) NUMBER(7)
* Accession_number (FK2) NUMBER(7)
* Loan_type (CK)  VARCHAR2(1)
Loan_date DATE  ----- current date
Due_date DATE   ------ loan date + loan period
Date_returned DATE
*CK Details For LOAN_TYPE table: loan_type must be either O or R

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date, date_returned) 
VALUES (wgl_loan_seq.NEXTVAL, 1, 1, 'O', SYSDATE - 41, TRUNC(SYSDATE)  - 30);
*/

CREATE OR REPLACE TRIGGER after_insert_loan
BEFORE INSERT ON wgl_loan
FOR EACH ROW


DECLARE
    v_loan_period NUMBER;


BEGIN
   

    -- Retrieve the loan period from the accession register
    SELECT loan_period INTO v_loan_period
    FROM wgl_accession_register
    WHERE accession_number = :NEW.accession_number;


    --LOAN NUMBER
    :NEW.loan_number := wgl_loan_seq.NEXTVAL;

    -- Update the loan record with loan_number, loan_date, and due_date
    :NEW.loan_date := SYSDATE;
    :NEW.due_date := SYSDATE + v_loan_period;

    -- Update the patron's books_on_loan count
    UPDATE wgl_patron
    SET books_on_loan = books_on_loan + 1
    WHERE patron_number = :NEW.patron_number;

    -- Update the accession register's status
    UPDATE wgl_accession_register
    SET status = 'OL'
    WHERE accession_number = :NEW.accession_number;
END;
/
