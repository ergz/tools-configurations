@echo off

:: Set the path to the user's Documents directory using the environment variable
set documentsPath=%USERPROFILE%\Documents

:: Set the path to the source ohmyposh-themes directory (adjust this path as needed)
set sourcePath=%~dp0ohmyposh-themes

:: Create the ohmyposh-themes directory in the user's Documents if it doesn't exist
if not exist "%documentsPath%\ohmyposh-themes\" (
    echo Creating directory "%documentsPath%\ohmyposh-themes"
    mkdir "%documentsPath%\ohmyposh-themes"
)

:: Copy the contents of the source ohmyposh-themes to the user's Documents ohmyposh-themes
echo Copying files to "%documentsPath%\ohmyposh-themes"
xcopy "%sourcePath%\*" "%documentsPath%\ohmyposh-themes\" /E /I /Y

echo Copy complete.
pause
