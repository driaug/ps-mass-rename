# Powershell Mass Rename

This script has been made by @Drieaugu and @Victonat0r (2019-2020 1ITF1) for the Windows System Administration course. This script makes it easy to rename large batches of files in one go.

# Usage

## -path

This script can change the name of files in the current directory or a specified directory. By default it will use the current directory, specify a custom one with the `-path` flag.

**Command**

```powershell
.\rename.ps1 -path C:\rename\in\this\folder
```

**Result**

```
folder
| rename0.txt
| rename1.jpg
| rename2.pdf
```

## -scheme

By providing the `-scheme` flag you are able to choose the scheme that will be used to rename the files. In the current version you are only able to provide the name in front of the counter but later versions will include more advanced schemes.

**Command**

```powershell
.\rename.ps1 -scheme "holidayPictures"
```

**Result**

```
directory
| holidayPictures0.jpg
| holidayPictures1.jpg
| holidayPictures2.jpg
```
