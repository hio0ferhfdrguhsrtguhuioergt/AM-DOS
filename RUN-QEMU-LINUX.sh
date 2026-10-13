#!/bin/sh
# Compiled AM-DOS 6.56 preview. No host OS libraries are used by the guest.
set -eu
cd "$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
command -v sha256sum >/dev/null 2>&1 || { echo 'sha256sum is required' >&2; exit 2; }
sha256sum -c SHA256SUMS.txt
if [ "${1:-}" = '--verify-only' ]; then exit 0; fi
qemu=${AMDOS_QEMU_PATH:-qemu-system-x86_64}
command -v "$qemu" >/dev/null 2>&1 || { echo 'QEMU not installed; install qemu-system-x86_64' >&2; exit 2; }
mkdir -p "${XDG_STATE_HOME:-$HOME/.local/state}/amdos-6.56"
logdir="${XDG_STATE_HOME:-$HOME/.local/state}/amdos-6.56"
video='VGA,vgamem_mb=64,xres=2560,yres=1440'
if [ "${1:-}" = '--4k' ]; then video='VGA,vgamem_mb=64,xres=3840,yres=2160'; fi
disk="$(pwd)/AM-DOS-6.56-x86_64-AMFS.img"
escaped_disk=$(printf '%s' "$disk" | sed 's/,/,,/g')
exec "$qemu" -machine pc -accel tcg -cpu qemu64,+rdrand -smp 1 -m 1024M \
  -rtc base=utc -boot order=c -vga none -device "$video" \
  -drive "file=$escaped_disk,format=raw,if=ide,index=0,media=disk" \
  -netdev user,id=n0 -device rtl8139,netdev=n0 \
  -serial "file:$logdir/serial.log" -debugcon "file:$logdir/debugcon.log" \
  -global isa-debugcon.iobase=0xe9 -monitor none -snapshot
