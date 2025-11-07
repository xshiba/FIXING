    local a
    hookfunction(getrenv().getfenv, function(...)
        a = debug.info(3, "s")
        print("ac_trace:", a)
        return coroutine.yield()
    end)
    repeat
        task.wait()
    until a
    local function b()
        local c = debug.getinfo(4)
        return (c and c.source and c.source:match("AcgNlwAVz9D")) or debug.info(3, "s")
    end
    local d
    d = hookfunction(getfenv, function(...)
        if checkcaller() or not b() then
            return d(...)
        end
        return task.wait(9e9)
    end)
    task.spawn(pcall, function()
        local e = game:GetService("ScriptContext")
        for f, g in next, getconnections(e.Error) do
            g:Disable()
        end
        for h, i in next, getgc() do
            if typeof(i) == "function" and islclosure(i) then
                for _, j in next, debug.getconstants(i) do
                    if j == "4503599627370495" then
                        hookfunction(
                            i,
                            function()
                            end
                        )
                        warn("abcdefghihjkmnopqrstuvwyz")
                        break
                    end
                end
            end
        end
    end)
    warn("done")
