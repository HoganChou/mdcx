$env:PYTHONPATH = "$PWD\src"

uv run python -m PyInstaller -n MDCα -F --noupx `
-i resources/Img/MDCα.ico `
-w main.py `
-p "./src" `
--add-data "resources;resources" `
--add-data "libs;." `
--hidden-import socks `
--hidden-import urllib3 `
--hidden-import _cffi_backend `
--collect-all curl_cffi

Write-Output 'Done'