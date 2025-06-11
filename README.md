# Online-Voting-System


An Online Voting System built as a 4th-semester DBMS project for the Bachelor of Technology in Computer Science at Delhi Technological University. This web-based application allows registered users to vote securely from anywhere, streamlining the traditional voting process through a digital interface.

📌 Features

Secure Registration & Login
Voters register with personal and voter ID details. All credentials are safely stored in the database with authentication checks.
One-Voter-One-Vote Enforcement
Voting status updates automatically after a vote is cast, preventing duplicate or fraudulent voting.
Voter Dashboard
Displays user information and a dynamic list of candidates with party names and symbols.
Admin Panel
Allows the admin to add new candidates, upload symbols and photos, and manage voting statistics.

🛠️ Technologies Used

Frontend: HTML, CSS
Backend: PHP
Database: MySQL (using phpMyAdmin)
Local Server: XAMPP (Apache, MariaDB)

📂 Database Schema

AddCandidate: Stores candidate details including name, party, symbol, photo, and vote count.
AdminLogin: Stores admin credentials.
VoterRegistration: Stores voter information such as name, DOB, ID details, login credentials, status, and vote tracking.
SQL creation scripts are included for setting up the full schema and data structure.

📌 How It Works

Voter Registration
Users sign up by filling a form with valid voter information.
Login & Vote
After logging in with voter ID, mobile number, and password, users can view candidates and cast their vote.
Voting Lock
Once a vote is cast, the voting button is disabled and the status updates to "Voted."
Admin Panel Access
Accessible via separate login. Admin can add candidates and monitor voting records.


🧠 Learning Outcome

This project enhanced my understanding of:

Full-stack web application development
Database design and schema normalization
SQL query writing and execution
Authentication and session handling
Practical application of theoretical DBMS concepts





