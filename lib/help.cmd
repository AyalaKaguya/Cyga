@echo off

if defined Cyga_Flag_SafeMode (
   echo The help utility goes offline.
   echo Safe Mode: Isolated from the original CMD
   echo.
   echo CMD              Run CMD in an isolated environment
)

echo HELP             Display help information
echo ENABLE           Enable the Cyga Tools extension
echo BCN              Command-line environment package manager
echo,
echo CygaBox Core Components:
echo h                A simplified version of the HELP command for using Help in normal mode
echo log              Output what the pointer points to and continue
echo var              Create a variable pointer
echo pwd              Gets the current working path
echo sudo             Executed with administrator privileges, the environment is not inherited
echo who              View the currently logged in users
echo which            Query the location of the executable file
echo,
echo CygaBox Extended Components:
echo clchr            Deletes characters of the specified length in the same line output stream
echo cpstr            Converts the case of the specified string pointer
echo len              Gets the length of the pointer pointing to the content
echo mpstr            Copy the contents of the input string pointer to the specified copy and save it in the return pointer
echo mtime            Get the time difference between two periods, measured in 10 times milliseconds
echo pi               Get pi
echo procbar          Outputs a load bar that returns the character length of the load bar
echo,