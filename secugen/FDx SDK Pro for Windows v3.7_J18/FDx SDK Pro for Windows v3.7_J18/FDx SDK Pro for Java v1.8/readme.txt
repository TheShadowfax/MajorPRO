# SecuGen FDx SDK Pro for Java (Windows)
## Version 1.8
### September 20, 2016
### README
================================================================

### Supported Platforms
======================
Microsoft Windows
JDK v1.8.0_51 or later
JRE Plugin v1.8.0_51 or later

### Files Included in this Distribution
=======================================
readme.txt          		- this file
AbsoluteLayout.jar  		- Layout classes used by SWING sample
FDxSDKPro.jar       		- SecuGen FDx SDK Pro for Java SDK
FDxSDKPro_jdk1.5_0_21.jar	- SecuGen FDx SDK Pro for Java SDK for JDK 1.5_0_21
FDxSDKPro_jdk1.6.0_45.jar	- SecuGen FDx SDK Pro for Java SDK for JDK 1.6.0_45
jnisgfplib/Win32/jnisgfplib.dll - 32bit SecuGen FDx SDK Pro JNI library
jnisgfplib/x64/jnisgfplib.dll   - 64bit SecuGen FDx SDK Pro JNI library                     
jnisgfplib/Win32/jnisgwsqlib.dll- 32bit SecuGen WSQ JNI library
jnisgfplib/x64/jnisgwsqlib.dll  - 64bit SecuGen WSQ JNI library                     
jnisgfplib/Win32/sgwsqlib.dll 	- 32bit SecuGen WSQ library
jnisgfplib/x64/sgwsqlib.dll   	- 64bit SecuGen WSQ library                     
jnisgfplib/Win32/jnisgnfiqlib.dll- 32bit SecuGen NFIQ JNI library
jnisgfplib/x64/jnisgnfiqlib.dll - 64bit SecuGen NFIQ JNI library                     
jnisgfplib/Win32/sgnfiqlib.dll 	- 32bit SecuGen NFIQ library
jnisgfplib/x64/sgnfiqlib.dll   	- 64bit SecuGen NFIQ library                     
jnifplib/win32/sgfplib.dll 	- 32bit SecuGen library 
jnifplib/x64/sgfplib.dll 	- 64bit SecuGen library 
doc                 		- SecuGen FDxSDK for Java JavaDoc
run_JSGFPLibTest.bat		- runs the JFPLibTest sample application
run_JSGD.bat        		- runs the JSGD SWING sample application
run_JSGMultiDeviceTest.bat 	- runs the multiple device test sample
signedapplet.doc    		- description of signed applet and browser test results

### Release Notes
=================
v1.8 - Added support for JDK 1.5 and JDK 1.6 for backwards compatibility
v1.7 - Added GetNumOfMinutiae() function (added sgfplib.dll)
v1.6 - Added support for NFIQ
       Added support for Hamster Pro (UPx)
v1.5 - Added support for WSQ
v1.4 - Added support for Hamster PRO 20
       Fixed build problem that was not including demo source files in FDxSDKPro.jar.
v1.3 - Added JSGD Applet Demo
       Added 64bit native library
v1.2 - Added JSGD SWING example
v1.1 - Added GetImageEx method


### Installation
================
1. Install FDx SDK Pro for Windows v3.54 or later 
2. Install JDK v1.8.0_51
3. Install the FDx SDK Pro for Java runtime files
   Windows 7/8/10 32bit: 
   	Copy the following files to C:\windows\system32
		jnifplib\win32\jnisgfplib.dll
		jnisgwsqlib\win32\jnisgwsqlib.dll
		jnisgwsqlib\win32\sgwsqlib.dll
		jnisgwsqlib\win32\jnisgnfiqlib.dll
		jnisgwsqlib\win32\sgnfiqlib.dll
		jnifplib\win32\sgfplib.dll
	
   Windows 7/8/10 64bit: 
   	Copy the following files to C:\windows\SysWOW64
		jnifplib\win32\jnisgfplib.dll
		jnifplib\win32\jnisgwsqlib.dll
		jnifplib\win32\sgwsqlib.dll
		jnifplib\win32\jnisgnfiqlib.dll
		jnifplib\win32\sgnfiqlib.dll
		jnifplib\win32\sgfplib.dll
   	Copy the following files to C:\windows\system32
                jnifplib\x64\jnisgfplib.dll
		jnifplib\x64\jnisgwsqlib.dll
		jnifplib\x64\sgwsqlib.dll
		jnifplib\x64\jnisgnfiqlib.dll
		jnifplib\x64\sgnfiqlib.dll
		jnifplib\x64\sgfplib.dll

### Running the Sample Applications
===================================
1. JFPLibTest
   java -cp ".;FDxSDKPro.jar" SecuGen.FDxSDKPro.samples.JSGFPLibTest

### Extracting the Sample Application Source Code
=================================================
jar xvf FDxSDKPro.jar SecuGen/FDxSDKPro/samples/JSGFPLibTest.java SecuGen/FDxSDKPro/samples/JSGD.java


### Building the Sample Applications
====================================
javac -deprecation -classpath ".;AbsoluteLayout.jar;FDxSDK.jar" SecuGen\FDxSDKPro\samples\*.java

### Building and running the Signed Applet Demo
===============================================
1. Run genkey.bat to build the keystore
2. Run buildsignedapplet.bat to build AppletDemo.jar
3. Load JSGDAppletDemo.html in browser

