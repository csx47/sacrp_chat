-- CREATED BY JAMES COLE (Discord: S. Knight#0001)

Citizen.CreateThread(function()
TriggerEvent('chat:addSuggestion','/clear','Clears Chat',{
  {},
})
TriggerEvent('chat:addSuggestion','/ooc','Out of Character Chat',{
  {name = 'message', help = 'Message to send'},
})
TriggerEvent('chat:addSuggestion','/twt','Twitter :)',{
  {name = 'message', help = 'Message to send'},
})
TriggerEvent('chat:addSuggestion','/ad','Advertisement',{
  {name = 'message', help = 'Message to send'},
})
end)