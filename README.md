# AM-DOS

### Artificially Made Disk Operating System

**Short description:** An AI-assisted experimental x86-64 operating system with a custom kernel, AMFS filesystem, graphical desktop, and native applications.

**AM-DOS is an AI-assisted operating-system development project.** Its design, implementation, debugging, and documentation have been developed with the assistance of AI coding tools and human direction and review. AI assistance does not imply that every feature has been independently verified.

**AM-DOS** is an experimental operating-system project built around a custom x86-64 kernel, its own disk filesystem, graphical desktop, and native applications. It is an ongoing attempt to build an independent desktop operating system rather than a Linux distribution or a Windows modification.

> **Current version: 6.56 | Compiled development preview**
>
> This repository is being assembled. It currently provides launch instructions and release metadata, **not the full source tree or the bootable disk image**. The uploaded development image has passed host-side integrity checks, but **a successful QEMU guest boot has not been verified**. Treat this as a development preview, not a stable OS release.

## Desktop preview

The provided screenshot shows the BreezeUI desktop, an installer window, and appearance settings with glass borders. It is a visual reference supplied by the project author, not evidence that the 6.56 compiled image has passed a boot test. The screenshot is awaiting upload to this repository.

## What is AM-DOS?

The project began with a small BIOS-booted x86 operating system and has grown through several generations of kernel, storage, graphics, and application work. Its long-term goal is a self-contained graphical OS with usable applications, networking, and an eventual path to installation on physical computers.

AM-DOS is **not** based on the Linux kernel, and it is not a theme, emulator frontend, or shell running on top of another operating system. QEMU is used as a *virtual machine* to run the guest OS while it is developed and tested.

### Architecture and components

| Area | Project direction |
| --- | --- |
| CPU / boot | x86-64 operating system with a BIOS-oriented boot image |
| Kernel | Custom OS kernel and low-level system components |
| Storage | AMFS v2 filesystem and raw disk image |
| Graphics | Framebuffer-based graphical environment and window management |
| Applications | Native desktop tools and applications |
| Networking | Native networking stack under active development |
| Development | QEMU-based testing and Windows/Linux host launchers |

These describe the project's architecture and development scope. They are **not** a guarantee that every subsystem is fully implemented or verified in the currently distributed preview.

## Version 6.56

The compiled development artifact is identified as **AM-DOS 6.56** and includes a **256 MiB raw AMFS disk image**. Its release metadata records a source revision and a SHA-256 checksum. Host-side checks reported that the disk image and included filesystem content passed integrity verification.

### Verification status

| Check | Status |
| --- | --- |
| Compiled disk image generated | Reported complete |
| AMFS image integrity | **PASS** in supplied manifest |
| QEMU guest boot | **Not run / not verified** |
| Working WebKit browser | **Not operational** |
| Authenticated HTTPS | **Not verified** |

In particular, **WebKit and Alto are development work, not working release features**. A valid disk image does not by itself establish that the OS boots, displays a desktop, or operates correctly in QEMU.

## Running the compiled preview

**The disk image is not currently hosted in this GitHub repository.** The steps below apply once you have obtained the complete compiled archive, including `AM-DOS-6.56-x86_64-AMFS.img`, `SHA256SUMS.txt`, and the platform-specific launch files. Downloading this repository alone is not enough to boot AM-DOS.

### Windows

1. Install a Windows build of **QEMU** with `qemu-system-x86_64`.
2. Extract the *complete compiled preview archive* into a folder.
3. Keep the image, checksum file, `START-AM-DOS.bat`, and `LAUNCH-AM-DOS.ps1` together.
4. Double-click `START-AM-DOS.bat` to start the launcher.

The launcher expects the PowerShell script and disk image. **`LAUNCH-AM-DOS.ps1` has not yet been published to this repository.** The standalone batch file in this repository therefore cannot launch the OS by itself.

### Linux

Install QEMU and `sha256sum`, extract the complete compiled archive, then run:

```bash
sh RUN-QEMU-LINUX.sh --verify-only
sh RUN-QEMU-LINUX.sh
```

To request the 3840 × 2160 framebuffer mode:

```bash
sh RUN-QEMU-LINUX.sh --4k
```

The supplied Linux launcher uses a QEMU snapshot, so **changes made inside the guest are discarded when the VM closes**. Its default framebuffer configuration targets 2560 × 1440. These are launcher settings, not proof that the guest supports each mode correctly.

### Verify the image manually

From the extracted archive's directory:

```bash
sha256sum -c SHA256SUMS.txt
```

Expected disk-image checksum:

```text
3d3ac8b1922c77e9dbf25b9c7f375f98559b9d70c80d5d864db4f0d2d6bc15ac
```

If the checksum fails, **do not boot or trust the image** until you have obtained an intact copy.

## Repository contents

| File | Purpose |
| --- | --- |
| `README.md` | Project introduction and usage instructions |
| `README-COMPILED.txt` | Notes accompanying the compiled development artifact |
| `release-manifest.json` | Build identity, checksum, and verification status |
| `SHA256SUMS.txt` | Expected checksum for the raw disk image |
| `START-AM-DOS.bat` | Windows entry-point script; depends on the missing PowerShell launcher |
| `RUN-QEMU-LINUX.sh` | Linux QEMU launcher |
| `.gitignore` | Excludes disk images and other generated artifacts |

### What is not published yet?

- The full kernel, drivers, userspace, and application **source code**.
- The **256 MiB compiled disk image**.
- The complete Windows PowerShell launcher and all bundled dependency notices.
- A downloadable GitHub Release containing the compiled archive.

The compiled image is larger than GitHub's normal **100 MiB per-file Git limit**. It should be distributed as a GitHub Release asset, not committed directly to Git history.

## Development roadmap

These are **goals**, not promises that they work today:

1. Publish the complete source tree, build system, and dependency licenses.
2. Establish a reproducible build and automated QEMU boot test.
3. Stabilize the kernel, filesystem, graphics, and native applications.
4. Continue the modern software and networking foundations, including browser integration.
5. Improve compatibility and evaluate installation on real hardware.

## Contributing and project status

AM-DOS is an experimental, rapidly evolving operating system. Until the complete source is published, outside contributors cannot reproduce or modify the full system from this repository alone.

If you report a bug, include the version, host operating system, QEMU version, launch command, and any serial/debug logs. Avoid treating an unverified preview as production-ready.

**License:** No project-wide open-source license has been declared in this repository. Public visibility alone does not grant reuse, modification, or redistribution rights. Third-party components remain subject to their own licenses.

---

**AM-DOS 6.56** · Artificially Made Disk Operating System · Experimental development preview
