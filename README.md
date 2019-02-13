A Makefile that takes a circuit_macros m4, converts it to pic format, then to TikZ code.

Requirements:

  + An m4 interpreter
  + [circuit\_macros](https://ece.uwaterloo.ca/~aplevich/Circuit_macros/)
  + [dpic](https://ece.uwaterloo.ca/~aplevich/dpic/)

Instructions:

  + Edit the first line of the Makefile to point to where you installed circuit_macros
  + `cd <directory_with_your_m4_files>`
  + `make` (On Windows you may wish to try `mingw32-make.exe` from MinGW64)
  + That's it. You can use a generated TikZ file in your document like as simply as `\input{file.tikz}`