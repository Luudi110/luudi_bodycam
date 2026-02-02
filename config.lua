Config = Config or {}

Config.Framework = 'esx' -- qb | esx 

if Config.Framework == 'qb' then    -- Rør ikke denne del
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == 'esx' then
    ESX = exports.es_extended:getSharedObject()
end

Config.Dependency = {                   
    UseTarget = 'ox',                   -- qb | ox
    UseInventory = 'ox',                -- qb | ox | esx             
    UseProgress = 'ox',                 -- qb | ox | esx                  
    UseMenu = 'ox',                     -- qb | ox | esx 
    UseNotify = 'ox',                   -- qb | ox | esx
    UseAppearance = 'illenium',               -- qb | illenium | false 
}

Config.ExitCamKey = 'BACK' 

Config.CameraEffect = {
    bodycam = 'Island_CCTV_ChannelFuzz',
    dashcam = 'TinyRacerMoBlur',
} 

Config.ForceViewCam = false     -- Tvinger kameravisning til førsteperson under optagelse.
Config.RecordTime = 30          --Recording Time | 30 = 30 seconds | [*note: Dont increase the time too much or it may not upload to any service you are using for example - discord.]

Config.PropLoc = {  -- Ændr prop-position i forhold til din tøjspakke.
    male = {
        bone = 24818,
        pos = vector3(0.00000000000000, 0.00000000000000, 0.00000000000000),
        rot = vector3(0.00000000000000, 0.00000000000000, 0.00000000000000),
    },
    female = {
        bone = 24818,
        pos = vector3(0.00000000000000, 0.00000000000000, 0.00000000000000),
        rot = vector3(0.00000000000000, 0.00000000000000, 0.00000000000000),
    },
}

Config.AllowedJobs = { -- Kun disse job kan bruge bodycam/dashcam-genstanden.
    'police',
    'ambulance',
}

Config.AllowedClass = {18} -- Køretøjsklasser, som må bruge dashcam-funktionen.

Config.WatchLoc = {
    [1] = {
        coords = vector3(448.5595703125, -984.69439697266, 30.978248596191), 
        rad = 1.5, 
        debug = false,
        jobCam = {'police','ambulance'},  -- de jobs, der er nævnt her, vises i listen | false = kan se alle bodycams
        carCam = {                        -- false = kan se alle dashcams
            job = {'police'},             -- Jobs som aktiverer dashcams vist i listen | false udelukker.
            class = {18}                  -- Dashcam aktiveret på disse køretøjsklasser vist i listen | false udelukker.
        },
        targetAuth = {'police'},          -- de jobs, der er nævnt her, kan bruge dette sted via target | false = alle kan få adgang

    },  -- Du kan tilføje flere steder 
}

Config.DebugCamera = false -- Sæt til true hvis du vil hente ny kameraforskydning for et køretøj.
Config.VehCamOffset = {
    [`police2`] = {0.000000, 0.330000, 0.530000},
    -- [`18chgr2`] = {0.000000, 0.510000, 0.630000},  -- Eksempel på køretøj. Scriptet har en offset-finder; sæt DebugCamera til true for at hente offset.
    -- [`vehiclespawncode`] = {0.000000, 0.510000, 0.630000},
}

-- Køretøjsklasser:  
-- 0: Små biler  
-- 1: Sedan  
-- 2: SUV'er  
-- 3: Coupéer  
-- 4: Muskelbiler  
-- 5: Sportsklassikere  
-- 6: Sportsbiler  
-- 7: Super  
-- 8: Motorcykler  
-- 9: Offroad  
-- 10: Industrielle  
-- 11: Nyttelast  
-- 12: Varevogne  
-- 13: Cykler  
-- 14: Både  
-- 15: Helikoptere  
-- 16: Fly  
-- 17: Service  
-- 18: Nød  
-- 19: Militær  
-- 20: Kommerciel  
-- 21: Tog  
-- 22: Open Wheel