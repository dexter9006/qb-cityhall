Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.AvailableJobs = {                                     -- Only used when not using qb-jobs.
    ['trucker'] = { ['label'] = 'Camionneur', ['isManaged'] = false },
    ['taxi'] = { ['label'] = 'Taxi', ['isManaged'] = false },
    ['tow'] = { ['label'] = 'Remorqueur', ['isManaged'] = false },
    ['reporter'] = { ['label'] = 'Journaliste', ['isManaged'] = false },
    ['garbage'] = { ['label'] = 'Eboueur', ['isManaged'] = false },
    ['bus'] = { ['label'] = 'Chauffeur de Bus', ['isManaged'] = false },
    ['hotdog'] = { ['label'] = 'Vendeur de Hot Dog', ['isManaged'] = false }
}

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-265.0, -963.6, 31.2),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = 'Mairie'
        },
        licenses = {
            ['id_card'] = {
                label = 'Carte d\'Identité',
                cost = 50,
            },
            ['driver_license'] = {
                label = 'Permis de Conduire',
                cost = 50,
                metadata = 'driver'
            },
            ['weaponlicense'] = {
                label = 'Permis de Port d\'Arme',
                cost = 100,
                metadata = 'weapon'
            },
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(240.3, -1379.89, 33.74),
        showBlip = false,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = 'Driving School'
        },
        instructors = {
            'IGX93624', -- Emilio (Vitto)
            --"",
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_hasjew_01',
        coords = vec4(-262.79, -964.18, 30.22, 181.71),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    {
        model = 'a_m_m_eastsa_02',
        coords = vec4(240.91, -1379.2, 32.74, 138.96),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}
