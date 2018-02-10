@echo off
"C:\Program Files (x86)\PuTTy\plink.exe" -ssh user@shellbox.host bin/pullwindc.sh
"C:\Program Files (x86)\PuTTy\plink.exe" -ssh user@shellbox.host bin/pullwin.sh
"C:\Program Files (x86)\PuTTy\plink.exe" -ssh user@shellbox.host bin/pullwinsorted.sh
"C:\Program Files (x86)\PuTTy\plink.exe" -ssh user@shellbox.host bin/pullcount.sh

set file1=%Date:~4,2%%Date:~7,2%-windowsdevices.csv
set file2=%Date:~4,2%%Date:~7,2%-windcs.csv
set file3=%Date:~4,2%%Date:~7,2%-winsorted.csv
set file4=%Date:~4,2%%Date:~7,2%-devicecount.csv

"C:\Program Files (x86)\PuTTy\pscp.exe" user@shellbox.host:windowsdevices/%file1% C:\DataCollection\windows\
"C:\Program Files (x86)\PuTTy\pscp.exe" user@shellbox.host:windowsdevices/%file2% C:\DataCollection\windows\
"C:\Program Files (x86)\PuTTy\pscp.exe" user@shellbox.host:windowsdevices/%file3% C:\DataCollection\windows\
"C:\Program Files (x86)\PuTTy\pscp.exe" user@shellbox.host:windowsdevices/%file4% C:\DataCollection\windows\
