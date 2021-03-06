-- Put this code in esx_vehicleshop\client\main.lua

--- LUCKYWHEEL
RegisterNetEvent("luckywheel:winCar")
AddEventHandler("luckywheel:winCar", function() 

    ESX.Game.SpawnVehicle("lp700r", { x = 933.29,y = -2.82, z = 78.76 }, 144.6, function (vehicle)
        TaskWarpPedIntoVehicle(playerPed, vehicle, -1)

        local newPlate     = GeneratePlate()
        local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
        vehicleProps.plate = newPlate
        SetVehicleNumberPlateText(vehicle, newPlate)

        TriggerServerEvent('esx_vehicleshop:setVehicleOwned', vehicleProps)

        ESX.ShowNotification("Bạn đã nhận được siêu xe Lambo 700R!")
    end)

    FreezeEntityPosition(playerPed, false)
    SetEntityVisible(playerPed, true)
end)
