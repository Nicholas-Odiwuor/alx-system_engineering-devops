# Command Line for the Win

## Description

This project is part of the CMD CHALLENGE game, which aims to improve command-line skills. It involves completing the first nine tasks and transferring a screenshot of the completion to the sandbox environment using SFTP.

## Completed Tasks

- Completed the first nine tasks of CMD CHALLENGE.
- Took a screenshot showing the completion of the first nine tasks and saved it as `0-first_9_tasks.jpg`.

## SFTP File Transfer

To transfer the screenshot to the sandbox environment using SFTP, follow these steps:

1. Open a terminal or command prompt on your local machine.
2. Use the SFTP command-line tool to establish a connection to the sandbox environment:
    ```
    sftp username@hostname
    ```
   Replace `username` with your sandbox username and `hostname` with the sandbox hostname provided.
3. Enter your password when prompted to authenticate.
4. Navigate to the directory where you want to upload the screenshots using the `cd` command.
5. Use the `put` command to upload the screenshot from your local machine to the sandbox environment:
    ```
    put 0-first_9_tasks.jpg
    ```
6. Confirm that the screenshot has been successfully transferred by checking the sandbox directory.
7. Once the screenshot is transferred, push it to GitHub along with the rest of your project files.

## Repository Structure

The repository structure should match the following:

alx-system_engineering-devops/
└── command_line_for_the_win/
├── 0-first_9_tasks.jpg
├── README.md
└── other_project_files...

## Author

This project was completed by Nicholas-Odiwuor
