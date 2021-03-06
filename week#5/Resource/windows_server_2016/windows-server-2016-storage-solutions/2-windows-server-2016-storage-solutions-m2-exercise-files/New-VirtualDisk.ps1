<#

Author: Mike Pfeiffer

Sample one-liner to create a virtual disk

Disclaimers

!!!!!!!!!!
This script is provided as an example and is not directly intended to be run as-is.
!!!!!!!!!!

This example code is provided without copyright and AS IS.  It is free for you to use and modify.
Note: These demos should not be run as a script. These are the commands that I use in the 
demonstrations and would need to be modified for your environment.

#>

New-VHD -Path C:\mydata.vhdx -Dynamic -SizeBytes 10Gb | 
    Mount-VHD -Passthru |
        Initialize-Disk -Passthru |
            New-Partition -AssignDriveLetter -UseMaximumSize |
                Format-Volume -FileSystem NTFS 
