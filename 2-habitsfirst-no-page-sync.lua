--[[
User patch (2026-11-21): Habits First - no sync after every page turn.

Why: HabitsFirst:onPageUpdate scheduled a blocking HTTPS sync to Supabase
25 s after every page turn (statistics DB flush + 1-2 requests with 10/30 s
timeouts) on KOReader's UI thread, freezing the reader while it ran.

Effect: Habits First still syncs on closing a book, on sleep and when Wi-Fi
connects (its own 5-minute throttle), and still runs its daily update check.
Remove this file (and restart KOReader) to undo.
]]
local userpatch = require("userpatch")
local logger = require("logger")

userpatch.registerPatchPluginFunc("habitsfirst", function(plugin)
    plugin.onPageUpdate = function() end
    logger.info("habitsfirst patch: per-page sync disabled")
end)
