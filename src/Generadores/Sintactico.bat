SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_05\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd C:\Users\andre\OneDrive\fotos\Documents\NetBeansProjects\Tarea#3_OLC1\src\Analizadores
java -jar C:\Users\andre\Desktop\Fuentes\java-cup-11b.jar -parser analisis_sintactico -symbols Simbolos A_Sintactico.cup
pause
