@chcp 1251

:: Smart control for asdouomsu by akulabuhov

:: Переход во временный каталог операционной системы
cd %TEMP%

:: Загрузка дистрибутива InterTrust Co. ProxyPlugin CMJ.msi
curl -k -OL -O -С https://github.com/kulabuhov98/asdouomsu/raw/main/plugin.msi

:: Установка InterTrust Co. ProxyPlugin CMJ.msi
msiexec /i "plugin.msi"

:: Загрузка подготовленного ярлыка CompanyMedia
curl -k -OL -O -С https://github.com/kulabuhov98/asdouomsu/raw/main/CompanyMedia.url

:: Копирование ярлыка CompanyMedia на Рабочий стол текущего пользователя
copy CompanyMedia.url "%USERPROFILE%\Desktop"

:: Установка расширения ProxyPlugin2 CMJ Plugin Adapter для браузера Chromium (Chromium-Gost)
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Chromium\ExtensionInstallForcelist" /v 100 /t REG_SZ /d "dpkefahlefbmfgfgfoppbpkacgdmadpp" /f

:: Установка расширения ProxyPlugin2 CMJ Plugin Adapter для браузера Яндекс.Браузер
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\YandexBrowser\ExtensionInstallForcelist" /v 100 /t REG_SZ /d "dpkefahlefbmfgfgfoppbpkacgdmadpp" /f

:: Установка расширения ProxyPlugin2 CMJ Plugin Adapter для браузера Google Chrome
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist" /v 100 /t REG_SZ /d "dpkefahlefbmfgfgfoppbpkacgdmadpp" /f

:: Установка расширения ProxyPlugin2 CMJ Plugin Adapter для браузера Microsoft Edge
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Edge\ExtensionInstallForcelist" /v 100 /t REG_SZ /d "dpkefahlefbmfgfgfoppbpkacgdmadpp" /f