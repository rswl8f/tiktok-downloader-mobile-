@echo off
chcp 65001 > nul
title تطبيق تحميل تيك توك بدون علامة مائية
echo ========================================================
echo   تطبيق تحميل مقاطع تيك توك للهواتف والأجهزة الذكية
echo ========================================================
echo.
echo 1. تشغيل التطبيق (خادم الهاتف PWA مع رمز QR للاتصال من الجوال)
echo 2. تشغيل واجهة فليت للهاتف (Flet Mobile App)
echo 3. فتح مجلد البرنامج المحزوم الجاهز (dist)
echo.
set /p choice=اختر رقم العملية (1 أو 2 أو 3) [افتراضي 1]: 

if "%choice%"=="2" (
    echo جاري تشغيل واجهة فليت...
    python main.py --flet
) else if "%choice%"=="3" (
    explorer "dist\TikTokDownloader"
) else (
    echo جاري تشغيل خادم الهاتف PWA...
    python main.py
)
pause
