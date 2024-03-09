------------                                        ------------
------------ THIS SCRIPT IS CREATED BY HLIB LGHOULA ------------
------------                                        ------------

exports('ToggleNotify', function(source, data)
    TriggerClientEvent("hg-notify:ToggleNotify", source, data)
end)



-- local QBCore = exports['qb-core']:GetCoreObject()
-- QBCore.Commands.Add('notify', "notifypreview", {}, false, function(source)
--     exports['hg-notify']:ToggleNotify(source, {
--         status = "success", -- 'error' || 'warning' || 'success' || 'info'
--         title = "Success", -- title
--         text = "This is a success notification", -- body text
--         effect = "slide", -- 'slide' || 'fade'
--         audio = "success", -- 'error' || 'warning' || 'success' || 'info'
--         speed = 300, -- transition speed in ms
--         customClass = "", -- custom class
--         showIcon = true, -- show icon ?
--         autotimeout = 3000, -- duration in ms
--         type = "outline", -- 'outline' || 'filled'
--         position = "right top", --  'left', 'right', 'top', 'bottom', 'x-center', 'y-center' 
--         gap = 20, -- margin between notifications
--         padding = 20 -- padding
--     })
-- end, 'admin')