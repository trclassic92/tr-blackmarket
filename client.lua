local TRClassicBlackMarketPed
local itemCheck = Config.ItemCheck

-- Remove ped model on resource stop.

local function RemoveTRPed()
    if DoesEntityExist(TRClassicBlackMarketPed) then
        DeletePed(TRClassicBlackMarketPed)
    end
end

AddEventHandler('onResourceStop', function(resourceName)
	if GetCurrentResourceName() == resourceName then
        RemoveTRPed()
	end
end)

-- Target and ped model

CreateThread(function()
    if Config.UseBlip then
        local BlackMarketBlip = AddBlipForCoord(Config.Location.Coords)
        SetBlipSprite(BlackMarketBlip, Config.Location.SetBlipSprite)
        SetBlipDisplay(BlackMarketBlip, Config.Location.SetBlipDisplay)
        SetBlipScale(BlackMarketBlip, Config.Location.SetBlipScale)
        SetBlipAsShortRange(BlackMarketBlip, true)
        SetBlipColour(BlackMarketBlip, Config.Location.SetBlipColour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Location.BlipName)
        EndTextCommandSetBlipName(BlackMarketBlip)
    end

    local Coords = Config.Location.Coords
    local PedHash = Config.Location.ModelHash
    local PedModel = Config.Location.ModelName

    if not DoesEntityExist(TRClassicBlackMarketPed) then
        RequestModel(GetHashKey(PedModel))
        while not HasModelLoaded(GetHashKey(PedModel)) do
            Wait(1)
        end

        TRClassicBlackMarketPed = CreatePed(1, PedHash, Coords, false, true)
        FreezeEntityPosition(TRClassicBlackMarketPed, true)
        SetEntityInvincible(TRClassicBlackMarketPed, true)
        SetBlockingOfNonTemporaryEvents(TRClassicBlackMarketPed, true)
    end

    if itemCheck then
        exports['qb-target']:AddEntityZone('TRPed'..TRClassicBlackMarketPed, TRClassicBlackMarketPed, {
            name = 'TRPed'..TRClassicBlackMarketPed,
            heading = GetEntityHeading(TRClassicBlackMarketPed),
            debugPoly = false,
            item = Config.Item,
        }, {
            options = {
                {   
                    icon = Config.Icons["Eyeicon"],
                    label = Config.Text["TargetLabel"],
                    event = "tr-blackmarket:OpenShop",
                    canInteract = function(entity)
                        if IsPedDeadOrDying(entity, true) or IsPedAPlayer(entity) or IsPedInAnyVehicle(PlayerPedId(), false) then return false end
                        return true
                    end,    
                },
            },
            distance = 1.5
        })
    else
    exports['qb-target']:AddTargetEntity(TRClassicBlackMarketPed, {
        options = {
            {
                num = 1,
                type = "client",
                event = "tr-blackmarket:OpenShop",
                label = Config.Text["TargetLabel"],
                icon = Config.Icons["Eyeicon"]
            }
        },
        distance = 1.5
    })
    end
end)

-- qb-menu
RegisterNetEvent('tr-blackmarket:OpenShop', function()
    local BlackMarket = {
        { header = Config.Text['PedHeader'], isMenuHeader = true, icon = Config.Icons["Header"] },
        { header = Config.Text['Pistols'], icon = Config.Icons['Pistol'], params = { event = "tr-blackmarket:PistolShop" } },
        { header = Config.Text['SubMachineGuns'], icon = Config.Icons['SubMachineGuns'], params = { event = "tr-blackmarket:SubMachineGunsShop" } },
        { header = Config.Text['Shotguns'], icon = Config.Icons['Shotguns'], params = { event = "tr-blackmarket:ShotGunsShop" } },
        { header = Config.Text['AssaultWeapons'], icon = Config.Icons['AssaultWeapons'], params = { event = "tr-blackmarket:AssaultWeaponsShop" } },
        { header = Config.Text['Miscellanceous'], icon = Config.Icons['Miscellanceous'], params = { event = "tr-blackmarket:MiscellanceousShop" } }
    }
    exports['qb-menu']:openMenu(BlackMarket)
end)

-- BlackMarket Shop Event
RegisterNetEvent("tr-blackmarket:PistolShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.PistolShop)
end)

RegisterNetEvent("tr-blackmarket:SubMachineGunsShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.SubMachineGunShop)
end)

RegisterNetEvent("tr-blackmarket:ShotGunsShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.ShotGunShop)
end)

RegisterNetEvent("tr-blackmarket:AssaultWeaponsShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.AssaultWeaponsShop)
end)

RegisterNetEvent("tr-blackmarket:MiscellanceousShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.MiscellanceousShop)
end)
