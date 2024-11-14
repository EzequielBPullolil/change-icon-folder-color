# Change Folder Color
> script to change the folder color of the current full icon theme on linux

> [!IMPORTANT]
> This script modify the actual theme, if you have the same theme installed in the directory `~/.icons` and `/usr/share/icons` this scripts prioritize the installed in `~/.icons`


> [!CAUTION]
> If the theme is installed only in the directory `/usr/share/icons` the script will request root privileges, do this at your own risk


## Requeriments
> [!WARNING]
> To allow changing folder colors in the current icon theme, it is essential that the specified folder color exists in the theme and follows the format `folder-<color>-<type>.svg`. If the icon of the requested color does not exist or does not comply with the format, the script will not work.

The script includes a built-in check to prevent it from running without the theme complying with these requirements, providing a clear warning in case the name format is incorrect or the requested color is not available.


## Install

To install the script you must clone the repository and make the file `change_folder_color.sh` executable using chmod +x, you can also copy and paste this command and do it if this is difficult for you.


*CURL*
```
curl -sSL https://raw.githubusercontent.com/EzequielBPullolil/change-icon-folder-color/main/setup.sh | bash
```

*WGET*
```
wget -qO- https://raw.githubusercontent.com/EzequielBPullolil/change-icon-folder-color/main/setup.sh | bash
```

## Use

To use change-folder-color you must call it in the terminal once installed with the color you want

> [!IMPORTANT]
>the folder must have the color in the format `folder-<color>-<type>` or the script will not start.

```bash
change_folder_color <color>
```


**example**
```bash
$ change_folder_color black
======
Are you sure you want to change the folder color theme of 'Gruvbox-Plus-Dark' to 'black'? [Y/n] Y
======
The folder color of the theme 'Gruvbox-Plus-Dark' installed in the directory `/usr/share/icons/` was changed to *black*
======
```