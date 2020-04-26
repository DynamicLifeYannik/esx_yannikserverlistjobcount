# esx_yannikserverlistjobcount

Requirements

ESX.
and your jobs.

🔧 Setup

Add the following things to your server.cfg:

add_ace resource.esx_yannikjobserverlist command.sets allow
esx_yannikjobcountserverlist

❓ How do I add other jobs?

Just go to server.lua copy the code here an example:

dealer = 0
if xPlayer.job.name == 'dealer' then
	dealer = dealer + 1
end

SetConvarServerInfo('💊Dealer', dealer)

Have fun!

I am of course available to answer any questions ;)

