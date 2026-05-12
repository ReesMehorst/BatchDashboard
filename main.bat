@echo off
title DevTool - by Mees Rehorst
chcp 65001 >nul
MODE 80,50
cd files

:banner
echo.
echo.
echo	[38;2;255;0;0m	DDDDD  EEEEEE V       V  	
echo	[38;2;255;51;0m	D    D E       V     V  
echo	[38;2;255;102;0m	D    D EEEE     V   V  
echo	[38;2;255;153;0m	D    D E         V V
echo	[38;2;255;204;0m	DDDDD  EEEEEE     V
echo.
echo.

:start
echo.
echo	[38;2;255;255;0m	╔═(1) Programma's
echo	[38;2;255;255;0m	╠══(2) Chat
echo	[38;2;255;255;0m	╠═══(3) Documenten
echo	[38;2;255;255;0m	╠════(4) Trello
echo	[38;2;255;255;0m	╚══════(6) Afsluiten
choice /C 123456 /N /M "[38;2;255;255;0mMaak een keuze: "

:: Open de juiste optie
if errorlevel 5 exit
if errorlevel 4 start https://trello.com/b/L1LnLrCB/hookhorizon
if errorlevel 3 goto documentenMenu
if errorlevel 2 start https://chatgpt.com/g/g-p-6858679255348191b123d808ead33c9c-hook-horizon/project & cls & goto banner 
if errorlevel 1 goto programmaMenu
goto start



:: Menu voor Programma's
:programmaMenu
echo.
echo	[38;2;255;255;0m	╔═(1) Unity
echo	[38;2;255;255;0m	╠══(2) UnityHub
echo	[38;2;255;255;0m	╠═══(3) MagicaVoxel
echo	[38;2;255;255;0m	╠════(4) Aseprite
echo	[38;2;255;255;0m	╚═════(5) Terug naar hoofdmenu
choice /C 1234567 /N /M "[38;2;255;255;0mMaak een keuze: "

:: Open programma als het bestaat
if errorlevel 5 cls & goto banner
if errorlevel 4 start Aseprite.url & cls & goto banner
if errorlevel 3 start MagicaVoxel.lnk & cls & goto banner
if errorlevel 2 start UnityHub.lnk & cls & goto banner
if errorlevel 1 start Unity.lnk & cls & goto banner




:: Menu voor Documenten
:DocumentenMenu
echo.
echo	[38;2;255;255;0m	╔═══(1) Backlog
echo	[38;2;255;255;0m	╠════(2) DevLog
echo	[38;2;255;255;0m	╚═════(3) Terug naar hoofdmenu
choice /C 1234 /N /M "[38;2;255;255;0mMaak een keuze: "

:: Open website
if errorlevel 3 cls & goto banner
if errorlevel 2 start https://dehaagsehogeschool-my.sharepoint.com/:w:/r/personal/24141720_student_hhs_nl/_layouts/15/doc2.aspx?sourcedoc=%7B7E7697B1-5B55-436A-82F8-656E9035440E%7D&file=Hook%26Horizon%20Backlog.docx&action=default&mobileredirect=true&DefaultItemOpen=1 & cls & goto banner
if errorlevel 1 start https://dehaagsehogeschool-my.sharepoint.com/:w:/r/personal/24141720_student_hhs_nl/_layouts/15/Doc.aspx?sourcedoc=%7BF9CED0DB-9A34-4582-8B16-B9796906234B%7D&file=Document.docx&action=editnew&mobileredirect=true&wdPreviousSession=aa2b259e-b84c-d4dd-0e25-d93bd595316a&wdNewAndOpenCt=1750940133593&wdo=4&wdOrigin=wacFileNew&wdPreviousCorrelation=9978db96-d728-49b1-a9b1-f1b559604518&wdnd=1&wdTpl=blankNew & cls & goto banner