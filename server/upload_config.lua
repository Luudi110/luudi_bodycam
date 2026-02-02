Upload = Upload or {}

-- Du skal starte optagelsen med /recordcam; optagelsen vil blive uploadet til en af tjenesterne nedenfor.

Upload.ServiceUsed = 'discord'   -- discord | fivemanage | fivemerr
Upload.Token = 'YOUR_TOKEN'      --  fivemanage eller fivemerr | [*note - for discord skal webhook ændres nedenfor, ikke her]

-- TIL DISCORD-LOGS
Upload.DiscordLogs = {
    Enabled = true,
    Username = 'Luudi Bodycam Records',     -- Botens brugernavn
    Title = 'Bodycam Records',            -- Beskedtitel
}

-- Upload Hooks if Upload.ServiceUsed = discord
Upload.DefaultUploads = {   -- Standard upload af log, hvis job ikke er nævnt i Upload.JobUploads. 
    webhook = '',
    author = {
        name = "Luudi Bodycam",
        icon_url = "https://i.imgur.com/tMyAdkz.png"
    }
}

Upload.JobUploads = {  -- Jobspecifikke uploads
    ['police'] = {
        webhook = '',
        author = {
            name = "Police Department",
            icon_url = "https://i.imgur.com/tMyAdkz.png"
        }
    }, -- Tilføj flere her
}
