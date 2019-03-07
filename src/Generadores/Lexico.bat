SET JAVA_HOME="C:\Program Files (x86)\Java\jdk1.8.0_111\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
SET JFLEX_HOME=C:\Users\andre\Desktop\Fuentes\jflex-1.7.0\lib
cd C:\Users\andre\OneDrive\fotos\Documents\NetBeansProjects\Tarea#3_OLC1\src\Analizadores
java -jar %JFLEX_HOME%\jflex-full-1.7.0.jar A_Lexico.jflex
pause




