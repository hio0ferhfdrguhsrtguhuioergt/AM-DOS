AM-DOS 6.56 COMPILED DEVELOPMENT IMAGE
=====================================

Contains a REAL COMPILED x86-64 AM-DOS BIOS + AMFS v2 factory disk.
Host ELF/kernel/filesystem and application verification passed.
NO QEMU GUEST BOOT WAS AVAILABLE IN THE BUILD ENVIRONMENT.
WEBKIT, ALTO, AND AUTHENTICATED HTTPS ARE NOT WORKING RELEASE FEATURES.

WINDOWS: Install QEMU x86_64 for Windows if needed, then double-click
START-AM-DOS.bat. This validates the disk SHA256 before launching.
Default mode is a QEMU SNAPSHOT: guest file changes are discarded.
START-AM-DOS.bat -Persistent  saves a separate user disk in LocalAppData.
START-AM-DOS.bat -UHD selects the 3840x2160 framebuffer mode.
START-AM-DOS.bat -VerifyOnly checks the integrity without booting.
QEMU is NOT bundled. AMDOS_QEMU_PATH may be set to its executable.

LINUX/WSL: sh RUN-QEMU-LINUX.sh [--4k|--verify-only].
Requires qemu-system-x86_64 and sha256sum. Linux preview uses snapshot.
DOOM content and game media are NOT included; no DOOM guest claim.
For full source and local Git history use the separately supplied
AM-DOS-6.56-GITHUB-SOURCE ZIP, not this compiled-release asset.

Do NOT add the 256 MiB .img to the normal Git repository.
See release-manifest.json for this image SHA256 and verification status.
