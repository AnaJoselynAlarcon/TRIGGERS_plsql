ALTER TABLE wgl_title_catalogue ADD
   (CONSTRAINT pk_title_catalogue PRIMARY KEY (isbn));

ALTER TABLE wgl_author
  ADD CONSTRAINT fk_author_title FOREIGN KEY (isbn) 
      REFERENCES wgl_title_catalogue (isbn)
  ADD CONSTRAINT pk_wgl_author PRIMARY KEY (isbn, author_name);

ALTER TABLE wgl_reserve_list
  ADD CONSTRAINT fk_list_title FOREIGN KEY (isbn) 
      REFERENCES wgl_title_catalogue (isbn)
  ADD CONSTRAINT pk_wgl_reserve_list PRIMARY KEY(patron_number, isbn, date_reserved);

ALTER TABLE wgl_patron ADD 
   (CONSTRAINT pk_patron PRIMARY KEY (patron_number));


ALTER TABLE wgl_patron ADD (CONSTRAINT check_patron_type
        CHECK (patron_type IN ('R', 'NR', 'S')));

ALTER TABLE wgl_fine_receipt
  ADD CONSTRAINT fk_receipt_patron FOREIGN KEY (patron_number)
      REFERENCES wgl_patron (patron_number)
  ADD CONSTRAINT pk_wgl_fine_receipt PRIMARY KEY (patron_number, date_paid);

ALTER TABLE wgl_branch ADD (CONSTRAINT pk_branch
      PRIMARY KEY (branch_number));

ALTER TABLE wgl_accession_register ADD 
   (CONSTRAINT pk_accession_register
     PRIMARY KEY (accession_number));

ALTER TABLE wgl_accession_register 
  ADD CONSTRAINT fk_accession_branch FOREIGN KEY (branch_number)
     REFERENCES wgl_branch
  ADD CONSTRAINT fk_accession_title FOREIGN KEY (isbn)
      REFERENCES wgl_title_catalogue (isbn);

ALTER TABLE wgl_loan 
  ADD CONSTRAINT check_loan_type CHECK (loan_type IN ('O', 'R'))
  ADD CONSTRAINT fk_loan_accession FOREIGN KEY (accession_number)
      REFERENCES wgl_accession_register
  ADD CONSTRAINT fk_loan_patron FOREIGN KEY (patron_number)
      REFERENCES wgl_patron (patron_number)
  ADD CONSTRAINT pk_wgl_wgl_loan PRIMARY KEY (loan_number);


ALTER TABLE wgl_accession_register ADD
  (CONSTRAINT status_value_check
   CHECK (status IN ('OL', 'OS', 'HR', 'IT', 'LO', 'WR', 'CU')));

