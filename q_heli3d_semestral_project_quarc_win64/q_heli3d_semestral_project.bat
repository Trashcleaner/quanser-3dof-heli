@echo on
call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /x64 /Release 2>1 > nul:
set MATLAB=C:\MATLAB~1.R20
nmake -f q_heli3d_semestral_project.mk  ISPROTECTINGMODEL=NOTPROTECTING MAT_FILE=0 SHOW_TIMES=0 DEBUG=0 DEBUG_HEAP=0 OPTS="-DON_TARGET_WAIT_FOR_START=0"
