# LUUDI BODYCAM SYSTEM

Luudi Bodycam er et avanceret bodycam-script, der giver et realistisk bodycam-overlay på skærmen og mulighed for at se andre spilleres bodycams samt køretøjers dashcams i realtid.
Scriptet understøtter optagelse af korte videoklip, som gemmes sammen med detaljerede spillerlogs til senere gennemsyn.

## Compatibility

Bodycam-scriptet er designet til at fungere problemfrit med følgende frameworks:

* QBCore
* Qbox
* ESX

  > **Note:** ESX-support kræver `ox_target`. Scriptet kan tilpasses, hvis du benytter andre løsninger.

## Dependencies

Sørg for at følgende dependencies er installeret:

* `ox_lib`
* `qb/ox/esx-inventory`
* `qb/ox-target`
* `qb-clothing / illenium_appearance` *(VALGFRIT)*

## Preview

YouTube-preview er tilgængelig.

## How to Install

1. Sørg for, at dit roleplay-server-framework (QBCore, Qbox eller ESX) er installeret.
2. Installer alle nødvendige dependencies.
3. Træk ressourcen ind i din `resources`-mappe og tilføj den i `server.cfg`.
4. Konfigurer scriptet i forhold til dit framework.
5. Tilføj item-billederne fra `installfiles`-mappen til dit inventory.

![Bodycam Image](https://i.imgur.com/CuSyeZT.png)
![Dashcam Image](https://i.imgur.com/TVx1mcn.png)

6. Tilføj items

### QBCore

```lua
['bodycam'] = {
    ['name'] = 'bodycam',
    ['label'] = 'Bodycam',
    ['weight'] = 500,
    ['type'] = 'item',
    ['image'] = 'bodycam.png',
    ['unique'] = true,
    ['useable'] = true,
    ['shouldClose'] = true,
    ['combinable'] = nil,
    ['description'] = 'Bodycam for authorized personnel only'
},
['dashcam'] = {
    ['name'] = 'dashcam',
    ['label'] = 'Dashcam',
    ['weight'] = 500,
    ['type'] = 'item',
    ['image'] = 'dashcam.png',
    ['unique'] = true,
    ['useable'] = true,
    ['shouldClose'] = true,
    ['combinable'] = nil,
    ['description'] = 'Dashcam for authorized vehicles only'
},
```

### OX

```lua
["bodycam"] = {
    label = "Bodycam",
    weight = 0,
    stack = false,
    close = true,
    description = "Bodycam",
    client = {
        image = "bodycam.png",
        event = "spy-bodycam:bodycamstatus"
    }
},
["dashcam"] = {
    label = "Dashcam",
    weight = 0,
    stack = false,
    close = true,
    description = "Dashcam",
    client = {
        image = "dashcam.png",
        event = "spy-bodycam:toggleCarCam"
    }
},
```

### ESX

```sql
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`)
VALUES ('bodycam', 'Bodycam', 1, 0, 1);

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`)
VALUES ('dashcam', 'Dashcam', 1, 0, 1);
```

7. Kør SQL-filen fra `installfiles`-mappen

```sql
CREATE TABLE IF NOT EXISTS `spy_bodycam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(255) NOT NULL,
  `videolink` longtext NOT NULL,
  `street` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `playername` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
```

## Setup Fivemerr eller Fivemanage

1. Vælg upload-service i `server/upload_config.lua`:

```lua
Upload.ServiceUsed = 'fivemerr' -- eller 'fivemanage'
```

2. Opret en video-token og indsæt den:

```lua
Upload.Token = 'YOUR_TOKEN'
```

Når dette er gjort, er upload-systemet klar.

## Features

* **GTA6-inspireret Bodycam Overlay** med realistiske lyde
* **Se andre spilleres bodycams** i realtid
* **Decoy-ped system** ved visning af andres kamera
* **Understøttelse af flere jobs**
* **Custom bodycam-prop** inkluderet
* **Optimerede kamerapositioner** til både gang og kørsel
* **Dashcam-support til køretøjer**
* **Justerbar kamera-offset pr. køretøj**
* **Record-funktion** via `/recordcam`
* **Ingame recording viewer UI**
* **Optager spillerens mikrofon sammen med video**

## Showcase

![dashcam](https://i.imgur.com/4pHD1Rn.png)
![bodycam](https://i.imgur.com/FjTAfq7.png)
![recordview](https://i.imgur.com/ASROJVg.png)

Scriptet kan frit tilpasses til dit serversetup. Sørg for, at alle dependencies holdes opdateret for den bedste oplevelse.

**God fornøjelse og god RP!** 🎥🚓
