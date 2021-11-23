Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped, false)

    if IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) and not IsPauseMenuActive() then
      Citizen.Wait(150)
      if IsPedInAnyVehicle(ped, false) then
        if IsControlPressed(2, 75) and not IsEntityDead(ped) then
          SetVehicleEngineOn(veh, not Config.Reversed, true, not Config.Reversed)
        else
          Citizen.Wait(1e3)
          if not IsPedInAnyVehicle(ped, false) then
            SetVehicleEngineOn(veh, Config.Reversed, true, Config.Reversed)
          end
        end
      end
      Citizen.Wait(1e3)
    end
	end
end)