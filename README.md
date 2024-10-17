Syntax highlight and tooltips discrptions of all functions, consistants, etc as of 2024 for LSL,
edit your Secondlife and OpenSim scripts off line and with a BETTER editor!!!

What is needed??
THese Files: lsl.api lsl.properties, Scite editor, and lslint
I have packed the files into the release. 
I made a install.bat that should copy for you, under windows

Scite is a FAST text editor with syntax hightlighing and hooks to run what you are editing in external compilers, 
or repels for error checking. Please web serch to find precompiled executibles for windows! 
* [ScTE Source](https://github.com/SciTe-Community/SciTe)
* [Extra Files](https://github.com/moltenform/scite-files/)
* [Last SciTE Windows Installer](https://web.archive.org/web/20240621070645/http://www.ebswift.com/scite-text-editor-installer.html)
* [Latest official release of SciTE](https://www.scintilla.org/SciTEDownload.html)
* [moltenform Scite](https://sourceforge.net/projects/scite-webdev/?source=directory), adds features including autocomplete and calltips for many languages
* https://sourceforge.net/projects/scintilla/files/SciTE/5.5.2/

lsinit.exe is a LSL syntax checker, please search for the latest update. I have a winXP binary archived, ask if wanted...
this is the lastest updated lsint.exe I could find.
* [lslint Source](https://github.com/Makopo/lslint/)
* [binary executible Source](https://github.com/Makopo/lslint/releases)

Install??
I used the installer for Scite, this makes a folder DRIVE:\program data\Scite\ on windows, this is where it looks for 
properties files amd api files for various langages, internally the program uses $(SciteDefaultHome)\ 
in it's files to represent this path...
(I have not tested it on linux, i trust if you are a linux person to figure out where these files are...
if you downloaded from Scite's offical site, its a portible version or the loose files in a zip, 
place the lsl.api and lsl.properties file in the same folder as them.)

Place the lsl.api and lsl.properties files into DRIVE:\program data\Scite\, in my case DRIVE is c:\
Place the program lslint.exe in the same folder

Usage??
Fristly if the file isn't saved yet as a .lsl or .esl,
Then at the stop of Scite click Language, (tip: click the lowest V arrow to scroll the language list....)
Last click LSL, this will select that langage for syntax highlighting and the api tooltips, 
(just like in SL you can see discriptions of various things.)

To use lslint for error checking you must 
frist SAVE a file with extention .lsl or .esl
Then you click Tools at the top of Scite, and either GO or Syntax Check, in this case both do the same.

Modding Colors??
In Scite global colors in the gobal settings file by clicking options, or you can find it in the  SciteDefaultHome folder
some of these are strings, numbers, comments, etc
all the rest of the things have their colors set via a substyle to keep them seprate from cpp C/C++ defualt colors that
are forced thru the lexer for cpp that does the work of syntax highlight.
From with in lsl.properties scroll down about 100 lines till you see:
# COLORS!!!!! =D 
# default
style.cpp.11.1=fore:#EE00CD,underlined
# types
style.cpp.11.2=fore:#00007F,bold
# keywords for logic flow
style.cpp.11.3=fore:#000000,bold
# events
style.cpp.11.4=fore:#00007F,bold,underlined
# constants 
style.cpp.11.5=fore:#1F6F1F
# built ins 
style.cpp.11.6=fore:#DF0000,underlined

//

Credits go to CoolVL, GensisViewer, the creators of lslint, and the orginal 2009 api file i found by # LSL keywords updated 19 Aug 2009 for LSL 1.23.4 by http://adammarker.org/shill



