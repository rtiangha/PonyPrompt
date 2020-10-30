# PonyPrompt
**PonyPrompt** is a simple wrapper script for [`ponysay`](https://github.com/erkin/ponysay) and `fortune` that can be used to display any message contained in a single, specific fortune data file a terminal window.

## What is it for?
The main intent for PonyPrompt is to display writing or creative prompts for writers taking part in self-challenges such as [NaNoWriMo](https://nanowrimo.org), but can also be used for any purpose where prompts or messages need to be displayed onto the screen on demand.

## How it Works
By default, PonyPrompt displays quotes from a combined set of **Brian Eno's** [Oblique Strategies](https://en.wikipedia.org/wiki/Oblique_Strategies) cards (specifically, Editions 1-4 with duplicates removed, which is [available for viewing online](http://www.rtqe.net/ObliqueStrategies/Edition1-3.html)) in fortune data file format, but CowPrompt can be configured to use any specific fortune data file.

Display options for `ponyprompt` can be modified using the standard `ponysay` command line arguments by editing that script directly.

## Dependencies
`ponyprompt` can work in any environment that has [ponysay](https://github.com/erkin/ponysay) and [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) (or [fortune-mod](https://github.com/shlomif/fortune-mod)) available and installed on the system.

It also requires the `cowprompt-data` package to be installed alongside from the [CowPrompt](https://github.com/rtiangha/CowPrompt) project.

## How to Install
PonyPrompt can be installed via binary package (.deb and .rpm provided via the [Releases](https://github.com/rtiangha/PonyPrompt/Releases) section), or by copying the various files in the `unix` directory to their respective places onto the file system.

1. First, ensure that the software requirements (`ponysay` and `fortune`) are installed first. To install `ponysay`, refer to the [ponysay project page](https://github.com/erkin/ponysay) where source installation instructions and binary installers may be available.
 
2. Install the `fortune` package. Some examples on how to do so on various distributions are provided below.

### Debian/Ubuntu
`sudo apt-get install fortune-mod`

### Fedora/RHEL/CentOS
`sudo dnf install fortune-mod`

### openSUSE
`sudo zypper install fortune`


3. Grab the `cowprompt-data` package from the [CowPrompt project page](https://github.com/rtiangha/CowPrompt/releases).

4. Next, install the **PonyPrompt** and **cowprompt-data** packages.


### DEB-based Distributions (ex. Debian/Ubuntu, etc.)
`sudo dpkg -i ponyprompt_<VERSION>.deb cowprompt-data_<VERSION>.deb`

If it complains that you're missing dependencies because you forgot to install `fortune-mod` first, simply run:

`sudo apt-get install -f`

and it will automatically fetch any missing dependencies.

### RPM-based Distributions (ex. Fedora/RHEL/CentOS/openSUSE, etc.)
`sudo rpm -ivh ponyprompt-<VERSION>.noarch.rpm cowprompt-data-<VERSION>.noarch.rpm`

### Other Distributions
Ensure that `ponysay` and `fortune` are installed in your system (either through your distribution's package manager or by manually compiling it). Then, you can use the included `Makefile` to install/uninstall PonyPrompt, and the `Makefile` from the [CowPrompt](https://github.com/rtiangha/CowPrompt) project to install `cowprompt-data`.


1. Edit the various Configuration Options in the `Makefile` to point to the proper paths in your file system.

2. To install:
- Install ponyprompt:        `make install` (using the PonyPrompt `Makefile`)
- Install cowprompt-data:    `make install-cowprompt-data` (using the [CowPrompt project](https://github.com/rtiangha/CowPrompt) `Makefile`)

3. To uninstall:
- Unistall ponyprompt:        `make uninstall` (using the PonyPrompt `Makefile`)
- Uninstall cowprompt-data:    `make uninstall-cowprompt-data` (using the [CowPrompt project](https://github.com/rtiangha/CowPrompt)) `Makefile`)


Alternatively, copy the files in the `unix` directory of the PonyPrompt project page to their equivalent places in your distribution's file system.

## How to Configure
Options to change how/what PonyPrompt displays are available via editing  the `/usr/bin/ponyprompt` wrapper script. Instructions and examples are included within the script and available display options can be found by reading the `ponysay(6)` man page.

## How to Use
Type `ponyprompt` in a terminal window. You can also [alias](https://www.computerworld.com/article/2598087/how-to-use-aliases-in-linux-shell-commands.html) the command to something shorter to make access easier.

## Included Prompts
**NOTE**: PonyPrompt requires the `cowprompt-data` package to be installed as well.

By default, PonyPrompt is configured by default to use the `Oblique` data set, which includes all of the strategies included in Editions 1 through 4 of Oblique Strategies, minus the duplicates. Included in the `cowprompt-data` package are the following data files:

### Oblique Strategies
- `Oblique`:  All of the Oblique Strategies from Edition 1-4
- `Oblique-ed1`:  Oblique Strategies, Edition 1
- `Oblique-ed2`:  Oblique Strategies, Edition 2
- `Oblique-ed3`:  Oblique Strategies, Edition 3
- `Oblique-ed4`:  Oblique Strategies, Edtion 4

### [Other Strategies](http://www.rtqe.net/ObliqueStrategies/EditionOther.html)
- `Acute`:  [The Acute Strategies](http://www.rtqe.net/ObliqueStrategies/Acute.html) (Strategies submitted by Oblique Strategies fans)
- `Diary`:  Strategies included in Brian Eno's diary
- `Signal`: Strategies published in *Signal: A whole earth catalog - Communication Tools for the Information Age (ed. Kevin Kelly, fwd by Stewart Brand, 1988, Harmony Books, P. 17)*

### Everything
- `Complete`:  A data file that combines all of the data sets above. 

To switch data files, edit the `/usr/bin/cowprompt` file and change the `DECKNAME` variable to use the name of the deck that you want. For example:

    DECKNAME=Complete

## How to Create New Prompts
PonyPrompt can pull from any message contained in a valid fortune data file installed on the system. There are many sources to get fortune data files. Your operating system distribution may have additional ones that you can install outside of the default set, or you can find many on the internet that other people have made as well.

Creating your own is easy too. For example, [here is a tutorial](http://bradthemad.org/tech/notes/fortune_makefile.php).

Once you've obtained or created your own custom fortune text and `.dat` files, make sure to copy them to where the other fortune data files live on your system (usually in `/usr/share/games/fortunes` but your distribution may vary) and then edit the `/usr/bin/ponyprompt` wrapper script to use it instead of the default `Oblique` file (for example, replace `Oblique` with `Oblique-ed3` to specifically pull from Oblique Strategies, 3rd Edition).

## CREDITS
Special thanks to the [ponysay project](https://github.com/erkin/ponysay) for all their hard work, to Tony Monroe for creating the original [cowsay](https://github.com/tnalpgge/rank-amateur-cowsay) terminal program, and to [The Oblique Strategies](http://www.rtqe.net/ObliqueStrategies/) website for making the text of Editions 1-4 and more available for [online viewing](http://www.rtqe.net/ObliqueStrategies/Edition1-3.html).

## LICENSE

```
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/> 
```

