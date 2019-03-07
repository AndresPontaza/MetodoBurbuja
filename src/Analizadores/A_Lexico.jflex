/*------------  1ra Area: Codigo de Usuario ---------*/
//------> Paquetes,importaciones
package Analizadores;
import java_cup.runtime.*;


/*------------  2da Area: Opciones y Declaraciones ---------*/
%%
%{
    //----> Codigo de usuario en sintaxis java
     
%}

//-------> Directivas
%public 
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode
%8bit
%full
%unicode


//------> Expresiones Regulares
cadena = [\"]([^\"\n]|(\\\"))*[\"]

//------> Estados

%%
/*------------  3raa Area: Reglas Lexicas ---------*/

//-----> Simbolos

//-------> Punto
<YYINITIAL> "\u002E"    { System.out.println("Reconocio "+yytext()+" punto"); return new Symbol(Simbolos.punto, yycolumn, yyline, yytext()); }

//-------> Reservadas, tipos de datos y del sistema
<YYINITIAL> "imprimir"       { System.out.println("Reconocio "+yytext()+" Palabra reservada Imprimir"); return new Symbol(Simbolos.imprimir, yycolumn, yyline, yytext()); }

//-------> Simbolos ER
<YYINITIAL> {cadena}    { System.out.println("Reconocio "+yytext()+" cad"); return new Symbol(Simbolos.cad, yycolumn, yyline, yytext()); }

//------> Espacios
[ \t\r\n\f]             {/* Espacios en blanco, se ignoran */}

//------> Errores Lexicos
.                       { System.out.println("Error Lexico"+yytext()+" Linea "+yyline+" Columna "+yycolumn);
                        }