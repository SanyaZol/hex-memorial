
if exist %map%_d.vmf






if exist %map%_d.vmf (
	goto done
	) else if exist %map%_conv_d.vmf (
	goto done
	) else (
	set error=VMF doesnt exist, oh crap
	goto fail
)








:CrackSmokingCompiler
cd %dir%
if exist %map%_d.vmf (
	rem vmf already exists
	) else if exist %map%.bsp (
		if ERRORLEVEL 1 set ERRORLEVEL 0
		java -jar "%path1%\vmex.jar" %map%.bsp
		if ERRORLEVEL 1 (
		set error=BSP file is the wrong version
		rem bspconv goes here
		rem do bspconv
		)
	) else (
	set error=No BSP to load into decompiler
	goto fail
)

:CrackSmokingCompiler
cd %dir%
if exist %map%.bsp (
	if ERRORLEVEL 1 set ERRORLEVEL 0
	java -jar "%path1%\vmex.jar" %map%.bsp
		if ERRORLEVEL 1 (
		set error=BSP file is the wrong version
		rem bspconv goes here
		goto fail
		)
	) else (
	set error=No BSP to load into decompiler
	goto fail
)












