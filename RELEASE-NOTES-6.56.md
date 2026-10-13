# AM-DOS 6.56 — Compiled Development Preview

**Release type:** Experimental compiled preview (not a verified stable release)

AM-DOS is an **AI-assisted custom x86-64 operating-system project** with a native kernel, AMFS filesystem, graphical desktop, and native applications.

## Package contents

- 256 MiB raw AMFS v2 disk image
- Windows and Linux QEMU launchers
- Integrity checksums and release manifest
- Included third-party notices

## Verification

The supplied build manifest reports **PASS** for host-side disk-image integrity. **QEMU guest boot was not verified** in the build environment. WebKit browser functionality is not operational and authenticated HTTPS has not been verified.

## Installation

Download the complete compiled preview archive and extract all files together. Install QEMU on the host system. On Windows run `START-AM-DOS.bat`; on Linux run `sh RUN-QEMU-LINUX.sh`. The Windows launcher also requires `LAUNCH-AM-DOS.ps1` from the full archive.

Linux integrity check:

```sh
sha256sum -c SHA256SUMS.txt
```

Expected SHA-256 of `AM-DOS-6.56-x86_64-AMFS.img`:

```text
3d3ac8b1922c77e9dbf25b9c7f375f98559b9d70c80d5d864db4f0d2d6bc15ac
```

## Known limitations

This is a development preview, not a production OS. The complete source tree is not included in the compiled archive. QEMU boot and hardware installation are not verified. The screenshot supplied by the project author shows a BreezeUI desktop preview and is not itself a verification of this image.

**Release asset to attach:** `AM-DOS-6.56-COMPILED-PREVIEW-FINAL(1).zip`

**Suggested release tag:** `v6.56-preview`
