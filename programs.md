The following is a comprehensive list of the functions of each and every file and tool in this repository:

- `ckdir.bat` - Creates a given directory and immediately navigates into it. A particularly convenient command especially if fairly high amounts of directory nesting is to be performed.
- `clear.bat` - Alias for the `cls` command. Geared towards those who use Unix shells frequently.
- `DirApprox.bat` - Enables the user to navigate into a directory by inputting only part of its name. Particularly useful for directories that have long names.
- `DirFind.bat` - Prints the path of the directory that is associated with a given positional index (which is derived from and parsed to be its positional index within the alphanumerically sorted list of directories in the calling directory.)
- `DirListNum.bat` - Prints an alphanumerically sorted list of directories within the current calling directory _along with_ their associated positional index within that list, providing the user with an easy way to both identify and navigate through directories with this particular utility.
- `DirNav.bat` - Enables the user to navigate to a directory via its positional index, without having to type out the actual name of the directory. An instance where this would come in handy and conveniently is if the user were to navigate through directories that only contain one to a few directories inside of it, especially repeatedly. (Think, say, navigating through the extracts of a ZIP file, application or system data which may have many layers of nesting for a target directory, or in an Android filesystem). 
- `ExplorerRestart.bat` - Quick, convenient, and easy to access command to restart `explorer.exe`.
- `hash.bat` - Shorthand alias for the comparatively verbose `Get-FileHash` PowerShell command, which obtains the SHA256 (unless otherwise specified) hash of a given file.
- `PipeAny.bat` - Shorthand alias for `PipeAnywhere.bat`.
- `PipeAnywhere.bat` - Enables the user to pipe any given input into command-line programs that do not support piping.
- `sudo.bat` - Mimicks Linux's `sudo` command, enabling the user to run commands as admin in any given instance of `cmd`, without having to open a new instance of `cmd` as an administrator.
- `TaskRestart.bat` - Restarts a given program.
- `utilslist.bat` - Prints a list of all QoLCLIUtils.
- `uucd.bat` - Navigates to the QoLCLIUtils installation directory.