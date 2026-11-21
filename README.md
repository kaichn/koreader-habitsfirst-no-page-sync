# Habits First: No Page Sync

**A [KOReader](https://github.com/koreader/koreader) user patch that stops the [Habits First](https://github.com/reysu/habitsfirst-koreader) plugin from syncing after every page turn.**

Habits First runs a blocking HTTPS sync 25 s after every page turn, which freezes the reader for up to 40 s on a slow network. With this patch it syncs only when you close the book, when the device sleeps and when Wi-Fi connects. The daily update check still runs.

## Install
Copy `2-habitsfirst-no-page-sync.lua` to `koreader/patches/` and restart KOReader.

Tested with KOReader 2026.07.2 and Habits First 1.1.1. MIT license.
