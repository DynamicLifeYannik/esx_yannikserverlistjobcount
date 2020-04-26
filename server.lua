ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()

	while true do
		Citizen.Wait(1000 * 60) -- Update every minute
		local xPlayer  = ESX.GetPlayerFromId(source)
  
		local xPlayers = ESX.GetPlayers()
	  
		  EMSConnected = 0
		  PoliceConnected = 0
		  MechanicConnected = 0
		  Arbeitslos = 0
		  lumber = 0
		  trucker = 0

		  for i=1, #xPlayers, 1 do
			  local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			  if xPlayer.job.name == 'ambulance' then
				  EMSConnected = EMSConnected + 1
			  end		
			  if xPlayer.job.name == 'police' then
				  PoliceConnected = PoliceConnected + 1
			  end	
			  if xPlayer.job.name == 'mechanic' then
				  MechanicConnected = MechanicConnected + 1
			  end
			  if xPlayer.job.name == 'unemployed' then
				Arbeitslos = Arbeitslos + 1
			end
			if xPlayer.job.name == 'lumberjack' then
				lumber = lumber + 1
			end
			if xPlayer.job.name == 'trucker' then
				trucker = trucker + 1
			end
		  end
		SetConvarServerInfo('👮LSPD', PoliceConnected)
		SetConvarServerInfo('🚑LSMC', EMSConnected)
		SetConvarServerInfo('👨‍🔧LSVS', MechanicConnected)
		SetConvarServerInfo('🌲Baumfäller', lumber)
		SetConvarServerInfo('🚚Trucker', trucker)
		SetConvarServerInfo('💤Arbeitslos', Arbeitslos)


	end
end)
