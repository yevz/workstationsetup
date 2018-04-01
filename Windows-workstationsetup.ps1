$choice = ""
Set-ExecutionPolicy RemoteSigned
Set-ExecutionPolicy Unrestricted 
[Environment]::SetEnvironmentVariable("http_proxy", "proxy.int.8451.com:80", "Machine")
[Environment]::SetEnvironmentVariable("https_proxy", "proxy.int.8451.com:443", "Machine")

Try {
    get-command cinst >$null 2>&1 
    echo "[Skip] Chocolately Installed"
}
Catch {
    # If Chocolately is not installed, install it
    [System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

cinst packages.config -y

npm config set strict-ssl false
npm config set proxy http://proxy.int.8451.com:80/
npm config set https_proxy https://proxy.int.8451.com:443

yarn global add @angular/cli


while ($choice -notmatch "[y|n]"){
    $choice = read-host "Do you want to install VScode extensions? (Y/N)"
    }

if ($choice -eq "y"){
    #VSCode extensions 
        code --install-extension brunomartens.bma-coverage
        code --install-extension christian-kohler.path-intellisense
        code --install-extension eg2.tslint
        code --install-extension infinity1207.angular2-switcher
        code --install-extension mrmlnc.vscode-csscomb
        code --install-extension mrmlnc.vscode-scss
        code --install-extension msjsdiag.debugger-for-chrome
        code --install-extension naumovs.color-highlight
        code --install-extension qinjia.seti-icons
        code --install-extension robertohuertasm.vscode-icons
        code --install-extension robinbentley.sass-indented
        code --install-extension ryanluker.vscode-coverage-gutters
        code --install-extension wmaurer.change-case
        code --install-extension steoates.autoimport # enables auto import for ts projects
        code --install-extension streetsidesoftware.code-spell-checker
    }
    
else {write-host "Done!"}
