@echo off

setlocal
echo [Windows] Applying preset options ...
set MY_PROJECT_ZLIB_WITHOUT_INSTALL_FILES=ON
set MY_PROJECT_ZLIB_WITHOUT_TEST_APPS=ON
echo [Windows] Applying default options ... DONE
call %~dp0\build-windows.cmd
if "%ERRORLEVEL%" neq "0" (
    exit /b !ERRORLEVEL!
)
endlocal
