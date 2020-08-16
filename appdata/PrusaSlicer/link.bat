@echo off
mklink /D "%appdata%\PrusaSlicer\filament" "%userprofile%\git\dotfiles\appdata\PrusaSlicer\filament"
mklink /D "%appdata%\PrusaSlicer\printer" "%userprofile%\git\dotfiles\appdata\PrusaSlicer\printer"
mklink /D "%appdata%\PrusaSlicer\print" "%userprofile%\git\dotfiles\appdata\PrusaSlicer\print"
pause