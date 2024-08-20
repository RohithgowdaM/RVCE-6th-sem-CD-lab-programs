# RVCE 6th Sem Compiler Design Programs

<p>RV College of Engineering, Bengaluru</p>
<p><strong><span style="font-family: serif; font-size: 28px;">Compiler Design(21CS63)</span></strong></p>
![Lab Programs for CIE and SEE](https://docs.google.com/document/d/1sYfEx-RTlhu14UrSVViqbGywJfuFdXIo/edit)
<p><br></p>
<ol>
    <li>Program 1:&nbsp;<ol>
            <li>Write a LEX program to count number of words, lines, characters and whitespaces in a given paragraph.</li>
            <li>Write a YACC program to recognize strings of the form a^nb^(n+m)c^m, n,m&gt;=0.</li>
        </ol>
    </li>
    <li>Program 2:<ol>
            <li>Write a LEX program to count number of Positive and Negative integers and Positive &amp; Negative fractions.</li>
            <li>Write a YACC program to validate and evaluate a simple expression involving operators +,- , * and /.</li>
        </ol>
    </li>
    <li>Program 3:<ol>
            <li>Write a LEX program to count the number of comment lines in a C Program. Also eliminate them and copy that program into a separate file.</li>
            <li>Write a YACC program to recognize a nested (minimum3levels)FOR loop statement for C language.</li>
        </ol>
    </li>
    <li>Program 4:<ol>
            <li>Write a LEX program to recognize and count the number of identifiers, operators and keywords in a given input file.</li>
            <li>Write a YACC program to recognize nested IF control statements (C language) and display the number of levels of nesting.</li>
        </ol>
    </li>
    <li>Program 5: Write a YACC program to recognize Declaration statement (C language) and display the number variables declared .
    Variable can be any basic data type  or array type
    Example int a[10],a,b,c;  
    </li>
    <li>Program 6: YACC program that reads the C statements for an input file and converts them in quadruple three address intermediate code.</li>
    <li>Program 7: Write a YACC program that identifies the Function Definition of C language.</li>
    <li>Program 8: Write a YACC program that generates Assembly language (Target) Code for valid Arithmetic Expression.</li>
</ol>

## LLVM Programs

### Program 6

This program is to print the unoptimised and optimised code for a bubble sort code

```bash
# to print the unoptimised assembly code
clang filename.c -S -emit-llvm -o filename

# to print the optimised assembly code
clang filename.c -S -emit-llvm -o filename -O3
```

### Program 7

This program is to print the unoptimised and optimised code for a binary search code

```bash
# to print the unoptimised assembly code
clang filename.c -S -emit-llvm -o filename

# to print the optimised assembly code
clang filename.c -S -emit-llvm -o filename -O3
```

### Program 8

this is about loop unrolling

```bash
# comment out the unroll pragma to see the difference
clang filename.c -S -emit-llvm -o filename

# for unrolled optimisation
clang filename.c -S -emit-llvm -o filename -O3
```