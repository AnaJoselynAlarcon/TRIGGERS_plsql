/*	This file is used to create the Walnut Grove
	Library database,  version 3.0               */

DROP TABLE wgl_title_catalogue CASCADE CONSTRAINTS;
DROP TABLE wgl_branch CASCADE CONSTRAINTS;
DROP TABLE wgl_accession_register CASCADE CONSTRAINTS;
DROP TABLE wgl_patron CASCADE CONSTRAINTS;
DROP TABLE wgl_loan CASCADE CONSTRAINTS;
DROP TABLE wgl_fine_receipt CASCADE CONSTRAINTS;
DROP TABLE wgl_return CASCADE CONSTRAINTS;
DROP TABLE wgl_author CASCADE CONSTRAINTS;
DROP TABLE wgl_reserve_list CASCADE CONSTRAINTS;
DROP TABLE wgl_reserve_notice CASCADE CONSTRAINTS;


CREATE TABLE wgl_title_catalogue (
isbn                        VARCHAR2 (13),
title                       VARCHAR2 (50),
call_number                 VARCHAR2 (15),
year_published              VARCHAR2 (4),
no_copies_in_system	    NUMBER);

CREATE TABLE wgl_author (
isbn                        VARCHAR2 (13),
author_name                 VARCHAR2 (30));

CREATE TABLE wgl_branch (
branch_number               NUMBER,
branch_name                 VARCHAR2 (25),
phone                       VARCHAR2 (7));


CREATE TABLE wgl_accession_register (
accession_number            NUMBER (7),
isbn                        VARCHAR2 (13),
branch_number               NUMBER,
accession_date              DATE,
status                      VARCHAR2 (2),
loan_period                 NUMBER,
due_date                    DATE);

CREATE TABLE wgl_patron (
patron_number               NUMBER (7),
patron_name                 VARCHAR2 (25),
phone                       VARCHAR2 (7),
patron_type                 VARCHAR2 (2),
books_on_loan               NUMBER,
outstanding_fines           NUMBER (6,2));

CREATE TABLE wgl_loan (
loan_number                 NUMBER (9),
patron_number               NUMBER (7),
accession_number            NUMBER (7),
loan_type                   VARCHAR2 (1),
loan_date                   DATE,
due_date                    DATE,
date_returned               DATE);

CREATE TABLE wgl_return (
accession_number            NUMBER (7),
date_returned               DATE,
branch_returned_to          NUMBER);

CREATE TABLE wgl_fine_receipt (
patron_number               NUMBER (7),
amount_paid                 NUMBER (7,2),
date_paid                   DATE);

CREATE TABLE wgl_reserve_list (
patron_number               NUMBER (7),
isbn                        VARCHAR2 (13),
date_reserved               DATE,
branch_reserved_at          NUMBER,
pick_up_branch              NUMBER);

CREATE TABLE wgl_reserve_notice (
patron_number               NUMBER (7),
isbn                        VARCHAR2 (13),
accession_number            NUMBER (7),
call_number                 VARCHAR2 (15),
branch_no                   NUMBER,
hold_to_date                DATE);


COMMENT ON TABLE wgl_title_catalogue IS 
'This table contains the titles of all books owned by the library,
as well as of all books ordered but not yet received and of all
books that the library might be interested in.';


COMMENT ON TABLE wgl_author IS
'Since some books have more than one author, this table was
created rather than trying to include authors in the 
title catalogue.';

COMMENT ON TABLE wgl_accession_register IS
'This table has one entry for each copy of a book in the 
system.';

COMMENT ON COLUMN wgl_accession_register.accession_number IS
'This column contains the number that uniquely identifies
each copy of a book.  It is sometimes referred to as the "bar
code number".';

COMMENT ON COLUMN wgl_accession_register.accession_date IS
'The accession date is the date that that particular copy
was acquired by the library.';

COMMENT ON COLUMN wgl_accession_register.status IS
'The status of a particular copy of a book can be any one of
  -  OL   on loan           
  -  OS   on shelf           
  -  HR   held for reserve  
  -  IT   in transit, being moved from one branch to another 
  -  LO   lost, stolen or misplaced
  -  WR   withdrawn for repairs
  -  CU   culled from the system, no longer available    ';
 
COMMENT ON COLUMN wgl_accession_register.loan_period IS
'The loan period for that particular item in days. Most books
are loaned for a period of 3 weeks (21 days). CD''s are loaned for
7 days. Reference material may not be taken from the library. 
Certain high demand material may be loaned for a period less than
3 weeks. ';

COMMENT ON COLUMN wgl_patron.patron_type IS
'Patrons can be any one of several types:
  resident       -  R
  non-resident   -  NR
  staff          -  S
More types of patrons may be added later as conditions warrant.';

COMMENT ON COLUMN wgl_patron.books_on_loan IS
'The number of books out on loan to a particular customer
at any given time.';

COMMENT ON COLUMN wgl_loan.loan_type IS
'Loans may be either one of two types:
 original        - O
 renewal         - R';

COMMENT ON COLUMN wgl_patron.outstanding_fines IS
'The outstanding fines column is the total of fines accumulated
and not yet paid.';


COMMENT ON TABLE wgl_fine_receipt IS
'Whenever a delinquent patron pays a fine or part of a fine, an
entry is made into this table.';

COMMENT ON TABLE wgl_reserve_list IS
'Patrons may place a reserve on a book that is not currently 
available because all copies are currently out on loan.';

COMMENT ON TABLE wgl_reserve_notice IS
'Whenever a book is returned that someone else has reserved a notice
is sent to the patron at the head of the queue for that book, and that 
patron''s entry is removed from the reserve list.';

commit;
