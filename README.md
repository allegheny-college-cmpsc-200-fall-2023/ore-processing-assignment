# CMPSC 200: Ore Processing

| Date              |          |
|:------------------|:---------|
| 26 September 2023 | Assigned  |
| 6 October 2023 | Due, end of lab       |
| Status           | [![GatorGrader](../../actions/workflows/main.yml/badge.svg)](../../actions/workflows/main.yml) |


## Learning objectives

* calculate binary representations of numeric values in a digital system
* explain the implications of binary value sizes and their impact on program memory requirements
* demonstrate memory management methods for digital arithmetic including 8-, 16-, and 32-bit numbers and beyond
* develop assembly-language programs which evaluate register values to implement program logic

## Introduction

During the previous week, we explored some of the basic instructions present in the ARMv6 Assembly Instruction Set Architecture (ISA), and learned about the relationship between processor registers and memory.

This week, we're going to learn about program logic, register values and sizes, and other features of processor architecture which have consequences (_and_ opportunities) for program design.

### Your mission, and you choose to accept it

#### Math test

This activity will have you finish the binary equivalents of several numbers. They are located
in the `math_test` folder of this repository. There, you will find a markdown file with a markdown table. Finish each of the values in the table.

#### Liftoff

We've been studying most of our algorithms in an Earth-based context. The CARDIAC, a paper-based training simulation, couldn't _really_ launch a rocket to space. However, we're in the _digital world_ now. (Still can't really launch rockets, but...maybe we buy into the fiction more readily now that we're programming?)

* print a countdown from `10` to `1`
* use the `countdown` and `lift` labels to define relevant subroutines
* integrate the `CMP` and new `Bxx` instructions
* on encountering a `0` value, print `LIFTOFF!`

#### Processor

Similar to our CARDIAC array adder, we're going to develop a similar style adding program to consume an array of numbers and add them, reporting the result. There is, however, an important limitation that we might discover...

This program will:

* add an array of numbers
* store the result in a register
* print the result from a register
* use the `print` and `loop` labels to designate relevant subroutines
* integrate the `CMP` and new `Bxx` instructions

### Changes to files in `.vscode`

Based on your system setup (refer to your `hello-blinky` assignment), you will need switch out the `.vscode` folder in each exercise with the _last working copy_.

See our [wiki's entry  on "Configuring Assignments"](https://github.com/allegheny-college-cmpsc-200-fall-2023/course-materials/wiki/03-Configuring-Assignments)
for more inforamtion.
