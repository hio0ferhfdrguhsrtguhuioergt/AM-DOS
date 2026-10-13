# AM-DOS 6.56

AM-DOS (Artificially Made Disk Operating System) is an experimental custom x86-64 operating system.

## Current artifact

The supplied **6.56 compiled development preview** includes a 256 MiB BIOS/AMFS v2 disk image, Windows and Linux QEMU launchers, a release manifest, and third-party license notices. **This repository does not yet contain the full source tree or the compiled disk image.** The compiled archive is not yet available as a GitHub Release asset.

The preview's manifest reports host-side image verification, **not a successful QEMU guest boot**. WebKit, Alto, and authenticated HTTPS are **not operational release features**.

To run the compiled archive once it is distributed, extract it, install QEMU, then run `START-AM-DOS.bat` on Windows or `sh RUN-QEMU-LINUX.sh` on Linux. The scripts require the `.img` and `SHA256SUMS.txt` alongside them.

See [release-manifest.json](release-manifest.json) for the image SHA-256 and verification status. The full source and local Git history must be supplied separately; they are not in the compiled-preview ZIP.
