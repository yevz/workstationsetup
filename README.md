# workstation-setup

Make sure [Docker 17.09.9](https://download.docker.com/mac/stable/19611/Docker.dmg) is installed. Increase docker resource allocation to 6 CPUs and 8GBs of ram (Preferences -> Advanced). Set to manual proxy configs
```
Bypass proxy settings: localhost,127.0.0.1,196.168.99.100
```

## Mac

### Tools
```
    * Brew
    * Cask
    * Java8
    * Node
    * Maven
    * Yarn
    * VS Code
    * Angular-Cli
    * Git
    * IntelliJ
    * Postman
    * iterm2
    * Microsoft Teams
    * Spectacle
```

Run the following in the Terminal:
```
./Mac-workstationsetup.sh
```

Notes: To change permissions of the file `chmod +x ./Mac-workstationsetup.sh` 

## Windows

### Tools

    * Postman
    * Git
    * NodeJs
    * VS Code
    * Conemu
    * Yarn
    * Intellij-Ultimate
    * Nodepad++
    * Microsoft Teams

Run Powershell as Admin and run the following:

```powershell
Set-ExecutionPolicy RemoteSigned; .\Windows-workstationsetup.ps1
```

```
VSCode Extensions:

 brunomartens.bma-coverage
 christian-kohler.path-intellisense
 eg2.tslint
 infinity1207.angular2-switcher
 mrmlnc.vscode-csscomb
 mrmlnc.vscode-scss
 msjsdiag.debugger-for-chrome
 naumovs.color-highlight
 qinjia.seti-icons
 robertohuertasm.vscode-icons
 robinbentley.sass-indented
 ryanluker.vscode-coverage-gutters
 wmaurer.change-case
 steoates.autoimport
 spell-checker 
```

### Notes

All tools that will be installed in Windows-workstationsetup.ps1 are located in [package.config](./package.config) file.



### oh-my-zsh
https://github.com/robbyrussell/oh-my-zsh -> sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## iterm2 configuration
https://gist.github.com/kevin-smets/8568070