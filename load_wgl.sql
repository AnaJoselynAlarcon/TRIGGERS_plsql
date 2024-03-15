/*   This file is to be used to load for first year mid-term
     exam.  It does not rely on triggers to provide any 
     of the data.  
Date Modified : 6-Apr-2000 - to improve consistency of data

     Clear all existing data.                    */

DELETE FROM wgl_return;
DELETE FROM wgl_fine_receipt;
DELETE FROM wgl_reserve_notice;
DELETE FROM wgl_loan;
DELETE FROM wgl_patron;
DELETE FROM wgl_reserve_list;
DELETE FROM wgl_accession_register;
DELETE FROM wgl_author;
DELETE FROM wgl_title_catalogue;
DELETE FROM wgl_branch;

COMMIT;

INSERT INTO wgl_title_catalogue VALUES ('0-87709-041-6',         
 'Local Area Networking with NOVELL Software',                   
 '004.68 RAI', '1994', 0 );                                      
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-13-227968-1',         
 'ORACLE DEVELOPER/2000 HANDBOOK',                               
 '005.756', '1996', 0 );                                         
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-380-72544-4',         
 'The Tigers Child',                                             
 '618928 Hay', '1995', 0);                                      
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-13-443631-8',         
 'Building Intelligent Databases with ORACLE PL/SQL',            
 '005.756 O23', '1996', 0 );                                     
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-566-03538-3',         
 'Harrods Librarians Glossary and Reference Book',               
 '020.3   H323', '1987', 0 );                                    
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-89435-356-X',         
 'Using ORACLE to Build Decision Support Systems',               
 '005.7565  I57u', '1990', 0);                                  
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-85312-565-1',         
 'Computational Methods: An Introduction',                       
 '511.402854 N814', '1984', 0);                                 
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-471-93412-7',         
 'Data Fitting in the Chemical Sciences',                        
 '511.42 G199', '1992', 0);                                     
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-07-025872-4',         
 'HVAC Systems Design Handbook',                                 
 '697  H153', '1994', 0);                                       
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-89979-212-6',         
 'Writing Nonfiction That Sells',                                
 '808.02 B168', '1986', 0);                                     
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-07-002439-1',         
 'Effective Writing for the College Curriculum',                 
 '808.0427 E27', '1987', 0);                                    
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-8014-0833-4',         
 'Vision and Response in Modern Fiction',                        
 '809.3 W424', '1974', 0);                                      
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-7705-1324-7',         
 'Who Has Seen the Wind',                                        
 'C813.54 M682', '1947', 0);                                    
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-394-50793-2',         
 'American Dream: Lost and Found',                               
 '920.073 T318', '1980', 0);                                    
                                                                 
INSERT INTO wgl_title_catalogue VALUES ('0-88830-100-6',         
 'Edmonton A history',                                           
 '971.233 M147', '1975', 0);                                    
                                                                 
INSERT INTO wgl_author VALUES ('0-13-443631-8',                  
'Owens, Kevin T');                                               
                                                                 
INSERT INTO wgl_author VALUES ('0-87709-041-6',                  
'Rains, Alvin L');                                               
                                                                 
INSERT INTO wgl_author VALUES ('0-87709-041-6',                  
'Palmer, Michael J');                                            
                                                                 
INSERT INTO wgl_author VALUES ('0-13-227968-1',                  
'Stowe, Michael');                                               
                                                                 
INSERT INTO wgl_author VALUES ('0-380-72544-4',                  
'Hayden, Torey');                                                
                                                                 
INSERT INTO wgl_author VALUES ('0-566-03538-3',                  
'Prytherch, Ray');                                               
                                                                 
INSERT INTO wgl_author VALUES ('0-89435-356-X',                  
'Inmon, W.H.');                                                  
                                                                 
INSERT INTO wgl_author VALUES ('0-85312-565-1',                  
'Nonweiler, T.R.F');                                             
                                                                 
INSERT INTO wgl_author VALUES ('0-471-93412-7',                  
'Gans, Peter');                                                  
                                                                 
INSERT INTO wgl_author VALUES ('0-07-025872-4',                  
'Haines, Roger W.');                                             
                                                                 
INSERT INTO wgl_author VALUES ('0-07-025872-4',                  
'Wilson, C. Lewis');                                             
                                                                 
INSERT INTO wgl_author VALUES ('0-89979-212-6',                  
'Baker, Samm Sinclair');                                         
                                                                 
INSERT INTO wgl_author VALUES ('0-07-002439-1',                  
'Atwan, Robert');                                                
                                                                 
INSERT INTO wgl_author VALUES ('0-07-002439-1',                  
'Vesterman, William');                                           
                                                                 
INSERT INTO wgl_author VALUES ('0-8014-0833-4',                  
'Weinstein, Arnold L.');                                         
                                                                 
INSERT INTO wgl_author VALUES ('0-7705-1324-7',                  
'Mitchell, W. O.');                                              
                                                                 
INSERT INTO wgl_author VALUES ('0-7705-1324-7',                  
'Kurelek, William');                                             
                                                                 
INSERT INTO wgl_author VALUES ('0-394-50793-2',                  
'Terkel, Studs');                                                
                                                                 
INSERT INTO wgl_author VALUES ('0-88830-100-6',                  
'MacGregor, J. G.');   

COMMIT;

INSERT INTO wgl_branch VALUES (1, 'Main Downtown', '2606200');
INSERT INTO wgl_branch VALUES (2, 'Village Circle', '2216020');
INSERT INTO wgl_branch VALUES (3, 'Mary Lamb', '2621820');
INSERT INTO wgl_branch VALUES (4, 'Southside', '2621000');

COMMIT;

/*    The following commands insert rows into 
      wgl_accession_register.  
      Accession dates have been provided, specifically for when
      creating a database for first course activities.            */

INSERT INTO wgl_accession_register                               
  (accession_number, isbn, branch_number, accession_date, status, 
  due_date, loan_period ) 
  VALUES (1,'0-471-93412-7', 1, TRUNC (SYSDATE)  - 90, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (2,'0-471-93412-7', 3, TRUNC (SYSDATE) - 87, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (3,'0-471-93412-7', 3, TRUNC (SYSDATE) - 87, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (4,'0-07-025872-4', 4, TRUNC (SYSDATE) - 87, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (5,'0-89979-212-6', 2, TRUNC (SYSDATE) - 87, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (6,'0-89979-212-6', 2, TRUNC (SYSDATE) - 87, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (7,'0-07-002439-1', 4, TRUNC (SYSDATE) - 87, 'OS', '', 14);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (8,'0-07-002439-1', 4, TRUNC (SYSDATE) - 87, 'OS', '', 14);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (9,'0-471-93412-7', 2, TRUNC (SYSDATE) - 69, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (10,'0-07-002439-1', 4, TRUNC (SYSDATE) - 69, 'OS', '', 14);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (11,'0-394-50793-2', 3, TRUNC (SYSDATE) - 69, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (12,'0-394-50793-2', 2, TRUNC (SYSDATE) - 69, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (13,'0-394-50793-2', 1, TRUNC (SYSDATE) - 59, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (14,'0-394-50793-2', 4, TRUNC (SYSDATE) - 57, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (15,'0-394-50793-2', 2, TRUNC (SYSDATE) - 56, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (16,'0-88830-100-6', 1, TRUNC (SYSDATE) - 56, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (17,'0-88830-100-6', 2, TRUNC (SYSDATE) - 54, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (18,'0-88830-100-6', 3, TRUNC (SYSDATE) - 47, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (19,'0-88830-100-6', 4, TRUNC (SYSDATE) - 47, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (20,'0-87709-041-6', 1, TRUNC (SYSDATE) - 46, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (21,'0-87709-041-6', 1, TRUNC (SYSDATE) - 42, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (22,'0-87709-041-6', 2, TRUNC (SYSDATE) - 42, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (23,'0-87709-041-6', 3, TRUNC (SYSDATE) - 41, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period) 
   VALUES (24,'0-87709-041-6', 4, TRUNC (SYSDATE) - 41, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (25,'0-87709-041-6', 4, TRUNC (SYSDATE) - 39, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (26,'0-13-227968-1', 4, TRUNC (SYSDATE) - 37, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (27,'0-13-227968-1', 3, TRUNC (SYSDATE) - 35, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (28,'0-13-227968-1', 3, TRUNC (SYSDATE) - 33, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (29,'0-13-227968-1', 2, TRUNC (SYSDATE) - 32, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (30,'0-13-227968-1', 2, TRUNC (SYSDATE) - 30, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (31,'0-13-227968-1', 2, TRUNC (SYSDATE) - 30, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (32,'0-380-72544-4', 1, TRUNC (SYSDATE) - 30, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (33,'0-380-72544-4', 2, TRUNC (SYSDATE) - 27, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (34,'0-380-72544-4', 3, TRUNC (SYSDATE) - 27, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (35,'0-380-72544-4', 4, TRUNC (SYSDATE) - 26, 'OS', '', 21);  
                                                                
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (36,'0-380-72544-4', 2, TRUNC (SYSDATE) - 26, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (37,'0-13-443631-8', 3, TRUNC (SYSDATE) - 26, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (38,'0-13-443631-8', 4, TRUNC (SYSDATE) - 26, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (39,'0-13-443631-8', 2, TRUNC (SYSDATE) - 25, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (40,'0-13-443631-8', 2, TRUNC (SYSDATE) - 25, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (41,'0-13-443631-8', 1, TRUNC (SYSDATE) - 25, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (42,'0-13-443631-8', 1, TRUNC (SYSDATE) - 25, 'OS', '', 7);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (43,'0-13-443631-8', 1, TRUNC (SYSDATE) - 25, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (44,'0-566-03538-3', 1, TRUNC (SYSDATE) - 25, 'OS', '', 0);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (45,'0-89435-356-X', 2, TRUNC (SYSDATE) - 24, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (46,'0-89435-356-X', 3, TRUNC (SYSDATE) - 24, 'OS', '', 21);  
                                                                  
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (47,'0-89435-356-X', 3, TRUNC (SYSDATE) - 24, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (48,'0-85312-565-1', 4, TRUNC (SYSDATE) - 24, 'OS', '', 21);  
                                                                 
INSERT INTO wgl_accession_register                               
   (accession_number,isbn, branch_number, accession_date, status, 
   due_date, loan_period ) 
   VALUES (49,'0-471-93412-7', 1, TRUNC (SYSDATE) - 24, 'OS', '', 21);  
                                                                         
UPDATE wgl_title_catalogue a
   SET no_copies_in_system =
         (SELECT COUNT (*)
            FROM wgl_accession_register
           WHERE isbn = a.isbn);    
                                                            
COMMIT;

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (1,'Kuchler, Robert', '2748750', 'R');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (2,'Rock, Allen', '2174856', 'R');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (3,'Lewis, Martha', '2232341', 'R');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (4,'Holley, Bonnie', '9325064', 'NR');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (5,'Lo, Helen', '6521217', 'NR');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (6,'Paulsen, Pat', '2179735', 'R');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (7,'Law, Scoff', '2609411', 'R');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (8,'Broen, Heather', '2218042', 'S');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (9,'Fallon, Mike', '2178521', 'R');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (10,'Nguyen, Harry', '2601298', 'S');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (11,'Kim, Lee', '2219743', 'R');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (12,'Beale, Corrinne', '6529437', 'NR');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (13,'Adkins, Doug', '2170022', 'R');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (14,'Spenser, Sally', '2210102', 'S');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (15,'West, Steven', '2170111', 'R');

INSERT INTO wgl_patron (patron_number, patron_name, phone, 
patron_type ) 
VALUES (16,'Lyons, Jessie', '6527777', 'NR');

UPDATE wgl_patron 
   SET outstanding_fines = 0;

COMMIT;

DROP SEQUENCE wgl_loan_seq;

CREATE SEQUENCE wgl_loan_seq START WITH 1;

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date, date_returned) 
VALUES (wgl_loan_seq.NEXTVAL, 1, 1, 'O', SYSDATE - 41, TRUNC(SYSDATE)  - 30);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date, date_returned) 
VALUES (wgl_loan_seq.NEXTVAL, 1, 2, 'O', SYSDATE - 41, TRUNC(SYSDATE) - 15);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 1, 3, 'O', SYSDATE - 41);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date, date_returned) 
VALUES (wgl_loan_seq.NEXTVAL, 1, 4, 'O', SYSDATE - 40, SYSDATE - 10);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 2, 13, 'O', SYSDATE - 30);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 2, 23, 'O', SYSDATE - 30);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 14, 20, 'O', SYSDATE - 29);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 7, 21, 'O', SYSDATE - 25);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 7, 29, 'O', SYSDATE - 11);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 7, 28, 'O', SYSDATE - 8);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 13, 10, 'O', SYSDATE - 8);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 5, 4, 'O', SYSDATE - 5);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 2, 43, 'O', SYSDATE - 17);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 7, 48, 'O', SYSDATE - 18);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 8, 42, 'O', SYSDATE - 23);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 16, 5, 'O', SYSDATE - 18);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 16, 9, 'O', SYSDATE - 18);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 12, 11, 'O', SYSDATE - 21);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 6, 12, 'O', SYSDATE - 18);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 6, 31, 'O', SYSDATE - 19);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 6, 32, 'O', SYSDATE - 18);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 4, 36, 'O', SYSDATE - 18);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 4, 44, 'O', SYSDATE - 18);

INSERT INTO wgl_loan (loan_number, patron_number, 
accession_number, loan_type, loan_date) 
VALUES (wgl_loan_seq.NEXTVAL, 4, 30, 'O', SYSDATE - 18);

PROMPT
PROMPT UPDATING LOAN TABLE
PROMPT


UPDATE wgl_loan
   SET loan_date = TRUNC(loan_date);

UPDATE wgl_loan a
   SET due_date = 
        (SELECT loan_date + loan_period
           FROM wgl_loan b, wgl_accession_register c
          WHERE b.accession_number = c.accession_number
            AND b.loan_number = a.loan_number);

UPDATE wgl_patron pat
   SET books_on_loan = 
      (SELECT COUNT (*)
         FROM wgl_loan
        WHERE patron_number = pat.patron_number
          AND date_returned IS NULL);


UPDATE wgl_accession_register a
   SET status = 'OL',
       due_date = 
          (SELECT due_date
             FROM wgl_loan
            WHERE accession_number = a.accession_number
              AND date_returned IS NULL)
 WHERE accession_number IN
          (SELECT accession_number 
             FROM wgl_loan
            WHERE date_returned IS NULL);
COMMIT;



INSERT INTO wgl_return VALUES (1, SYSDATE - 30, 4);
INSERT INTO wgl_return VALUES (2, SYSDATE - 15, 3);
INSERT INTO wgl_return VALUES (4, SYSDATE - 10, 3);

UPDATE wgl_return
   SET date_returned = TRUNC(date_returned);


UPDATE wgl_loan
   SET date_returned = TRUNC(date_returned);

COMMIT;

INSERT INTO wgl_reserve_list VALUES (8, '0-07-025872-4', 
        SYSDATE - 3, 2,2);

INSERT INTO wgl_reserve_list VALUES (3, '0-07-025872-4', 
                 SYSDATE - 2, 3, 1);


INSERT INTO wgl_reserve_list VALUES (6, '0-85312-565-1', 
                 TRUNC(SYSDATE) - 2 + 10/24, 1, 3);


INSERT INTO wgl_reserve_list VALUES (1, '0-85312-565-1', 
                 TRUNC(SYSDATE) -2 + 10.5/24, 1, 1);

INSERT INTO wgl_reserve_list VALUES (4, '0-85312-565-1', 
                 TRUNC(SYSDATE) -2 + 13.56/24, 1, 1);

INSERT INTO wgl_reserve_list VALUES (5, '0-85312-565-1', 
                 TRUNC(SYSDATE) -2 + 11/24, 1, 1);

/*  PLACE BOOK ON RESERVE AT ANOTHER BRANCH AND PLACE IN TRANSIT    */

INSERT INTO wgl_reserve_list VALUES (1, '0-89979-212-6', 
                 TRUNC(SYSDATE) -2 + 13.56/24, 1, 4);

UPDATE wgl_accession_register
   SET status = 'IT'
 WHERE accession_number = 6;

/*  Update fines owing    */


UPDATE wgl_patron pat
   SET outstanding_fines = 
         (SELECT SUM (TRUNC(date_returned) - TRUNC (due_date))*.25
            FROM wgl_loan
           WHERE TRUNC(date_returned) > TRUNC (due_date)
             AND date_returned IS NOT NULL
             AND patron_number = pat.patron_number);

UPDATE wgl_patron 
   SET outstanding_fines = 0
 WHERE outstanding_fines IS NULL;


COMMIT;

