@echo off
title Install Aivory Studios Certificate
echo ========================================================
echo Installing Aivory Studios Certificate into Trusted Root
echo ========================================================
echo.
powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process certutil -ArgumentList '-addstore', '-f', 'Root', '\"%~dp0AivoryStudios.cer\"' -Verb RunAs -Wait"
echo.
echo Certificate installation complete!
echo Windows UAC will now display: Verified Publisher: Aivory Studios
echo ========================================================
pause
