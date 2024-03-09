------------                                        ------------
------------ THIS SCRIPT IS CREATED BY HLIB LGHOULA ------------
------------                                        ------------

function togglenotif(data)
    SendNUIMessage({
        type = "notification",
        notification = data
    })
end

function clearnotif()
    SendNUIMessage({
        type = "clear"
    })
end

exports('ToggleNotify', function(data)
    togglenotif(data)
end)

exports('ClearNotify', function()
    clearnotif()
end)

RegisterNetEvent("hg-notify:ToggleNotify")
AddEventHandler("hg-notify:ToggleNotify", function(data)
    togglenotif(data)
end)

if Config.EnablePreview then
    RegisterCommand("previewnotif", function()
        exports['hg-notify']:ToggleNotify({
            status = "success",
            title = "Success",
            text = "This is a success notification",
            audio = "success",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "outline",
            position = "right top",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "success",
            title = "Success",
            text = "This is a success notification",
            audio = "success",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "filled",
            position = "right top",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "error",
            title = "Error",
            text = "This is a error notification",
            audio = "error",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "outline",
            position = "right top",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "error",
            title = "Error",
            text = "This is a error notification",
            audio = "error",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "filled",
            position = "right top",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "warning",
            title = "Warning",
            text = "This is a warning notification",
            audio = "warning",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "outline",
            position = "right top",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "warning",
            title = "Warning",
            text = "This is a warning notification",
            audio = "warning",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "filled",
            position = "right top",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "info",
            title = "Info",
            text = "This is a info notification",
            audio = "info",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "outline",
            position = "right top",
            gap = 20,
            padding = 20 
        }) 
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "info",
            title = "Info",
            text = "This is a info notification",
            audio = "info",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "filled",
            position = "right top",
            gap = 20,
            padding = 20 
        })
    end)
    RegisterCommand("notifHTMLpreview", function()
        exports['hg-notify']:ToggleNotify({
            status = "success",
            title = "This is a success notification",
            text = "<b>This</b> is a success notification",
            audio = "success",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "outline",
            position = "right bottom",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "success",
            title = "Success",
            text = "This is a success <i><b>notification</b></i>",
            audio = "success",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "filled",
            position = "right bottom",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "error",
            title = "Error",
            text = "This is a error notification",
            audio = "error",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "outline",
            position = "right bottom",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "error",
            title = "Error",
            text = "This is a error notification",
            audio = "error",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "filled",
            position = "right bottom",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "warning",
            title = "Warning",
            text = "This is a warning notification",
            audio = "warning",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "outline",
            position = "right bottom",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "warning",
            title = "Warning",
            text = "This is a warning notification",
            audio = "warning",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "filled",
            position = "right bottom",
            gap = 20,
            padding = 20 
        })
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "info",
            title = "Info",
            text = "This is a info notification",
            audio = "info",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "outline",
            position = "right bottom",
            gap = 20,
            padding = 20 
        }) 
        Wait(0)
        exports['hg-notify']:ToggleNotify({
            status = "info",
            title = "Info",
            text = "This is a info notification",
            audio = "info",
            effect = "slide",
            speed = 300,
            customClass = "",
            showIcon = true,
            autotimeout = 3000,
            type = "filled",
            position = "right bottom",
            gap = 20,
            padding = 20 
        })
    end)
    RegisterCommand("clearnotif", function()
        exports['hg-notify']:ClearNotify()
    end)
end


