




:CrackSmokingCompiler
set ERRORLEVEL=0
cd %dir%
if exist %map%_d.vmf (
	rem echo vmf already exists
	) else if exist %map%.bsp (
		set ERRORLEVEL 0
		java -jar "%path1%\vmex.jar" %map%.bsp
		if ERRORLEVEL 1 (
			echo.
			echo BSP will not decompile, trying to convert..
			rem sleep 1
			set ERRORLEVEL 0
			bspconv.exe %map%.bsp %map%_conv.bsp
			if ERRORLEVEL 1 (
				set error=BSP will not convert
				goto fail
			)
			echo.
			echo Conversion complete, feeding decompiler..
			sleep 1
			set ERRORLEVEL 0
			java -jar "%path1%\vmex.jar" %map%_conv.bsp
			ren %map%_conv_d.vmf %map%_d.vmf
			if ERRORLEVEL 1 (
				set error=BSP will not decompile even after conversion
				goto fail
			)
		)
	) else (
	set error=No BSP to load into decompiler
	goto fail
)


:CrackSmokingCompiler
cd %dir%
if exist %map%_d.vmf (
	rem echo vmf already exists
	) else if exist %map%.bsp (
	
		if ERRORLEVEL 1 set ERRORLEVEL 0
		java -jar "%path1%\vmex.jar" %map%.bsp
		
		if ERRORLEVEL 1 (
			echo BSP file will not decompile, trying to convert..
			
			sleep 1
			if ERRORLEVEL 1 set ERRORLEVEL 0
			bspconv.exe %map%.bsp %map%_conv.bsp
			
			if ERRORLEVEL 1 (
				set error=BSP will not convert
				goto fail
			)
			
		
			if ERRORLEVEL 1 set ERRORLEVEL 0
			java -jar "%path1%\vmex.jar" %map%_conv.bsp
			
			if ERRORLEVEL 1 (
				set error=BSP will not decompile even after conversion
				goto fail
			)
			
			
		)
	) else (
	set error=No BSP to load into decompiler
	goto fail
)









