@echo off

setlocal
echo [Windows] Applying preset options ...
set MY_PROJECT_ZLIB_WITHOUT_INSTALL_ALL=OFF
set MY_PROJECT_ZLIB_WITHOUT_INSTALL_FILES=OFF
set MY_PROJECT_ZLIB_WITHOUT_INSTALL_HEADERS=OFF
set MY_PROJECT_ZLIB_WITHOUT_INSTALL_LIBRARIES=OFF
set MY_PROJECT_ZLIB_WITHOUT_TEST_APPS=ON
echo [Windows] Applying default options ... DONE
call %~dp0\build-windows.cmd
if "%ERRORLEVEL%" neq "0" (
    exit /b !ERRORLEVEL!
)
endlocal
