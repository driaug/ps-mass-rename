# Powershell Mass Rename

This script has been made by @Drieaugu and @Victonator (2019-2020 1ITF1) for the Windows System Administration course. This script makes it easy to rename large batches of files in one go.

# Usage

## Get-Help

Before using this script, make sure you understand its functionality . You can find a: description, list of parameters and examples via the built-in command `Get-Help .\rename.ps1` or [join the support server](https://discord.gg/nwpnt8B).

## -path

This script can change the name of files in the current directory or a specified directory. By default it will use the current directory, specify a custom one with the `-path` flag.

**Command**

```powershell
.\rename.ps1 -path C:\rename\this\folder
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

## -extension

If you wish to only rename files of a certain type you can specify them with the `-extension` flag. Default value is "all"

**Command**

```powershell
.\rename.ps1 -extension ".png"
```

**Result**

```
directory
| rename0.png
| rename1.png
| dsc_001.jpg //Not affected
```

## -count

With this flag you can alter the first number in the count. This parameter expects an int32 value.

**Command**

```powershell
.\rename.ps1 -count 100
```

**Result**

```
directory
| rename100.png
| rename101.png
| rename102.png
```

## -verbose [toggle]

Adding the `-verbose` flag will output every change that occurs. By default this flag is not toggled.

**Command**

```powershell
.\rename.ps1 -scheme "holidayPictures" -verbose
```

**Ouput**

```
C:\this\folder\dsc_002.jpg => C:\this\folder\holidayPictures0.jpg
C:\this\folder\dsc_014.jpg => C:\this\folder\holidayPictures1.jpg
```

## -force [toggle]

Adding the `-force` flag will make the script run without the user confirming the settings.

**Command**

```powershell
.\rename.ps1 -force
```
