---
title: Introduction to C# (For DSA)
author: SanfyIn
date: 2022-08-01 00:34:00 +0800
categories: [Courses, CSharp]
tags: [C#]
---

## Introduction

C# is an Object Oriented Programming language and it has many similarities to Java, C++ and VB. In fact, C#
combines the power and efficiency of C++, the simple and clean object oriented design of Java and the language simplification of Visual Basic.

### Writing Your First Hello World Program in C#

We can use any Text Editor for writting a C# program. We will use Visual Studio Code for this course.

Open Visual Studio Code. Create a new file and name it as Program.cs. Write below Code and save the file.


```cs
class Program
{
    public static void Main(string[] args)
    {
        System.Console.WriteLine("Hello World!");
    }
}
```


To compile this file, open terminal from VS Code menu. Alternatively, open command prompt in Windows or Terminal in Mac. Now, run below command:

```console
csc Program.cs
```