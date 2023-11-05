config = {}

config.general = {
    language = "en" -- "de" or "en"
}

config.screenshot = {
    general = {
        command_name = "foto", -- command name to create screenshot
        cooldown = {
            enable = true, -- false to disable
            time = 10, -- in seconds
        }
    },
    webhook = {
        webhooks = {
            offical = "YOUR-WEBHOOK", -- offical webhook
            storage = "YOUR-WEBHOOK" -- webhook to safe the img / must be set
        },
        embed = {
            color = 3447003, -- https://gist.github.com/thomasbnt/b6f455e2c7d743b796917fa3c205f812
            author = {
                name = "Chabo Service",
                url = "https://discord.gg/chabo-service",
                icon_url = "https://cdn.discordapp.com/attachments/1158164032063275078/1170845665853714522/0181cd57c2645bab06996d58a8384eccad31d07a5e4240725a3e1178df847e3f.png?ex=655a8600&is=65481100&hm=1237233e192bbd08f7675a8a953c1b6b36b36821d8e28e278ef25a8ea173962d&"
            },
            title = "Ein neues Foto wurde geteilt!",
            description = "**%s** hat mit `/%s` ein Foto geteilt!",
            footer = {
                icon_url = "https://cdn.discordapp.com/attachments/1158164032063275078/1170845665853714522/0181cd57c2645bab06996d58a8384eccad31d07a5e4240725a3e1178df847e3f.png?ex=655a8600&is=65481100&hm=1237233e192bbd08f7675a8a953c1b6b36b36821d8e28e278ef25a8ea173962d&"
            }
        }
    }
}

config.language = {
    ["de"] = {
        ["create_screenshot"] = "Du hast erfolgreich ein Foto geteilt!",
        ["cooldown"] = "Du hast aktuell noch einen Cooldown",
        ["console_command"] = "Du kannst aus der Console kein Screenshot erstellen."
    },
    ["en"] = {
        ["create_screenshot"] = "You have successfully shared a photo!",
        ["cooldown"] = "You currently have a cooldown",
        ["console_command"] = "You cannot take a screenshot from the console."
    }
}


config.notify = function(src, title, msg, type, time)
    TriggerClientEvent("chabo_notify", src, type, title, msg, time)
end
