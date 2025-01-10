@echo off
:: Judul Program
title Temp Auto Remover Tools By ZEX

:: Menampilkan header dengan warna
echo.
color 0A
echo ================================
echo     Temp Auto Cleaner Tools
echo          By ZEX
echo ================================
echo.

:: Menghapus file sementara
color 0E
echo Menghapus file sementara...
ipconfig /flushdns
bcdedit /deletevalue useplatformclock
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes

:: Menghapus isi folder temp
color 0B
echo Menghapus isi folder C:\Windows\Temp...
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp

:: Menghapus isi folder Prefetch
color 0C
echo Menghapus isi folder C:\WINDOWS\Prefetch...
del /s /f /q C:\WINDOWS\Prefetch

:: Menghapus isi folder pengguna sementara
color 0D
echo Menghapus isi folder pengguna...
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%

:: Menghapus folder sementara lainnya
color 0E
echo Menghapus folder sementara lainnya...
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers

:: Menghapus file swap
color 0A
echo Menghapus file swap...
del c:\WIN386.SWP

:: Membersihkan layar
cls

:: Menampilkan pesan selesai
color 0B
echo ================================
echo     Proses Selesai!
echo ================================
@pause