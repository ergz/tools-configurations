@echo off

:: Set the path to the user's Documents directory using the environment variable
set doskeysPath=%USERPROFILE%\apps

:: Set the path to the source ohmyposh-themes directory (adjust this path as needed)
set sourcePath=%~dp0doskeys

:: Create the ohmyposh-themes directory in the user's Documents if it doesn't exist
if not exist "%doskeysPath%\bats\" (
    echo Creating directory "%doskeysPath%\bats"
    mkdir "%doskeysPath%\bats"
)

:: Copy the contents of the source ohmyposh-themes to the user's Documents ohmyposh-themes
echo Copying files to "%doskeysPath%\bats"
xcopy "%sourcePath%\*" "%doskeysPath%\bats\" /E /I /Y

echo Copy complete.
pause
