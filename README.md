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

### Lab: Polarity Checker

Complete this work in [polarity_checker/program.S](polarity_checker/program.S)

After having mined many tons of rocks, we noticed that they have various _polarities_ (that is some are negatively charged and others are positive). Both kinds of rocks are useful, be we need to separate them. The point of this program is to:

* print the number of positive values accompanied by the _highest positive_ value
* print the number of negative values accompanied by the _highest negative_ value

### Assignment "Hacks"

See the `Suggestion` below to challenge yourself to implement a Hack. As always, you are allowed to develop
your own Hack to satisfy this stretch goal. Place the code for the Hack inline with the code in the corresponding
file.

In order to recieve credit for the Hack, you must fill out the [hack.md](docs/hack.md) file located in the
`docs` folder.

#### `polarity_checker`

It seems like there are a lot of instructions in `polarity_checker`. Can "bum" the program in _fewer_ lines? 

##### A brief history of "bumming"

From the ubiquitous [jargon file](http://www.jargon.net/jargonfile/b/bum.html):

> bum 1. /vt./ To make highly efficient, either in time or space, often at the expense of clarity. "I managed to bum three more instructions out of that code." "I spent half the night bumming the interrupt code." In 1996, this term and the practice it describes are semi-obsolete. In elder days, John McCarthy (inventor of LISP) used to compare some efficiency-obsessed hackers among his students to "ski bums"; thus, optimization became "program bumming", and eventually just "bumming". 2. To squeeze out excess; to remove something in order to improve whatever it was removed from (without changing function; this distinguishes the process from a featurectomy). 3. /n./ A small change to an algorithm, program, or hardware device to make it more efficient. "This hardware bum makes the jump instruction faster." Usage: now uncommon, largely superseded by /v./ tune (and /n./ tweak, hack), though none of these exactly capture sense.

The tradition of "bumming" code is an old and well-loved test of a coder's ability to not only demonstrate cleverness, but to be _the best_. Unofficial competitions used to crown programs that were the most "bummed" as the canonical versions, even if just saving a few bytes. Good code bums were celebrated figures in the small communities rising up around computers.

#### `processor`

Having a processor that can do arrays seems pretty neat. But, how far can we push this thing? Let's find out how it changes our approach.

Replace the `arr` entry in the `.data` section with the following line:

```asm
.arr:   .word   710206984, 2264095319, 2199662663, 360294422
```

This change _seems_ small, but it means a great deal in terms of how we explore our saved memory. Can you make the `processor` use these numbers? The first thing you need to figure out about them: what makes them different than the one we started with (the `.hword` ones).

### Changes to files in `.vscode`

Based on your system setup (refer to your `hello-blinky` assignment), you will need switch out the `.vscode` folder in each exercise with the _last working copy_.

See our [wiki's entry  on "Configuring Assignments"](https://github.com/allegheny-college-cmpsc-200-fall-2023/course-materials/wiki/03-Configuring-Assignments)
for more inforamtion.
