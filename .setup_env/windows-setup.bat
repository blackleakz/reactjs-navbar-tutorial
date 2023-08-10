title windows-setup
color 0b
echo Installing all requirements for Windows!

echo Installing Node.JS Long Time Support!
winget install OpenJS.NodeJS.LTS
echo upgrading npm
npm install -g npm

echo You should done now! Try to continue creating your first reactjs-app by following this tutorials readme-file!