# How to write a RoboCIn level Code!
This article will show to you how to have a code accepted by our team (Under construction)
## Table of contents
1. [Install DoxyDoxygen](#)
2. [Code Style](#)
    2.1 [Header](#)
    2.2 [If not defined](#)
    2.3 [Struct Model](#)
    2.4 [Class Model](#)
    2.5 [Method Model](#)
    
## Install [DoxyDoxygen](https://packagecontrol.io/packages/DoxyDoxygen)
First, we need to install DoxyDoxygen for [Sublime Text 3.0](https://www.sublimetext.com/3)
After download Sublime Text, open it and press **Ctrl Shift P** and select

    Package Control Install Package
On the next windows write the follow
    
    DoxyDoxygen 
After that, just select the part of code and press **Alt Q**

## Code Style
### Header
First at All every header file need to have our default message
```c++
/**
 * mainpage Vision class made by the RoboCIn for the project IEEE - VSSL
 * @author RoboCIn
```
Just after that you need to write a brief description of the **Class** and its **Steps** 
```c++
 * This module was designed to ...
 * This module is composed by the following steps:
 * 1. **Step One Name:** Aims to ...
 * 2. **Step Two Name:** improve ...
 */
 ```
### If not defined
To avoid include errors, every class should have **ifndef**
```c++
#ifndef CLASSNAME_H
#define CLASSNAME_H

#include <Entity/Entity.h>
...
#endif
```

### Struct Model
```c++
/**
 * Description 
 */
typedef struct Name {
	int var;
	uchar uvar;
} Name;
```
### Class Model
```c++
/**
 * @brief      Class for ...
 * This is the Vision module of the RoboCIn VSSL Software. It is responsible to ...
 */
class Name {
	/**
	 * @brief   Construtor
	 */
	Name();
}
```
### Method Model
```c++
	/**
     * Method that ...
     * @param[in]  entities Entity
     * @param[in]  var  Description
     * @return The number of ...
     */
	int foo(Entity entities[], int var);
```

    


