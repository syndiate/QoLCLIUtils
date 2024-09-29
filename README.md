**QoLCLIUtils** is a set of Windows command-line utilities designed to provide convenience and improve the quality of life of using and doing work on command-line interfaces. These programs are to reduce boilerplate and repetition pertaining to running commands and the jumping through hoops required to complete certain command-line operations, such as piping input into a program that does not accept piped input (`PipeAnywhere.bat`).

# Installation
To install and use **QoLCLIUtils**, simply download the repository to any location on your computer and add that location to your computer's `PATH`.

# What do some of these programs do?
- `sudo.bat` - Mimicks Linux's `sudo` command, enabling the user to run commands as admin in any given instance of `cmd`, without having to open a new instance of `cmd` as an administrator.
- `PipeAnywhere.bat` and `PipeAny.bat` - Enables the user to pipe any given input into command-line programs that do not support piping.
- `DirApprox.bat` - Enables the user to navigate into a directory by inputting only part of its name. Particularly useful for directories that have long names.
- `DirNav.bat` - Enables the user to navigate to a directory via its positional index, without having to type out the actual name of the directory. An instance where this would come in handy and conveniently is if the user were to navigate through directories that only contain one to a few directories inside of it, especially repeatedly (think, say, navigating through the extracts of a ZIP file or application or system data which may have many layers of nesting for a target directory).
	- On this note, `DirListNum.bat` prints an alphanumerically sorted list of directories within the current calling directory _along with_ their associated positional index within that list, providing the user with an easy way to both identify and navigate through directories with this particular utility.
- `TaskRestart.bat` - Restarts a given program. On this note, running `ExplorerRestart.bat` restarts Windows Explorer, which is a significantly more convenient than going into Task Manager to restart it or typing the boilerplate command `taskkill /f /im explorer.exe & start explorer.exe`.


A comprehensive list of the functions of *each* tool can be found [here](programs.md).