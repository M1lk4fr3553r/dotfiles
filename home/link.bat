@echo off
mklink "%userprofile%\.zshrc" "%userprofile%\git\dotfiles\home\.zshrc"
mklink "%userprofile%\.gitconfig" "%userprofile%\git\dotfiles\home\.gitconfig"
pause