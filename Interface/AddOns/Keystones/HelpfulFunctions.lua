local addonName, ns = ...

function ns.contains(tbl, e)
    for k, v in pairs(tbl) do
        if (v == e) then return k end
    end
    return nil
end

--[[function ns.sortBy(tbl, e, dir)
    if (tbl[1] and tbl[1][e]) then
        table.sort(tbl, function(c1, c2) if (dir == 0) then return c1[e] < c2[e] else return c1[e] > c2[e] end end)
    end
    return tbl
end]]

function ns.sortBy(tbl, e, dir)
    if (tbl[1] and tbl[1][e]) then
        for i = 1, #tbl do
            for j = 1, i - 1 do
                if (dir == 0) then
                    if (tbl[i][e] < tbl[j][e]) then
                        local tmp = tbl[i]
                        table.remove(tbl, i)
                        table.insert(tbl, j, tmp)
                    end
                else
                    if (tbl[i][e] > tbl[j][e]) then
                        local tmp = tbl[i]
                        table.remove(tbl, i)
                        table.insert(tbl, j, tmp)
                    end
                end
            end        
        end        
    end
    return tbl
end

function ns.deepCopy(tbl)
    local u = {}
    for k, v in pairs(tbl) do u[k] = v end
    return setmetatable(u, getmetatable(t))
end

function ns.getOtherCharNames(accName, charName)
    local tbl = {}
    if (keystonesDB and keystonesDB[accName]) then
        for chrName, chr in pairs(keystonesDB[accName]) do
            if (charName ~= chrName and chr.charLvl == 110) then
                table.insert(tbl, chrName)
            end
        end
    end
    return tbl
end

function ns.rotateTable(t, l)
    for i = 1, l do
        table.insert(t, #t, table.remove(t, 1))
    end
end

--[[function digitToHex(d)
    d = math.floor(d)
    if (d < 10) then
        return tostring(d)
    else
        return string.char(d + 87)
    end
end

function hexToDigit(h)
    return (tonumber(h) or string.byte(h) - 87)
end

function numToHex(n)
    if (n < 16) then
        return digitToHex(n)
    end
    local a = math.floor(n / 16)
    
    return numToHex(a) .. digitToHex(n - 16 * a)
end

function hexToNum(h)
    if (h == "") then
        return 0
    end
    local a = string.sub(h, #h, #h)
    
    return hexToDigit(a) + 16 * hexToNum(string.sub(h, 1, #h - 1))
end

function numToHex255(n)
    return (#numToHex(n) == 1 and "0" .. numToHex(n) or numToHex(n))
end

function changeColor(c, s, a)
    if (#c ~= 8) then return c end
    s = s or 1
    a = a or 1
    
    return numToHex255(hexToNum(c:sub(1, 2)) * a) .. numToHex255(hexToNum(c:sub(3, 4)) * s) .. numToHex255(hexToNum(c:sub(5, 6)) * s) .. numToHex255(hexToNum(c:sub(7, 8)) * s)
end]]