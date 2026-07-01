# TD-DEV — Codebase Overview

This repository contains source code, compiled applications, SQL scripts, and supporting resources for a set of business management systems built with **Unify Team Developer (TD) 5.2** (formerly known as SQLWindows / Centura Team Developer). TD is a 4GL rapid-application-development tool that produces Windows applications backed by a relational database.

---

## File Extensions at a Glance

| Extension | What it is |
|-----------|-----------|
| `.apl` / `.APL` | **Application Library** — TD source code. These are the files you open and edit in the TD IDE. |
| `.app` | **Application** — compiled TD application. Double-clicking one launches the program. |
| `.apt` | **Application Template** — a TD source file saved as a template baseline. |
| `.apd` | **Application Dynamic Library** — a compiled shared library (like a DLL but in TD format). |
| `.apc` | **Application Compiled** — a compiled class or module object. |
| `.dll` | **Dynamic-Link Library** — compiled Windows DLLs (some are TD runtime helpers, others are third-party). |
| `.qrp` / `.QRP` | **Query Report** — a TD report definition (printed output). |
| `.wts` / `.WTS` | **SQL Windows Transaction Server** — server-side TD transaction script. |
| `.sql` | **SQL Script** — plain SQL used for database maintenance, schema changes, or migrations. |
| `.bat` | **Windows Batch File** — environment setup and launch scripts. |
| `.ps1` | **PowerShell Script** — deployment utilities. |
| `.mdb` | **Microsoft Access Database** — used for some local/web data stores. |
| `.dbs` | **TD Database Schema** — describes the database structure used by an application. |
| `.ini` | **Configuration File** — registry/path settings for the TD runtime. |
| `.ico` / `.bmp` | **Icon / Bitmap** — image resources used by the UI. |

---

## File Naming Conventions

### Case style reflects era
- **ALL CAPS** (e.g. `ITEM.APL`, `PRNTINV.APL`, `DIALOG.APL`) — the older originals, written when uppercase filenames were the norm.
- **Mixed or lowercase** (e.g. `custdets.apl`, `Customed.app`, `Salesd.app`) — newer files added as the codebase evolved.
- There is no enforced single convention; both styles coexist throughout the project.

### Common name abbreviations / prefixes
Most filenames are abbreviated because TD historically used short names. Common patterns:

| Prefix / fragment | Meaning |
|---|---|
| `cst` / `cust` | Customer |
| `ord` | Order |
| `itm` | Item (plant / stock item) |
| `stck` | Stock |
| `prnt` / `PR` | Print (output) routine |
| `prout` / `PROUT` | Print-output (a variant of print) |
| `prconf` | Print confirmation |
| `prcr` | Price/credit note |
| `npa` | NPA (Non-Producing Area — a specific stock category) |
| `atr` / `ATR` | ATR (a transaction or transfer type) |
| `roy` / `ROY` | Royalty |
| `flem` / `FLEM` | Fleming (a specific customer/site) |
| `hab` / `HAB` | Habitude (a separate product) |
| `jan` / `JAN` | Refers to a specific user ("Jan") who worked on those files |
| `dyna` / `DYNA_` | Dynamic library module (see `DYNALibs/`) |
| `gc` | Garden Centre |
| `si` | Stock Item (allocation variant) |
| `fr` | Freight |
| `pc` / `pcode` | Product/price code |
| `gr` | Grading |
| `tr` | Transaction / Transfer |
| `ld` / `loadd` | Load (delivery load) |

### The trailing `d` on `.app` files
Many compiled application files end with a lowercase `d` (e.g. `Customed.app`, `Salesd.app`, `Gradingd.app`, `Loadd.app`). The `d` stands for **development** — these are the development-environment versions of programs. The same program in a live/production environment would typically have a different name or path.

### The leading `n` on some `.APL` files
Files like `nPRNTINV.APL` or `npa.apl` use a leading lowercase `n` to indicate a **newer replacement** for an older file of the same base name (e.g. `nPRNTINV.APL` supersedes `PRNTINV.APL`).

### Backup / work-in-progress suffixes
The repository contains many "in-flight" or backed-up files. Common patterns:

| Suffix / phrase | Meaning |
|---|---|
| `- Copy` | A manually duplicated copy (e.g. `myfunc - Copy.apl`) |
| `_save` | A manually saved snapshot before editing |
| `.bak1`, `.bak2` | TD auto-backup copies |
| `_OLD` | An archived older version kept for reference |
| `_TESTING` | Experimental branch of a file |
| `preNPDA`, `pre52` | Snapshot taken before a specific change or version upgrade |
| version dates in name (e.g. `DepositRequired-2023-08-11.app`) | Date-stamped backup |

---

## Folder Layout

### Root directory
The root contains **core source library files** (`.apl`) that are shared across applications — things like login forms, customer/order/stock windows, print routines, audit, and invoicing. They are loaded by the TD IDE via the path settings configured in the `.bat` startup files.

Also at the root:
- `TD.BAT` — universal launcher; sets up the TD 5.2 environment and opens an `.app` or `.apl` in the IDE.
- `STOCKDEV.bat` — launcher preset for the Stock development path.
- `TD52-FLEMDEV.bat` — launcher preset for the Fleming development path.
- `Deploy.ps1` — PowerShell script for comparing and deploying updated runtime files.
- `GFCMail.dll`, `SMTPEmail.dll` — shared e-mail DLLs used at runtime.
- `liveweb.mdb` — Microsoft Access database for web-related local data.

---

### Source / Application Folders

#### `STOCKDEV/`
The main **Stock management development** workspace. Contains the compiled `.app` files for the primary day-to-day stock system (customer editing, order management, grading, loading, royalties, sales figures, etc.). This is the most actively developed area.

#### `FLEMDEV/`
Development workspace for the **Fleming** nursery site. Contains `.app` files tailored for the Fleming operation (Fleming-specific customer, transaction, and printing applications).

#### `FLEMAPLS/`
**Fleming APL source libraries** — the `.apl` source files that back many of the Fleming-specific forms and functions. These are included on the IDE's search path when working in `FLEMDEV`.

#### `FLEMING/`
Contains the compiled **Fleming application** (`FLEMING.DBS` database schema, log files, and a project file). This is the production-side artefact for Fleming rather than the development source.

#### `CommonApls/`
**Shared library source files** used by multiple applications. Includes utilities for addresses, dates, strings, SQL handling, email, RFID, HTTP/HTML, CSV, contract pricing, and more. Any file here is intended to be reusable across Stock, Fleming, and other apps.

#### `CLASS/`
**UI class definitions** — the fundamental building-block `.apl` files that define reusable TD form controls: buttons, checkboxes, date fields, dialogs, list boxes, tables, spinners, multi-line fields, etc. Think of this as the UI widget library.

#### `DYNALibs/`
**Dynamic (compiled) libraries** — `.apd` and `.dll` files for the most-used shared modules (Address, Dates, Strings, Functions, ContractPrice). These are the *compiled* versions of source that lives in `CommonApls` or `CLASS`. Version-specific variants (`52` suffix) target TD 5.2.

#### `SCHEDEV/`
**Scheduling / dispatch development** workspace (currently minimal content).

#### `Creddev/`
**Creditor (accounts payable) development** workspace — purchase orders, creditor balances, cash payments, GL codes.

#### `Workshopd/`
**Workshop management** application — vehicle details, service records, part details, and related reports (`.QRP` report definitions and `.SQL` scripts).

---

### Sub-systems / Other Products

#### `WATERING/`
Source and compiled applications for an **irrigation/watering control system**. Sub-folders:
- `Apls/` — `.apl` source files for the watering system.
- `DREW/` — Drew's branch/fork of the mesh-watering application.
- `watering-drew-moisture-fork/`, `watering-new_test_fork/` — experimental feature forks.
- `wateringold/`, `Backup 13Feb03/` — historical backups.
- `yellingbo database/`, `web files/` — site-specific database and web assets.
- `6bseries/` — hardware profile for a specific controller series.

#### `Greenhouse/`
A standalone **greenhouse management** application (SQL creation script and a single `.app`).

#### `Habitude/`
Applications for the **Habitude** product (a separate business line — horse/equitation management). Contains customer, load, supplier, inventory, and maintenance apps.

#### `Evaluation/`
The **evaluation / trial management** application (`EVALUATE.DBS` + log).

#### `Instructor/`
A standalone **instructor** application.

#### `propagat/`
A standalone **propagation management** application.

---

### Libraries and Tools

#### `MTbl/`
The **MultiTable** third-party TD grid/table component. Sub-folders are named after the TD version they match (`TD11`, `TD15`, `TD20` … `TD63`). Each sub-folder contains the matching `.dll`, `.apl`, and language files for that TD version.

#### `WinApi_Declarations_v110/WinApi_Declarations/`
**Windows API declaration files** for use in TD — provides `.apl` wrappers for common Win32 API calls (file I/O, registry, UI, etc.).

#### `Downloaded 3rd party stuff/`
ZIP archives of external components that have been downloaded and may be needed for rebuilds (e.g. PDF extension, SAL extension, serial port library).

---

### Database and SQL

#### `Maintenance_Procedures/`
SQL scripts for ongoing database administration:
- `migrations/` — schema migration scripts run sequentially to evolve the database.
- `Triggers for database/` — trigger definitions.
- `habitude database/` — Habitude-specific SQL.
- Various named `.sql` files for specific maintenance tasks (rollover, restore, user management, etc.).

#### `Scripts/`
**Operational SQL scripts** — mainly database restoration scripts and schema snapshots used when rebuilding or restoring environments.

#### `Remotupd/`
**Remote update files** — the `Deploy.ps1` script copies changed files from here to the live runtime location, allowing updates to be pushed without a full reinstall.

---

### Resources and Documentation

#### `icons/`
**Icon and bitmap resources** used in the UI. Contains hundreds of `.ico` and `.bmp` files. Sub-folders:
- `Bland/` — a plainer icon style set.
- `Iconlib/` — a larger icon library.
- `pictures/` — photo and image assets.

#### `HelpFiles/`
Help documentation files (including the `findnearbynurseries/` web help sub-folder).

#### `System Manuals/`
Word and Excel documents covering system design, programming schedules, and product manuals.

#### `Edifact Deployment/`
Files related to **EDI (Electronic Data Interchange)** — SQL table creation scripts, process flow documents, partner table definitions, and registry settings.

#### `Factree_Registry_Settings/`
`.ini` files containing registry path configurations for different Factree environments (live, development, ponyclubs).

#### `Maintexe/`
A small folder holding the `1factree.ini` configuration and a shortcut — used to configure the maintenance executable's registry paths.

---

## How the Applications are Launched

1. **Right-click** an `.app` file and choose *Open With* `TD.BAT`, **or** run from the command line:
   ```
   TD.BAT C:\DEV\STOCKDEV\Customed.app
   ```
2. `TD.BAT` detects which folder the file is in (`STOCKDEV` or `FLEMDEV`) and sets the correct include-path in the Windows Registry so the TD IDE can find all the `.apl` library files it needs.
3. `STOCKDEV.bat` and `TD52-FLEMDEV.bat` are pre-configured shortcuts that do the same thing for their respective environments without needing a path argument.

---

## Quick Reference: Which Folder for What?

| I want to … | Look in … |
|---|---|
| Edit a core stock or customer window | Root `.apl` files or `STOCKDEV/` |
| Edit a Fleming-specific screen | `FLEMAPLS/` (source) or `FLEMDEV/` (compiled apps) |
| Change a shared utility (dates, strings, addresses) | `CommonApls/` |
| Change a UI widget/control | `CLASS/` |
| Add or update a compiled shared library | `DYNALibs/` |
| Run or modify the watering system | `WATERING/` |
| Modify creditor/purchasing | `Creddev/` |
| Run a database migration | `Maintenance_Procedures/migrations/` |
| Restore a database | `Scripts/` |
| Find an icon or image | `icons/` |
| Read the system documentation | `System Manuals/` |
