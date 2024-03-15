Triggers 🛠️
Welcome to Lab 10! In this lab, we'll explore triggers and their practical applications.

🎯 What are Triggers?
Triggers are special types of stored procedures that are automatically executed or fired when certain events occur in the database. These events could be DML (Data Manipulation Language) statements like INSERT, UPDATE, or DELETE, or DDL (Data Definition Language) statements like CREATE, ALTER, or DROP.

🚀 Why are Triggers Useful?
Triggers are useful for enforcing business rules, maintaining data integrity, and automating repetitive tasks. They allow you to perform complex actions in response to database events without requiring manual intervention.

📋 Tasks:
Prevent Insertion Trigger: Create a trigger to prevent the insertion of a row into the WGL_RESERVE_LIST table when a book’s status is 'OS' (i.e., it is available on the shelf at the branch number identified in the BRANCH_RESERVED_AT column of the triggering statement).
🛠️ Trigger Details:
The trigger checks the book status and branch number based on the inserted ISBN.
If the book status is 'OS' and the branch number matches BRANCH_RESERVED_AT, insertion is prevented.
Otherwise, the trigger inserts the current date into DATE_RESERVED.


📅 Author & Date:
Author:
Find me on LinkedIn Ana Joselyn Alarcon
anajoselynalarcon@gmail.com

Date: December 06, 2023
Feel free to explore these triggers and see how they enhance data management in your database! If you have any questions or need further assistance, don't hesitate to reach out. Happy coding! 🚀
