# launch this script with: powershell -ExecutionPolicy ByPass -File .\install.ps1

rm "C:\Users\$env:username\AppData\Roaming\Sublime Text 3\Packages\User\Preferences.sublime-settings"
rm "C:\Users\$env:username\AppData\Roaming\Sublime Text 3\Packages\User\Package Control.sublime-settings"

cmd.exe /c mklink "C:\Users\$env:username\AppData\Roaming\Sublime Text 3\Packages\User\Preferences.sublime-settings" "C:\Users\$env:username\config\sublime-text\Preferences.sublime-settings"
cmd.exe /c mklink "C:\Users\$env:username\AppData\Roaming\Sublime Text 3\Packages\User\Package Control.sublime-settings" "C:\Users\$env:username\config\sublime-text\Package Control.sublime-settings"

cp install/.gitconfig ~/.gitconfig
