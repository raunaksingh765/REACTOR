@echo off
title REACTOR ULTIMATE Launcher
color 0B

:: ============================================================================
:: REACTOR ULTIMATE LAUNCHER
:: Launches PowerShell GUI with proper permissions
:: ============================================================================

echo.
echo  ╔═══════════════════════════════════════════════════════════════════╗
echo  ║                                                                   ║
echo  ║                    ⚡ REACTOR ULTIMATE                            ║
echo  ║                                                                   ║
echo  ║   Real-time Enhanced Adaptive Computer Tactical Optimization     ║
echo  ║                          Resource                                 ║
echo  ║                                                                   ║
echo  ║                    Stark Industries Division                      ║
echo  ║                                                                   ║
echo  ║   NO ADS • NO SUBSCRIPTIONS • NO BS                              ║
echo  ║                                                                   ║
echo  ╚═══════════════════════════════════════════════════════════════════╝
echo.
echo  Checking administrator privileges...
echo.

:: Check for admin rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo  [ERROR] Administrator privileges required!
    echo.
    echo  Right-click "Launch_REACTOR_ULTIMATE.bat" and select
    echo  "Run as administrator"
    echo.
    pause
    exit /b 1
)

echo  ✓ Administrator privileges confirmed
echo.
echo  Starting REACTOR ULTIMATE...
echo.
echo  Features in this version:
echo   ⚡ Hardware-Accelerated GPU Scheduling
echo   🧠 Memory Integrity Control  
echo   🚀 Ultimate Performance Power Plan
echo   🌐 Advanced Network Optimization
echo   🎮 Complete Gaming Suite
echo   🛡️  Deep Privacy Shield
echo   📊 Before/After Benchmarking
echo   📖 BIOS Optimization Guide
echo.
echo  Launching GUI...
echo.

:: Launch PowerShell script with bypass execution policy
PowerShell.exe -ExecutionPolicy Bypass -File "%~dp0REACTOR_ULTIMATE.ps1"

if %errorLevel% neq 0 (
    echo.
    echo  [ERROR] Failed to launch REACTOR ULTIMATE
    echo  Make sure REACTOR_ULTIMATE.ps1 is in the same folder.
    echo.
    pause
    exit /b 1
)

exit
