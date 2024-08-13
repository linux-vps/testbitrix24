## Demo

[http://eop.id.vn:8823](http://eop.id.vn:8823)

## Description

This project is a Node.js API deployed on AWS. It includes a directory structure organized for both client-side and server-side code. The application is built using Node.js, and the server is set up to handle API requests.

### Directory Structure

- **Public**: Using NodeJS with EJS view engine. 
  - `.env`: Environment configuration.
  - `.gitignore` 
  - `directory-structure.txt`: directory structure.
  - `index.js`
  - `package-lock.json`
  - `package.json`
  - **assets**
    - **img**
    - **js**
    - **styles**: Stylesheets ( `style.css`, `style.css.map`, `style.scss`).
  - **config**: Configuration files ( `config.js`).
  - **views**: View templates ( `index.ejs`).

- **Server**: API server-side code.
  - `.env`: Environment configuration.
  - `.gitignore` 
  - `directory-structure.txt`: directory structure.
  - `index.js`
  - `package-lock.json`
  - `package.json`
  - **config**: Configuration files (`config.js`).
  - **controllers**: handling API.
    - `employeeController.js`: GET list of users.
    - `refreshController.js`: GET refresh_token.
  - **middleware**
  - **routes**: API route definitions (`index.js`).

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/linux-vps/testbitrix24.git
