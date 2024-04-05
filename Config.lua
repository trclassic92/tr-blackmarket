Config = {}

Config.UseBlip = true                      -- [true to enable the blip | false disables the blip]
Config.ItemCheck = false                    -- true for item check / false for no item
Config.Item = 'itemhere'

Config.Location = {
    Coords = vector4(-279.14, 2206.02, 129.85 - 1.00, 67.35),
    ModelName = "a_m_y_epsilon_02",
    ModelHash = 0xAA82FF9B,
    SetBlipSprite = 303,
    SetBlipDisplay = 6,
    SetBlipScale = 0.85,
    SetBlipColour = 40,
    BlipName = "BlackMarket Dealer"
}

Config.Icons = {
    EyeIcon = "fa-solid fa-face-smile-horns",
    Header = "fa-solid fa-person-rifle",
    Pistol = "fa-solid fa-gun",
    SubMachineGuns = "fa-solid fa-gun",
    Shotguns = "fa-solid fa-gun",
    AssaultWeapons = "fa-solid fa-gun",
    Miscellanceous = "fa-solid fa-icons"
}

Config.Text = {
    TargetLabel = "BlackMarket Seller",
    PedHeader = "BlackMarket Dealer",
    Pistols = "Pistols",
    SubMachineGuns = "SubMachine Guns",
    Shotguns = "Shotguns",
    AssaultWeapons = "Assault Rifles",
    Miscellanceous = "Miscellanceous",

}

Config.PistolShop = {
    label = "Black Market Pistols",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_pistol",
            price = 3000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_pistol_mk2",
            price = 1600,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_heavypistol",
            price = 3000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_marksmanpistol",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_snspistol_mk2",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_navyrevolver",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        }
    }
}

Config.SubMachineGunShop = {
    label = "Black Market SubMachine Guns",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_microsmg",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_smg_mk2",
            price = 6000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_assaultsmg",
            price = 6500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_combatpdw",
            price = 6000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_machinepistol",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_minismg",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        }
    }
}

Config.ShotGunShop = {
    label = "Black Market ShotGuns",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_pumpshotgun",
            price = 12000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_sawnoffshotgun",
            price = 8000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_bullpupshotgun",
            price = 12500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_dbshotgun",
            price = 13000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_heavyshotgun",
            price = 15000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_pumpshotgun_mk2",
            price = 10000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        }
    }
}

Config.AssaultWeaponsShop = {
    label = "Black Market Assault Weapon Shop",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_assaultrifle",
            price = 26000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_assaultrifle_mk2",
            price = 30000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_carbinerifle_mk2",
            price = 42000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_compactrifle",
            price = 28500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_advancedrifle",
            price = 32000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_bullpuprifle_mk2",
            price = 36000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        }
    }
}

Config.MiscellanceousShop = {
    label = "Black Market Miscellanceous Shop",
    slots = 10,
    items = {
        [1] = {
            name = "armor",
            price = 10000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "heavyarmor",
            price = 15000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "labkey",
            price = 30000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "trojan_usb",
            price = 75000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "thermite",
            price = 200000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "drill",
            price = 175000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "advancedlockpick",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "gatecrack",
            price = 950000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "pistol_ammo",
            price = 100,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "rifle_ammo",
            price = 1500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "smg_ammo",
            price = 1000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "shotgun_ammo",
            price = 2000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 12,
        },
    }
}
