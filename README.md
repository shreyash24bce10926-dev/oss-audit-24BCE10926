# Open Source Software Project

a set of 5 bash scripts written to audit VLC media player as part of the open source software course asignment.

---

## Student info

| Field | Details |
|---|---|
| Name | Shreyash Yadav |
| Roll number | *24BCE10926* |
| Course | Open Source Software |
| Software Sudited | VLC Media Player |

---

## What this project does

basically these scripts check different things about VLC - whether its installed, how much ram/cpu it uses, where its config files are, and stuff like that. each script handles one part of the audit and could surely be run on its own.

---

## Scripts

**`script1.sh` - identity audit**
checks who is running the script, the current working directory, and system uptime just makes sure the environment is fine before starting the audit.

**`script2.sh` - FOSS package inspector**
checks if VLC is installed, then pulls info like version no. and maintainer from the package manager. also has a short note on what open source means.

**`script3.sh` - performance nd config**
looks at VLC's live RAM and CPU usage and check the permissions on VLC's config folder.

**`script4.sh` - automated backup**
finds `.conf` and `.txt` config files related to VLC, copies them to a staging folder, and zips everything into a `.tar.gz` archive.

**`script5.sh` - manifesto generator**
an interactive script - it asks for your input and generates a small "open source manifesto" text file based on wha you type.

---

## Requirements

- linux (ubuntu, debian, or WSL)
- bash shell
- `vlc` installed
- `dpkg` (comes default on ubuntu/debian)
- `tar` and `gzip` (for script 4)

to install VLC:
```bash
sudo apt update && sudo apt install vlc -y
```

---

## how to run

**1. clone the repo**
```bash
git clone https://github.com/[your-username]/oss-audit-[rollnumber].git
cd oss-audit-[rollnumber]
```

**2. make scripts executable**
```bash
chmod +x *.sh
```

**3. run each script**
```bash
./script1.sh   # identity check
./script2.sh   # VLC package info
./script3.sh   # resource + config audit
./script4.sh   # backup config files
./script5.sh   # generate manifesto
```

---

## Reflection

this project helped understand how open source software actually works.. VLC is lightweight, transparent, and everything about it - version, maintainer, config files - is accessible without any special access. that's what makes open source different from proprietary software.
