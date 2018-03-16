rem Build AppletDemo Signed Jar
rem
del AppletDemo.jar
jar xvf FDxSDKPro.jar
jar xvf AbsoluteLayout.jar
javac -deprecation applet\*.java
jar cvf AppletDemo.jar SecuGen\FDxSDKPro\jni\*.class applet\*.class org\netbeans\lib\awtextra\*.*
jarsigner -keystore demokeystore -storepass demopassword -keypass demopassword AppletDemo.jar demokey

