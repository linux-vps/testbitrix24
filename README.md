## Demo

[http://eop.id.vn:8823](http://eop.id.vn:8823)

## Description

This project is a Node.js API deployed on AWS. It includes a directory structure organized for both client-side and server-side code. The application is built using Node.js, and the server is set up to handle API requests.

### Directory Structure

The project is divided into two main directories:

- **Public**: Contains static assets and front-end code.
  - `.env`: Environment configuration file.
  - `directory-structure.txt`: Overview of the directory structure.
  - `index.js`: Entry point for the public application.
  - `package-lock.json`: Dependency lock file.
  - `package.json`: Project metadata and dependencies.
  - **assets**: Contains images, JavaScript, and CSS files.
    - **img**: Image files (e.g., `noneavt.png`).
    - **js**: JavaScript files (e.g., `script.js`).
    - **styles**: Stylesheets (e.g., `style.css`, `style.css.map`, `style.scss`).
  - **config**: Configuration files (e.g., `config.js`).
  - **views**: View templates (e.g., `index.ejs`).

- **Server**: Contains the server-side code and API logic.
  - `.env`: Environment configuration file.
  - `.gitignore`: Specifies files and directories to be ignored by Git.
  - `directory-structure.txt`: Overview of the directory structure.
  - `index.js`: Entry point for the server application.
  - `package-lock.json`: Dependency lock file.
  - `package.json`: Project metadata and dependencies.
  - **config**: Configuration files (e.g., `config.js`).
  - **controllers**: Controllers for handling API logic.
    - `employeeController.js`: Manages employee-related operations.
    - `refreshController.js`: Handles refresh operations.
  - **middleware**: Middleware for request processing.
  - **routes**: API route definitions (e.g., `index.js`).

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
