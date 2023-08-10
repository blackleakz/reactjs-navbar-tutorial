# reactjs-navbar-tutorial

```
Author: BlackLeakz
Website: https://blackzspace.de/
Github-Repo: https://github.com/blackleakz/reactjs-navbar-tutorial.git
CodeSandbox.IO: https://codesandbox.io/p/sandbox/fancy-wood-c8grl4?welcome=true

Description:

In this tutorial you'll learn how to create a ReactJS Application with a customized NavigationBar using bootstrap-overrides! After this youll be able to:

- Create/Push/Pull a Github Repository . 
- Create/Fork/Edit in a codesandbox- cloud VM .
- Creating a ReactJS Application with a self-customized NavigationBar .
- And getting started with the next Tutorial. ;)


Requirements:
Node.JS - https://nodejs.org/de/download
NPM - (linux : install npm by your package-manager! / windows: npm should be installed through the nodejs installation!)
An IDE (VSCode) - [
An Integrated Desktop Enviroment like Visual Studio Code would be awesome, but if you want to , you can use a texteditor + a terminal for crafting this app! If you dont want to use both, you can fork the codesandbox - repository and edit the code in your browser! ;)
]


NPM - Requirements:
react-bootstrap
react-router-dom
bootstrap

INFO:

If you dont want to install the deps manualy, you can use the auto_installer script, placed in the setup_env folder i wrote! But id preferre to install everything manualy to remember them later!" 





Customizing bootstrap:

To customize the colors in your Application you need to override the bootstrap's settings by using the !important  value after the values-tag , for example:

.cssitem {
    color: black!important;
}


```

## STEP 1:

#Windows:

Download Node.JS by opening cmd or powershell and enter following command:
```
winget install OpenJS.NodeJS.LTS
```
This will install Node.JS Long-Time-Support's Version!

After this, you need to update/upgrade the node-package-manager by using this command:
```
npm install -g npm
```

#Linux::

Ubuntu:
Run as SUDO:
```
$ apt-get update;
$ apt-get install -y npm nodejs;
$ npm install -g npm
```
Debian:
Run as ROOT:
```
$ apt-get update;
$ apt-get install -y npm node*js; # im not sure, if the pkg node.js is avaiable under node.js or nodejs, so i#d preferre to use node*js to stay sure, you dont need to ensure.
$ npm install -g npm
```
ArchLinux:
Run as SUDO:
```
$ pacman -Syy
$ pacman -Sy node.js 
or
$ pacman -Sy nodejs
$ pacman -Sy npm
$ npm install -g npm
```


# STEP 2:

Create the Project-Enviroment by using the following command in you favourite-directory:
```
npx create-react-app my-react-app-navbar
```

# STEP 3:
Change the working directory to the project-folder you created in the step before!
The folder should have the name you set by the command used before!
Linux:
```
$ cd my-react-app-navbar
```
Windows:
```
> cd my-react-app-navbar
```

STEP 4:
Now you have to install node's deps by using the package-manager npm!"
RUN:
```
npm install react-router-dom
npm install react-bootstrap
npm install bootstrap
```
NOTE: If you fork this repository from codesandbox, you dont need to install them manualy!
By Forking this repo, codesandbox will install all deps automatically!
To stay sure, you can run ``` npm i ``` .

# IF YOU FORKED THIS SANDBOX, YOU CAN 
