# RVCE 6th Sem Compiler Design Programs

<p>RV College of Engineering, Bengaluru</p>
<p><strong><span style="font-family: serif; font-size: 28px;">Compiler Design(21CS63)</span></strong></p>

![Lab Programs for CIE and SEE](https://docs.google.com/document/d/1sYfEx-RTlhu14UrSVViqbGywJfuFdXIo/edit)

<p><br></p>

## Lab Programs

1. **Program 1:**
   - Write a LEX program to count the number of words, lines, characters, and whitespaces in a given paragraph.
   - Write a YACC program to recognize strings of the form \(a^nb^{(n+m)}c^m\), \(n,m \geq 0\).

2. **Program 2:**
   - Write a LEX program to count the number of positive and negative integers and positive & negative fractions.
   - Write a YACC program to validate and evaluate a simple expression involving operators +, -, *, and /.

3. **Program 3:**
   - Write a LEX program to count the number of comment lines in a C Program. Also, eliminate them and copy that program into a separate file.
   - Write a YACC program to recognize a nested (minimum 3 levels) FOR loop statement for C language.

4. **Program 4:**
   - Write a LEX program to recognize and count the number of identifiers, operators, and keywords in a given input file.
   - Write a YACC program to recognize nested IF control statements (C language) and display the number of levels of nesting.

5. **Program 5:**
   - Write a YACC program to recognize declaration statements (C language) and display the number of variables declared. Variables can be any basic data type or array type (e.g., `int a[10], a, b, c;`).

6. **Program 6:**
   - YACC program that reads the C statements for an input file and converts them into quadruple three-address intermediate code.

7. **Program 7:**
   - Write a YACC program that identifies the function definition of the C language.

8. **Program 8:**
   - Write a YACC program that generates assembly language (Target) code for valid arithmetic expressions.

## LLVM Programs

### Program 6: Bubble Sort

This program is to print the unoptimized and optimized code for a bubble sort code.

```bash
# To print the unoptimized assembly code
clang filename.c -S -emit-llvm -o filename.ll

# To print the optimized assembly code
clang filename.c -S -emit-llvm -o filename.ll -O3
