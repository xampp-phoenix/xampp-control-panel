del /q /s *.dcu *.dres *.res dcc*.cfg
cscript /nologo build.js win32
cgrc -c65001 xampp_control3.rc -foxampp_control3.res 
brcc32 -c65001 xampp_control3Resource.rc -foxampp_control3.dres 
dcc32 -q -b -w -$O+ -E.  xampp_control3.dpr
move xampp_control3.exe xampp-control32.exe

del /q /s *.dcu *.dres *.res dcc*.cfg
cscript /nologo build.js win64
cgrc -c65001 xampp_control3.rc -foxampp_control3.res 
brcc32 -c65001 xampp_control3Resource.rc -foxampp_control3.dres 
dcc64 -q -b -w -$O+ -E.  xampp_control3.dpr
move xampp_control3.exe xampp-control64.exe

del /q /s *.dcu *.dres *.res dcc*.cfg
if not defined nopause pause