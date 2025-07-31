# Antivirus Effectiveness in Detecting DOS Viruses

By Khralkatorrix, 2025/07/xx

**TODO:Insert intro here**

## Testing Methodology

**Warning: The virus samples archive contain live virus, do not execute any files inside**

Testing against 16,859 DOS virus samples:

- `Virus.DOS.tar.7z` from https://www.reddit.com/r/DOS/comments/8tpjbl/virus_17000_msdos_virus_samples/
I have removed VBS scripts and convert debug scripts to binary file.

All anti-virus have up to date virus definition and are scanned with these options (if available)

- Cloud-based protection
- Heuristic (maximum level)
- Scan packed files
- Scan inside archive
- Automatic clean/deletion of infected, suspicious and all detected malware files

DOS anti-virus samples are rename to 8 characters long numbers `.COM` file using `prepare.sh` script
before scanning to work around DOS 8.3 file name and limitation of some anti-virus software.

**Testing Environment:**

- Modern Windows anti-virus run on Windows 10 Pro with latest update.
- Command Line Windows anti-virus run on Arch Linux with latest update using [Wine](https://www.winehq.org/).
- Linux anti-virus run on Arch Linux with latest update.
- DOS anti-virus run on Arch Linux with latest update using [DOSBox-X](github.com/joncampbell123/dosbox-x).

## Result

|                       Software                        | Signature  | Detected | Rate  |
|:------------------------------------------------------|:----------:|---------:|:-----:|
| 360 Total Security                                    | 2025/07/08 | 16478    | 97.74 |
| Avast Free Antivirus                                  | 2025/07/07 | 4894     | 29.03 |
| AVG Free Antivirus 2016                               | 2016/10/13 | 15284    | 90.66 |
| AVG Free Antivirus                                    | 2025/07/07 | 4894     | 29.03 |
| Avira Free Security                                   | 2025/07/07 | 0        | 0     |
| Avira Command Line Scanner ScanCL 1.9.152.0           | 2025/07/17 | 9551     | 56.65 |
| Bitdefender Antivirus Free                            | 2025/07/07 | 15191    | 90.11 |
| Central Point Anti-Virus 2.60                         | 1996/09/01 | crash    |       |
| ClamAV 1.4.2                                          | 2025/07/03 | 14443    | 85.67 |
| Dr.Web CureIt!                                        | 2025/07/07 | 13782    | 81.75 |
| Dr.Web Scanner for DOS/386 4.44.0                     | 2008/01/21 | 14605    | 86.63 |
| Dr.Web Scanner for Windows 4.44.5                     | 2009/08/09 | 14681    | 87.08 |
| Dr.Web Scanner for Windows 6.00 (vdb v7)              | 2025/07/03 | 13778    | 81.72 |
| Dr.Web Scanner for Windows 6.00 (vdb v11)             | 2025/07/03 | 13787    | 81.77 |
| Dr.Web Scanner for Windows 6.00 (vdb v444 + v11)      | v444 2009/08/09 + v11 2025/07/03 | 13800 | 81.86 |
| Emsisoft Commandline Scanner 2025.1.0.12641           | 2025/01/15 | 15247    | 90.44 |
| eScan Internet Security Suite 22                      | 2025/07/08 | 15258    | 90.50 |
| F-PROT Antivirus for DOS 3.16f                        | 2009/01/08 | 16169    | 95.91 |
| F-PROT Antivirus for UNIX 4.6.8                       | 2009/01/08 | 16179    | 95.97 |
| F-PROT Antivirus for UNIX 6.2.3                       | 2020/08/29 | 16525    | 98.02 |
| F-PROT Antivirus for Windows 6.7.5.5955 (Command Line)| 2020/08/29 | 16525    | 98.02 |
| IBM Antivirus for DOS 3.0.1                           | 2000/12/06 | 12079    | 71.65 |
| Ikarus T3 Commandline Scanner                         | 2025/07/07 | 11777    | 69.86 |
| Kaspersky Anti-virus for DOS32 3.0 build 135          | 2002/09/08 | 16166    | 95.89 |
| Kaspersky Free Antivirus                              | 2025/07/08 | 14089    | 83.57 |
| Kaspersky Virus Removal Tool for Linux                | 29.06.2025 07:56 | 12088 | 71.70 |
| McAfee VirusScan for DOS/PM 4.40.0                    | v4980 2007/03/08 | 16609 | 98.52 |
| McAfee VirusScan for Linux 4.40.0                     | v4980 2007/03/08 | 16601 | 98.47 |
| McAfee VirusScan for Linux 4.40.0 (Engine 5.1.00)     | v5334 2008/07/08 | 16601 | 98.47 |
| McAfee VirusScan for Win32 4.40.0                     | v4980 2007/03/08 | 16605 | 98.49 |
| McAfee VirusScan for Win32 5.10.0                     | v4980 2007/03/08 | 16601 | 98.47 |
| McAfee VirusScan for Win32 5.40.0                     | v5334 2008/07/08 | 16601 | 98.47 |
| McAfee VirusScan Command Line 6.1.4.305               | v11484 2025/07/05 | 16558 | 98.21 |
| Microsoft Anti-Virus (MSAV)                           | 1994/06/01 | 1445     | 8.57  |
| Microsoft Security Essentials                         | 2025/07/17 | 15527    | 92.10 |
| Microsoft Windows Defender                            | 2025/07/02 | 15543    | 92.19 |
| NOD32 for DOS                                         | 2009/05/14 | 15700    | 93.13 |
| Norton AntiVirus Command-Line Scanner                 | 1999/06/07 | 14052    | 83.35 |
| RMS - ROSE SWE's Malware Scanner 3.14.1               | 2025/05/04 | 15612    | 92.60 |
| Symantec Endpoint Protection 14.3 (Norton Antivirus)  | 2025/07/08 | 12910    | 76.58 |
| Thunderbyte Antivirus 8.11                            | 1999/11/18 | 14361    | 85.18 |
| Trellix VirusScan Command Line 7.0.4                  | V11484 2025/07/05 | 16558 | 98.21 |
| Trend Micro Antivirus+                                | 2025/07/08 | 15701    | 93.13 |
| Trend Micro PCSCAN 7.50                               | 2006/08/10 | 15866    | 94.11 |
| Trend Micro VSCANTM 3.00-1018                         | 20.301.00 (2025.07.03) | 15694 | 93.09 |
| Vexira Antivirus Scanner 2006                         | 2006/12/12 | 14479    | 85.88 |
| Vba32 AntiVirus (Console scanner) for Linux 5.3.2     | 2025/07/21 | 7588     | 45.01 |

Note:
- Some modern anti-virus suck at detecting DOS viruses, such as AVG and Vba32.
Avira Free Security is the worst offender here with 0 detection! WTF!
While the old Avira Command Line Scanner is way better than new version with 56.65% DOS viruses detection rate.
- Some modern anti-virus UI will slowdown so much it freeze with 1,000+ scan result, such as
Avast Free Antivirus, AVG Free AntiVirus and Microsoft Windows Defender.
- Some virus can't be removed by some anti-virus due to the anti-virus have not program for
delete entire container/archive if it was infected such as Norton AntiVirus Command-Line Scanner and McAfee/Trellix.
- Some DOS anti-virus scan ended prematurely or crash, possibly due to a bug in scanner triggered by some virus's
anti-antivirus code.
- See below for more detail.

### 360 Total Security

Anti-virus from China.

Can be download from https://www.360totalsecurity.com/en/

Command: n/a, Using explorer scan.

Detected: 16478
Suspicious: n/a

```
Version: 11.10.0.1208
Signatures: 2025/07/08
```

### Avast Free Antivirus

This anti-virus is only effective in detecting modern malware.

The result UI is freeze/slowdown with all the detected viruses

Command: n/a, Using explorer scan.

Detected: 4894
Suspicious: n/a

```
Program version:                25.6.10221a (build 25.6.10221.939)
Virus definitions version:      250707-0
Number of definitions:          17,947,359
UI version:                     1.0.841

Signatures: 2025/07/07
```

### AVG Free Antivirus 2016

Old version of AVG, lastest version that use AVG's anti-virus engine.

Can be download from https://archive.org/details/avg-antivirus-2016

Command: n/a, Using explorer scan.

Detected: 15284
Suspicious: n/a

```
Version: 16.121.7859
Signatures: 2016/10/13
```

### AVG Free AntiVirus

Use same engine as Avast.

This anti-virus is only effective in detecting modern malware.

The result UI is freeze/slowdown with all the detected viruses

Command: n/a, Using explorer scan.

Detected: 4894
Suspicious: n/a

```
Signatures: 2025/07/07
```

### Avira Free Security

Formerly Avira Antivirus.

This anti-virus is only effective in detecting modern malware.

IDK WTF happen to this, even setting scan all files didn't detect anything.

Command: n/a, Using explorer scan.

Detected: 0
Suspicious: 0

```
Version: 1.1.109.1990
Antivirus SDK Version: 1.0.2560.5916
Antivirus VDF Version: 8.20.57.204

Signatures: 2025/07/07
```

### Avira Command Line Scanner ScanCL 1.9.152.0

This anti-virus is only effective in detecting modern malware.

Using renamed samples `.COM` files.

ScanCL version 1.9.161.2 can be found here:

- [Win32](http://professional.avira-update.com/package/scancl/win32/en/scancl-win32.zip)
- [Linux32](http://professional.avira-update.com/package/scancl/linux_glibc22/en/scancl-linux_glibc22.tar.gz)

Avira Fusebundle Generator:

- [Win32](https://install.avira-update.com/package/fusebundlegen/win32/en/avira_fusebundlegen-win32-en.zip)
- [Linux32](https://install.avira-update.com/package/fusebundlegen/linux_glibc22/en/avira_fusebundlegen-linux_glibc22-en.zip)

Instructions to install https://www.portablefreeware.com/forums/viewtopic.php?t=26192

Command: `./scancl --allfiles --heurlevel=3 --scaninarchive --archivemaxsize=0 --archivemaxrecursion=0 --log=report.log --colors --defaultaction=delete --suspiciousaction=delete ~/DOS/F/Virus/`

Detected: 9551
Suspicious: 0

```
Avira / Linux Version 1.9.152.0
Copyright (c) 2010 by Avira GmbH
All rights reserved.

operating system:   Linux
architecture:       ia32
system date:        Jul 17 2025
scancl Version:     1.9.152.0 
core Version:       1.9.2.0 
VDF Version:        8.20.58.134 

product:            scancl
key file:           /home/khral/programs/scancl-linux32/free-hbedv.key
registered user:    Free
serial number:      0000149996
key expires:        Dec 31 2999

engine set:         8.3.70.104
avbb:               8.1.5.4
avcore:             8.3.25.22
avcrypto:           8.2.1.12
avdroid:            8.5.0.10
avelf:              8.1.1.28
avemu:              8.1.3.18
avexp:              8.4.7.18
avgen:              8.1.9.34
avhelp:             8.3.11.2
avheur:             8.1.9.954
avlibinf:           8.2.1.22
avml:               8.0.3.6
avmobile:           8.2.0.18
avoffice:           8.5.8.52
avpack:             8.6.3.0
avrdl:              8.2.4.58
avsbx:              8.2.22.38
avscn:              8.3.12.4
avscript:           8.3.7.604
avvdf:              8.3.3.20
```

### Bitdefender Antivirus Free

Can be download from https://www.bitdefender.com/en-us/consumer/free-antivirus

Command: n/a, Using explorer scan.

Detected: 15191
Suspicious: n/a

```
Build: 27.0.53.265
Signatures: 2025/07/07
```

### Central Point Anti-Virus 2.60

Can be download from http://old-dos.ru/index.php?page=files&mode=files&do=show&id=3498

Crash on 488 files scanned when run in DOSBox, possibly due to a bug in scanner
triggered by some virus using malformed executable.

Command: `cpav f:\virus`

Detected: crash
Suspicious: n/a

```
Signatures: 1996/09/01
```

### ClamAV 1.4.2

Using [ClamAV-GUI](https://github.com/wusel1007/clamav-gui) frontend.

Command: `clamscan  -r --remove=yes --database=/var/lib/clamav --tempdir=/tmp --log=/home/khral/.clamav-gui/logs/report-scan.log /home/khral/DOS/F/Virus.DOS`

Detected: 14443
Suspicious: n/a

```
ClamAV 1.4.2/27685/Mon Jun 30 15:36:44 2025
Signatures: 2025/07/03
```

### Dr.Web CureIt!

Can be download from https://free.drweb.com/cureit/

Command: n/a

Detected: 13782
Suspicious: n/a

```
Engine: 7.0.69.06040
Virus database: v12 2025/07/07
```

### Dr.Web Scanner for DOS/386 4.44.0

Can be download from http://old-dos.ru/index.php?page=files&mode=files&do=show&id=343

Command: `drweb386 /nm /al /ar /ha /sd /cud /mwd /icd /rpreport.log f:\virus`

Detected: 14605
Suspicious: 1

```
Dr.Web (R) Scanner for DOS/386 v4.44.0 (4.44.0.0711200)
Copyright (c) Igor Daniloff, 1992-2007
Report dated: 2025-07-03, 00:33:24
Command line: C:\ANTIVIR\DRWEB44\DRWEB386.EXE /nm /al /ar /ha /sd /cud /mwd /icd /rpreport.log f:\virus

Engine version: 4.44.0.09170
Engine API version: 2.02
Signatures: 2008/01/21
```

### Dr.Web Scanner for Windows 4.44.5

Can be download from http://old-dos.ru/index.php?page=files&mode=files&do=show&id=7324

Command: n/a

Detected: 14681
Suspicious: n/a

```
Dr.Web Scanner for Windows 4.44.5
Engine: 4.44.0.09170
Scanner: 4.44.5.09260
Virus database: 2009/08/09
```

### Dr.Web Scanner for Windows 6.00 (vdb v7)

Command: n/a

Detected: 13778
Suspicious: n/a

```
Dr.Web Scanner for Windows 6.00.16.01270
Engine: 7.0.69.06040
Scanner: 6.00.16.01270
Virus database: v7 2025/07/03
```

### Dr.Web Scanner for Windows 6.00 (vdb v11)

Command: n/a

Detected: 13787
Suspicious: n/a

```
Dr.Web Scanner for Windows 6.00.16.01270
Engine: 7.0.69.06040
Scanner: 6.00.16.01270
Virus database: v11 2025/07/03
```

### Dr.Web Scanner for Windows 6.00 (vdb v444 + v11)

With vdb from v4.44.5 added, `drwebase.vdb` to `drwebase444.vdb`, `drwnasty.vdb` renamed to `drwnasty444.vdb`, `drwrisky.vdb` renamed to `drwrisky444.vdb` and `dwrtoday.vdb` renamed to `dwrtoday444.vdb`.

Seems there are some old virus entry removed on newer version of database with lower detection rate compared to v4.44.
And I have found that newer version of Dr.Web can load the vdb from older version, so...

Command: n/a

Detected: 13800
Suspicious: n/a

```
Dr.Web Scanner for Windows 6.00.16.01270
Engine: 7.0.69.06040
Scanner: 6.00.16.01270
Virus database: v4.44 2009/08/09 + v11 2025/07/03
```

### Emsisoft Commandline Scanner 2025.1.0.12641

Anti-virus from New Zealand.

This anti-virus is using Bitdefender's antimalware engine and their own custom antimalware engine.

Scan only. It only scan 17,424 samples. No way to scan all files as I known of.

Can be download from https://www.emsisoft.com/en/commandline-scanner/

Command: `wine a2cmd.exe /a /l=report.log /logclean "y:\DOS\F\Virus.DOS"`

Detected: 15247
Suspicious: n/a

```
Version 2025.1.0.12641 – Released: 2025/01/15
```

### eScan Internet Security Suite 22

Anti-virus from India.

This anti-virus is using Bitdefender's antimalware engine and their own custom antimalware engine.

Can be download from https://www.escanav.com/en/

Command: n/a, Using explorer scan.

Detected: 15258
Suspicious: n/a

```
Version: 22.0.1400.2800
Signature: 2025/07/08
```

### F-PROT Antivirus for DOS 3.16f

Can be download from https://archive.org/details/fprot-antivirus-collections

Command: `f-prot /old /ai /collect /dumb /packed /report=report.log /nofloppy /delete f:\virus`

Detected: 16169
Suspicious: 1178

```
Files: 16859
MBRs: 4
Boot sectors: 0
Objects scanned: 16940
Infected: 15336
Suspicious: 1177
Disinfected: 0
Deleted: 16167
Renamed: 0
```

```
F-PROT Antivirus for DOS 3.16f
Signatures: 2009/01/08
```

### F-PROT Antivirus for UNIX 4.6.8

Can be download from https://archive.org/details/fprot-antivirus-collections

Command: `./f-prot -old -ai -collect -dumb -packed -archive=30 -delete -report=report.log ~/DOS/F/Virus.DOS/`

Detected: 16179
Suspicious: 1174

```
Files: 16859
MBRs: 0
Boot sectors: 0
Objects scanned: 16935
Infected: 15351
Suspicious: 1174
Disinfected: 0
Deleted: 16179
Renamed: 0
```

```
F-PROT ANTIVIRUS
Program version: 4.6.8
Engine version: 3.16.16

VIRUS SIGNATURE FILES
SIGN.DEF created 8 January 2009
SIGN2.DEF created 8 January 2009
MACRO.DEF created 8 January 2009
```

### F-PROT Antivirus for UNIX 6.2.3

Can be download from https://archive.org/details/fprot-antivirus-collections

Command: `./fpscan --heurlevel=4 --scanlevel=4 --disinfect --deleteall --output=report.log ~/DOS/F/Virus.DOS/`

Detected: 16525
Suspicious: n/a

```
Files: 16859
Skipped files: 0
MBR/boot sectors checked: 0
Objects scanned: 17224
Infected objects: 16525
Infected files: 16527
Files with errors: 6589
Disinfected: 16525
```

```
F-PROT Antivirus CLS version 6.7.10.6267, 64bit (built: 2012-03-27T11-39-07)


FRISK Software International (C) Copyright 1989-2011
Engine version:   4.6.5.141
Arguments:        --version 
Virus signatures: 202008291014
                  (/home/khral/programs/f-prot/antivir.def)
```

### F-PROT Antivirus for Windows 6.7.5.5955 (Command Line)

Can be download from https://archive.org/details/fprot-antivirus-collections

Command: `wine fpscan.exe --heurlevel=4 --scanlevel=4 --disinfect --deleteall --output=report.log "..\..\DOS\F\Virus.DOS"`

Detected: 16525
Suspicious: n/a

```
Files: 16859
Skipped files: 0
MBR/boot sectors checked: 0
Objects scanned: 17224
Infected objects: 16525
Infected files: 16527
Files with errors: 6589
Disinfected: 16525
```

```
F-PROT Antivirus CLS version 6.7.5.5955, 32bit (built: 2011-10-03T19-58-16)


FRISK Software International (C) Copyright 1989-2011
Engine version:   4.6.5.141
Arguments:        --heurlevel=4 --scanlevel=4 --disinfect --deleteall --output=report.log ..\..\DOS\F\Virus.DOS
Virus signatures: 202008291014
                  (Y:\programs\f-prot6-win\antivir.def)
```

### IBM Antivirus for DOS 3.0.1

Can be download from https://archive.org/details/ibm-antivirus-desktop-edition-v3.0.1-1997-ibm-cd
Signature update from https://www.os2site.com/sw/util/antivirus/av30gg.zip

Command: `ibmavsp -nb -cerr -nlmsg -scomp -bulk -allfiles -ywipe -logreport.log f:\virus`

Detected: 12079
Suspicious: n/a

```
12147 infected objects were found.
68 infected objects were repaired.
12079 infected objects were erased.
No infected objects remain.
```

```
IBM AntiVirus Stand-Alone Program Version 3.0 (build 301.612 signature AV30GG)
Driver Levels:
virsig.lst: AV30GG   (2000/12/06), verv.vdb: AV30GG   (2000/12/06),
shsig.lst: AV30GG   (2000/12/06), dtsig.lst: AV30GG   (2000/12/06)
```

### Ikarus T3 Commandline Scanner

Anti-virus from Austria.

Can only scan for virus, does not remove or disinfect the infected files.

Can be download from https://updates.ikarus.at/updates/update.html

Command: `wine t3scan_w64.exe -l report.log "..\..\DOS\F\Virus.DOS"`

Detected: 11777
Suspicious: n/a

```
IKARUS - T3SCAN V6.03.09 (WIN64)
         Engine version: 6.04.12
         VDB: 07.07.2025 18:04:23 (Build: 108318)
         Copyright - IKARUS Security Software GmbH 2021.
         All rights reserved.
```

### Kaspersky Anti-virus for DOS32 3.0 build 135

Can be download from https://www.dosdays.co.uk/topics/antivirus_utilities.php

Command: `kavdos32 /s /m /p /b /* /e f:\virus`

Detected: 16166
Suspicious: 250

```
Kaspersky Antivirus 32 v3.0 Build 135 for DOS
Signatures: 2002/09/08
```

### Kaspersky Free Antivirus

Can be download from https://www.kaspersky.com/downloads/free-antivirus

Command: n/a, Using explorer scan.

Detected: 14089
Suspicious: n/a

```
Version: 21.21.7.384(a)
Signatures: 2025/07/08 14:58
```

### Kaspersky Virus Removal Tool for Linux

Can be download from https://www.kaspersky.com/downloads/free-virus-removal-tool

Command: n/a

Detected: 12088
Suspicious: n/a

```
Version: 20.0.12.0
Database: 29.06.2025 07:56
```

### McAfee VirusScan for DOS/PM 4.40.0

Can be download from https://archive.org/details/mcafee-virusscan-collections

Have issue in deleting some viruses, report only.

Command: `scanpm /all /analyze /unzip /sub /report report.log f:\virus`

Detected: 16609
Suspicious: n/a

```
Summary report on F:\VIRUS\*.*
File(s)
        Total files: ...........   17652
        Clean: .................    1043
        Possibly Infected: .....   16609
```

```
McAfee VirusScan for DOS/PM v4.40.0
Copyright (c) 1992-2006 McAfee, Inc. All rights reserved.
(408) 988-3832  LICENSED COPY - Sep 23 2004

Scan engine v4.4.00 for DOS/PM.
Virus data file v4980 created Mar 08 2007
Scanning for 234175 viruses, trojans and variants.
```

### McAfee VirusScan for Linux 4.40.0

Have issue in deleting some viruses.

Can be download from https://archive.org/details/mcafee-virusscan-collections

Command: `./uvscan ~/DOS/F/Virus/ --recursive --summary --analyze > report.log`

Detected: 16601
Suspicious: n/a

```
Summary report on /home/khral/DOS/F/Virus.DOS/*
File(s)
        Total files: ...........   17642
        Clean: .................    1041
        Not scanned: ...........       0
        Possibly Infected: .....   16601
        Deleted: ...............   15837
```

```
Virus Scan for Linux v4.40.0
Copyright (c) 1992-2004 Networks Associates Technology Inc. All rights reserved.
(408) 988-3832  LICENSED COPY - Sep 23 2004

Scan engine v4.4.00 for Linux.
Virus data file v4980 created Mar 08 2007
Scanning for 234175 viruses, trojans and variants.
```

### McAfee VirusScan for Linux 4.40.0 (Engine 5.1.00)

Updated engine to version 5.1.00 to be able to use dat v5xxx.

Have issue in deleting some viruses.

Can be download from https://archive.org/details/mcafee-virusscan-collections

Command: `./uvscan ~/DOS/F/Virus.DOS/ --recursive --summary --analyze --delete > report.log`

Detected: 16601
Suspicious: n/a

```
Summary report on /home/khral/DOS/F/Virus.DOS/*
File(s)
        Total files: ...........   17642
        Clean: .................    1041
        Not scanned: ...........       0
        Possibly Infected: .....   16601
        Deleted: ...............   16599
```

```
Virus Scan for Linux v4.40.0
Copyright (c) 1992-2004 Networks Associates Technology Inc. All rights reserved.
(408) 988-3832  LICENSED COPY - Sep 23 2004

Scan engine v5.1.00 for Linux.
Virus data file v5334 created Jul 08 2008
Scanning for 424202 viruses, trojans and variants.
```

### McAfee VirusScan for Win32 4.40.0

Have issue in deleting some viruses.

Can be download from https://archive.org/details/mcafee-virusscan-collections

Command: `wine scan /all /analyze /unzip /sub /report report.log /delete "..\..\DOS\F\Virus.DOS"`

Detected: 16605
Suspicious: n/a

```
Summary report on Y:\DOS\F\VIRUS.DOS\*.*
File(s)
        Total files: ...........   17646
        Clean: .................    1041
        Possibly Infected: .....   16605
        Deleted: ...............   15837
```

```
McAfee VirusScan for Win32 v4.40.0
Copyright (c) 1992-2006 McAfee, Inc. All rights reserved.
(408) 988-3832  LICENSED COPY - Sep 23 2004

Scan engine v4.4.00 for Win32.
Virus data file v4980 created Mar 08 2007
Scanning for 234175 viruses, trojans and variants.
```

### McAfee VirusScan for Win32 5.10.0

Have issue in deleting some viruses, with error message `File not deleted - could be archive or compound file.`.

Can be download from https://archive.org/details/mcafee-virusscan-collections

Command: `wine scan /all /analyze /unzip /sub /report report.log /delete "..\..\DOS\F\Virus.DOS"`

Detected: 16601
Suspicious: n/a

```
Summary report on Y:\DOS\F\VIRUS.DOS\*.*
File(s)
        Total files: ...........   17646
        Clean: .................    1045
        Possibly Infected: .....   16601
        Deleted: ...............   16595
```

```
McAfee VirusScan for Win32 v5.10.0
Copyright (c) 1992-2006 McAfee, Inc. All rights reserved.
(408) 988-3832  LICENSED COPY - May 26 2006

Scan engine v5.1.00 for Win32.
Virus data file v4980 created Mar 08 2007
Scanning for 234175 viruses, trojans and variants.
```

### McAfee VirusScan for Win32 5.40.0

Have issue in deleting some viruses, with error message `File not deleted - could be archive or compound file.`.

Can be download from https://archive.org/details/mcafee-virusscan-collections

Command: `wine scan /all /analyze /unzip /sub /report report.log /delete "..\..\DOS\F\Virus.DOS"`

Detected: 16601
Suspicious: n/a

```
Summary report on Y:\DOS\F\VIRUS.DOS\*.*
File(s)
        Total files: ...........   17646
        Clean: .................    1045
        Possibly Infected: .....   16601
        Deleted: ...............   16595
```

```
McAfee VirusScan for Win32 v5.40.0
Copyright (c) 1992-2008 McAfee, Inc. All rights reserved.
(408) 988-3832  LICENSED COPY - Apr 16 2009

Scan engine v5.4.00 for Win32.
Virus data file v5334 created Jul 08 2008
Scanning for 424202 viruses, trojans and variants.
```

### McAfee VirusScan Command Line 6.1.4.305

Have issue in deleting some viruses, with error message `File not deleted - could be archive or compound file.`.

Command: `./uvscan ~/DOS/F/Virus.DOS/ --recursive --summary --showcomp --report=report.log --analyze --delete`

Detected: 16558
Suspicious: n/a

```
Summary Report on /home/khral/DOS/F/Virus.DOS/
File(s)
        Total files:...................     16859
        Clean:.........................     301
        Not Scanned:...................     0
        Possibly Infected:.............     16558
        Deleted:.......................     15777
```

```
McAfee VirusScan Command Line for Linux64 Version: 6.1.4.305
Copyright (C) 2020 McAfee, Inc.
(408) 988-3832 LICENSED COPY - July 05 2025

AV Engine version: 6100.8979 for Linux64.
Dat set version: 11482 created Jul 2 2025
Scanning for 596817 viruses, trojans and variants.
```

### Microsoft Anti-Virus (MSAV)

Bundled with MS-DOS 6.22, based on Central Point Anti-Virus.

Setup the config in the program and save it first before testing.

Command: `msav /r f:\virus`

Detected: 1445
Suspicious: n/a

```
Signatures: 1994/06/01
```

### Microsoft Security Essentials

Version 4.10.209.0 on Windows 7 Professional.

Command: n/a, Using explorer scan.

Detected: 15527
Suspicious: n/a

```
Antivirus Version: 1.431.682.0
Anti-spyware Version: 1.431.682.0
Signatures: 2025/07/17
```

### Microsoft Windows Defender

Run on Windows 10 Pro using DefenderUI for advanced configuration.

The result UI is freeze/slowdown and sometimes crash with all the detected viruses
Need to use diskcleanup utility to delete Windows Defender's logs to fix the freeze/slowdown issue.

Command: n/a, Using explorer scan.

Detected: 15543
Suspicious: n/a

```
Antimalware Client Version: 4.18.25050.5
Engine Version: 1.1.25050.6
Antivirus Version: 1.431.348.0
Anti-spyware Version: 1.431.348.0
```

### NOD32 for DOS

Can be download from http://old-dos.ru/index.php?page=files&mode=files&do=show&id=1513

Command: `nod32dos /scanboot- /scanmem- /pack+ /arch+ /all /log+ /log=report.log /list+ /heurdeep /delete f:\virus`

Detected: 15700
Suspicious: n/a

```
Executable: 2001/07/18
Signatures: 2009/05/14
```

### Norton AntiVirus Command-Line Scanner

From [Norton Antivirus 2000 (6.0)](https://archive.org/details/NortonAntiVirus2000Version6.0OEMSymantec1999) CD in directory `NAVC`.

Need to scan each directory separately multiple times and manually delete some detected files.

Can update the engine `NAVEX.EXP` or `NAVEX15.EXP` and signatures from newer updates,
tho I haven't test how many additional DOS virus it can detect yet.

Can be download from https://archive.org/details/norton-antivirus-command-line-scanner

Command: `navc /b- /m- /nobeep /delete f:\virus\0`

Detected: 14052
Suspicious: n/a

```
Signatures: 1999/06/07
```

### RMS - ROSE SWE's Malware Scanner 3.14.1

Multi platform malware scanner for Win32, Win64, DOS32, Linux x86, Linux x64, Linux ARM 32, Linux ARM 64.

Can be download from http://rose.rult.at/

Command: `./rms_x86_64 ~/DOS/F/Virus.DOS -all -csv -log=report.log -logall -logdel -heur -del`

Detected: 15612
Suspicious: n/a

```
----=[ RMS/Linux-x86_64 3.14.1-12.737 - ROSE_SWE's Malware Scanner ]=----
(c) 1989, 1994-2025 by ROSE SWE, Ralph Roth, http://rose.rult.at

Signatures: 2025/05/04
```

### Symantec Endpoint Protection 14.3

Enterprise version of Norton AntiVirus.

Using default settings.

Can't delete a few samples, manual deletion required for a few files.

Command: n/a, Using explorer scan.

Detected: 12910
Suspicious: n/a

```
Signatures: 2025/07/08
```

### Thunderbyte Antivirus 8.11

Can be download from http://old-dos.ru/index.php?page=files&mode=files&do=show&id=1600

Virus definition 1999/11/18 update http://www.filegate.net/pub/anti-virus/avdat/tbav8def.zip

Command: n/a

Detected: 14361
Suspicious: n/a

```
Signatures: 1999/11/18
```

### Trellix VirusScan Command Line 7.0.4

Formerly McAfee VirusScan Command Line.

Have issue in deleting some viruses, with error message `File not deleted - could be archive or compound file.`.

Command: `./uvscan ~/DOS/F/Virus.DOS/ --recursive --summary --report=report.log --analyze --delete`

Detected: 16558
Suspicious: 301

```
Summary Report on /home/khral/DOS/F/Virus.DOS/
File(s)
        Total files:...................     16859
        Clean:.........................     301
        Not Scanned:...................     0
        Possibly Infected:.............     16558
        Deleted:.......................     15777
```

```
Command Line Scanner for Linux64 Version: 7.0.4.835
Copyright (C) 2024 Musarubra US LLC.
LICENSED COPY - June 14 2025



AV Engine version: 6810.10716 for Linux64.


Dat set version: 11482  created Jul 2 2025
Scanning for 596817 viruses, trojans and variants.
```

### Trend Micro Antivirus+

Can be download from https://www.trendmicro.com/en_us/forHome/products/antivirus-plus.html

Command: n/a, Using explorer scan.

Detected: 15701
Suspicious: n/a

```
Version 17.8.1476
Signatures: 2025/07/08
```

### Trend Micro PCSCAN 7.50

From [Trend Micro PC Cillin 2005](https://archive.org/details/antivirus2005), run on DOS.

Need to be rescan multiple times in each sub directories as the scan ended prematurely,
possibly due to a bug in scanner triggered by some virus using malformed executable.

Newer pattern version seems to work worst for this old DOS virus scanner.

```
pattern date       detected
184     2004/09/28 15832
857     2005/09/25 15835
973     2005/11/28 15835
649     2006/08/10 15866
699     2006/08/29 14934
975     2006/12/04 15863
299     2007/02/27 13662
663     2014/03/13 12909
307     2025/07/05 6838
```

Can be download from https://archive.org/details/trend-micro-pcscan-7.50-for-dos

Command: `pcscan /nm /nb /a /z /d f:\virus`

Detected: 15866
Suspicious: n/a

```
VSAPI version 6.740-1002
Pattern version 649

Signatures: 2006/08/10
```

### Trend Micro VSCANTM 3.00

From Trend Micro System Cleaner, https://www.portablefreeware.com/forums/viewtopic.php?t=26113

Command: `wine vscantm.bin /nm /nb /ssaptn /lr=report.log /vsspyware+ /vsbkenc+ /i /showpackarctype /s /d  "..\..\DOS\F\Virus.DOS"`

Detected: 15694
Suspicious: 1436

```
16859 files have been read.
16859 files have been checked.
16859 files have been scanned.
16868 files have been scanned. (including files in archived)
 Found 15694 files containing viruses.
 Found 14258 viruses totally.
 Maybe 1436 viruses totally.
```

```
             +----------------------------------------------------+
             |          VSCANTM            Ver 3.00-1018          |
             |                                                    |
             |     Copyright (c) 1990 - 2006 Trend Micro Inc.     |
             |                                                    |
             |     Support Platforms: Windows 9x/Me/NT/2000/XP    |
             +----------------------------------------------------+

VSAPI Engine Version : 9.999-9999
VSAPI32.DLL Version : 24.550-1002 (24,5,5,0)
VSCANTM Version : 3.00-1018 (Official Build) - 280 Function Imported
Signatures: 20.301.00 (2025.07.03)
```

### Vexira Antivirus Scanner 2006

This anti-virus use Avira's Anti-Virus Engine.

Using renamed samples `.COM` files.

Can be download from https://archive.org/details/vexira-antivirus

Command: `./vascan --old --summary --all-files --heuristics=high --sfx --action=d ~/DOS/F/Virus`

Detected: 14479
Suspicious: n/a

```
Vexira Scanner 1.3.3 for Linux (2006-11-21)
Vexira Engine: 4.3.19:9 (2006-12-05), VDB: 9.050.7/11.0 (2006-12-12)
Signatures: 2006/12/12
```

### VirusBlokAda Vba32 AntiVirus (Console scanner) for Linux 5.3.2

Anti-virus from Belarus.

This anti-virus is only effective in detecting modern malware.

Need to rename to samples file extension to `.COM` to improve detection rate.

Demo mode can't remove infected files, report only.

Can be download from https://www.anti-virus.by/install

Command: `./vbacl -af -rw -ar -ha=4 -sfx -r=report.log ~/DOS/F/Virus`

Detected: 7588
Suspicious: 4329

```
+------------------------------------------------+
|         VirusBlokAda (Console scanner)         |
| Vba32 Linux 5.3.2 / 2025.07.21 08:02 (Vba32.L) |
|      Copyright (c) 1993-2025 by VBA Ltd.       |
+------------------------------------------------+
Key file not found
Demo mode
Signatures: 2025/07/21
```
