--
-- Copyright (c) Uladzislau Nikalayevich <thenormalnij@gmail.com>. All rights reserved.
-- Licensed under the MIT license. See LICENSE file in the project root for details.
--

---@type SimpleHook
local SimpleHook = ModRequire "../utils/SimpleHook.lua"
---@type Events
local Events = ModRequire "../logic/Events.lua"

---@class SaveHooks : SimpleHook
local SaveHooks = SimpleHook.New()

function SaveHooks.wrap.Save(baseFun)
    Events.engine:trigger("presave")
    baseFun()
    Events.engine:trigger("postsave")
end

return SaveHooks
