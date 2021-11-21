Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped, false)

    if IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) and not IsPauseMenuActive() then
      Citizen.Wait(150)
      if IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) then
        SetVehicleEngineOn(veh, true, true, false)
        TaskLeaveVehicle(ped, veh, 0)
      end
    end
	end
end)