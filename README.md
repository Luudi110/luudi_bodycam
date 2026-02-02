# Luudi Bodycam

Dette er en dansk oversættelse af kommentarer og dokumentation for `spy-bodycam`-ressourcen.

## Oversigt
Luudi Bodycam giver mulighed for bodycam- og dashcam-optagelser i FiveM. Optagelser kan uploades til Discord, FiveManage eller FiveMerr-tjenester.

## Installation
1. Placer mappen `spy-bodycam` i din resources-mappe.
2. Tilføj `ensure spy-bodycam` i din `server.cfg`.

## Brug
- Start optagelse: brug kommandoen `/recordcam` i spillet (hvis aktiveret).
- Når optagelsen afsluttes, uploades videoen automatisk til den valgte upload-tjeneste (konfigureret i `server/upload_config.lua`).

## Konfiguration
- `config.lua` indeholder de vigtigste indstillinger:
  - `Config.Framework` — vælg `esx` eller `qb`.
  - `Config.RecordTime` — varighed af optagelse i sekunder.
  - `Config.AllowedJobs` — jobs som må bruge bodycam/dashcam.
  - `Config.DebugCamera` — sæt til `true` for at finde kamera-offset for køretøjer.

- `server/upload_config.lua`:
  - `Upload.ServiceUsed` — vælg `discord`, `fivemanage` eller `fivemerr`.
  - `Upload.Token` — token for `fivemanage` eller `fivemerr`. For Discord bruges webhooks i `Upload.DefaultUploads` eller `Upload.JobUploads`.

## Logfiler og webhooks
- Du kan definere en standard webhook i `Upload.DefaultUploads` og jobspecifikke webhooks i `Upload.JobUploads`.

## Bemærkninger
- Kun kommentarer og README er oversat til dansk — funktionaliteten er uændret.

Hvis du vil have yderligere oversættelser (fx UI-tekster eller meddelelser), sig til, så kan jeg oversætte dem også.