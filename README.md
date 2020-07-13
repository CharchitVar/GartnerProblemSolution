# GartnerProblemSolution

Steps to run the Coding Question.

1. I've given the Program.cs File which is having a main method
  For Making it run - type command dotnet run in the Console of the Visual Studio Code.
Considering the Program.cs as the main class.

2. Then it will ask for the File Name to be imported 
  Give the file name as capterra.yaml or softwareadvice.json

Keep in mind the files are in the solution repository only. Make sure the path remain the same while importing the file.

In case if you give wrong file extension , it will give you error message on the console window. I've handled that via try catch block.

3. For running the test cases . 
  run the command dotnet test
  
4. I've written two test cases for the checking the file extension in the TestClass.cs File

5. This is my first time I've return unit test cases in an application.
6. If time would not be a constraint I would love to do the UI part so the application would not need the console for running, or also could handled the exception more efficently.

--------------------------------------------------------------------------------------XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX---------------------------------------------------
For Database Question

Use the File GartnerDatabaseSolution.sql 

1. I've converted the Mysql code to MSSQL server code.
2. I've considered status 1 means active and 2 meaans Inactive in the User Table as it is not mentioned the demo database.
3. I've considered say status in listing 2-- for basic and 3 for premium in listing table as it is not mentioned the demo database.

Kindly check the queries considering the above two lines
