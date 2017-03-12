# How to write a RoboCIn level Code!
This article will show to you how to have a code accepted by our team (Under construction)
## Table of contents
1. [Install DoxyDoxygen](#)
2. [Git](#) 
2.1 [Clone](#)
2.2 [Create a Branch](#)
2.3 [Update/Rebase Branch](#)
2.4 [Upload](#)
2.5 [Mistake](#)
3. [Code Style](#)
3.1 [Header](#)
3.2 [If not defined](#)
3.3 [Struct Model](#)
3.4 [Class Model](#)
3.5 [Method Model](#)

    
## Install [DoxyDoxygen](https://packagecontrol.io/packages/DoxyDoxygen)
First, we need to install DoxyDoxygen for [Sublime Text 3.0](https://www.sublimetext.com/3)
After download Sublime Text, open it and press **Ctrl Shift P** and select

    Package Control Install Package
On the next windows write the follow
    
    DoxyDoxygen 
After that, just select the part of code and press **Alt Q**
## Git
This section will help you to start use the Git
### Clone
```sh
    git clone git@git.cin.ufpe.br:gmb/robocin-vssl.git
```
### Create a Branch
After you assing a task in trello you should create a new branch
##### git checkout -b (**Team**)_(**Number of Task**)_(**Info**)_(**login/name**)
###### exemple:
```sh
    git checkout -b stg_34_ballGauss_renato
    git checkout -b vision_27_setTrackAlgorithm_chcp
```
### Update/Rebase Branch
###### Remember that after you create a branch, someone may update the master branch, to avoid conflicts, you need to update your local branch 
```sh
    git fetch
    git rebase origin/master
```
### Upload
```sh
    git add (modify files) 
    git commit -m " a small text about the modify files" 
    git push origin (Team)_(Number of Task)_(Info)_(login/name)
```
```c++
# git add --all is forbidden
# Remember to move your trelo card to "To integrate" 
```
### Mistake 
##### It is ok to make a mistake, but you need to correct it!
```sh
    git commit --amend
    git push origin (Team)_(Number of Task)_(Info)_(login/name) -f
```

## Code Style
### Header
##### First at All every header file need to have our default message
```c++
	/**
	 * mainpage Vision class made by the RoboCIn for the project IEEE - VSSL
	 * @author RoboCIn
	 */
```

##### Just after that you need to write a brief description of the **Class** and its **Steps** 
```c++
	/**
	 * This module was designed to ...
	 * This module is composed by the following steps:
	 * 1. **Step One Name:** Aims to ...
	 * 2. **Step Two Name:** improve ...
	 */
```
### If not defined
##### To avoid include errors, every class should have **ifndef**
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

### Variable
###### If your class need a class Variable, in .h file, we high encorage to create with a underscore
```c++
    cv::Mat _frame;
```
    


