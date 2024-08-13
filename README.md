## __DEMO:__

[http://eop.id.vn:8823](http://eop.id.vn:8823)

## Description

Simple web app to display All name of users in Bitrix24 app (b24-7w9mjb.bitrix24.vn)
Using NodeJS, for client and server. Display HTML by simple EJS view engine.

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

### Step 1: Install NodeJS and NPM using nvm
Install node version manager (nvm) by typing the following at the command line.

```bash
sudo su -
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
```
Activate nvm by typing the following at the command line.

```bash
. ~/.nvm/nvm.sh
```

Use nvm to install the latest version of Node.js by typing the following at the command line.

```bash
nvm install node
```

Test that node and npm are installed and running correctly by typing the following at the terminal:

```bash
node -v
npm -v
```

### Step 2: Install Git and clone repository from GitHub
To install git, run below commands in the terminal window:

```bash
sudo apt-get update -y
sudo apt-get install git -y
```
or 
```bash
sudo yum update -y
sudo yum install git -y
```

Just to verify if system has git installed or not, please run below command in terminal:
```bash
git --version
```

This command will print the git version in the terminal.

Run below command to clone the code repository from Github:

```bash
git clone https://github.com/linux-vps/testbitrix24.git
```

Navigate to the server directory, install dependencies, and start the server:
```bash
cd server
npm install
npm start
```
Open a new terminal, navigate to the public directory, install dependencies, build the project, and start the front-end:
```bash
cd public
npm install
npm run build
npm start
```

## We can keep the web alive with PM2

