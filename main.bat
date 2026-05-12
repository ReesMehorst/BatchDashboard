@echo off
title DevTool - by ReesMehorst
chcp 65001 >nul
MODE 80,50
cd files

:banner
echo.
echo.
echo	[38;2;255;0;0m	DDDDD  EEEEEE V       V TTTTTTT OOOOOO OOOOOO L  	
echo	[38;2;255;51;0m	D    D E       V     V     T    O    O O    O L
echo	[38;2;255;102;0m	D    D EEEE     V   V      T    O    O O    O L
echo	[38;2;255;153;0m	D    D E         V V       T    O    O O    O L  
echo	[38;2;255;204;0m	DDDDD  EEEEEE     V        T    OOOOOO OOOOOO LLLLLL  
echo.
echo.

:start
echo.
echo	[38;2;255;255;0m	╔═(1) Codespaces
echo	[38;2;255;255;0m	╠══(2) AI-tools
echo	[38;2;255;255;0m	╠═══(3) Github
echo	[38;2;255;255;0m	╠════(4) Programs
echo	[38;2;255;255;0m	╚═════(5) Close DevTool
choice /C 12345 /N /M "[38;2;255;255;0mMake a choice: "

:: Open the options
if errorlevel 5 exit
if errorlevel 4 goto programsMenu
if errorlevel 3 start https://github.com/ & cls & goto banner 
if errorlevel 2 goto aiMenu
if errorlevel 1 goto codeMenu
goto start


:: Menu for programs
:programsMenu
echo.
echo	[38;2;255;255;0m	╔═(1) Unity
echo	[38;2;255;255;0m	╠══(2) UnityHub
echo	[38;2;255;255;0m	╠═══(3) TeamViewer
echo	[38;2;255;255;0m	╠════(4) Teams
echo	[38;2;255;255;0m	╚═════(5) Go back
choice /C 12345 /N /M "[38;2;255;255;0mMake a choice: "

:: Opens program if exists
if errorlevel 5 cls & goto banner
if errorlevel 4 start Teams.lnk & cls & goto banner
if errorlevel 3 start TeamViewer.lnk & cls & goto banner
if errorlevel 2 start UnityHub.lnk & cls & goto banner
if errorlevel 1 start Unity.lnk & cls & goto banner


:: Menu for AI agents
:aiMenu
echo.
echo	[38;2;255;255;0m	╔═══(1) ChatGpt
echo	[38;2;255;255;0m	╠════(2) Claude
echo	[38;2;255;255;0m	╚═════(3) Go back
choice /C 123 /N /M "[38;2;255;255;0mMake a choice: "

:: Open website
if errorlevel 3 cls & goto banner
if errorlevel 2 start https://claude.ai/new & cls & goto banner
if errorlevel 1 start https://chatgpt.com & cls & goto banner


:: Menu for codespaces, IDE's etc.
:codeMenu
echo.
echo	[38;2;255;255;0m	╔═(1) Visual Studio
echo	[38;2;255;255;0m	╠══(2) Visual Studio Code
echo	[38;2;255;255;0m	╠═══(3) InteliJ 
echo	[38;2;255;255;0m	╚════(4) Go back
choice /C 1234 /N /M "[38;2;255;255;0mMake a choice: "

:: Opens program if exists
if errorlevel 4 cls & goto banner
if errorlevel 3 start InteliJ.lnk & cls & goto banner
if errorlevel 2 start VisualStudioCode.lnk & cls & goto banner
if errorlevel 1 start VisualStudio.lnk & cls & goto banner
