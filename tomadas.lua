
--Quantas tomadas podem ser ligadas dadas 4 reguas com x tomadas em Lua

total = 0;

function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

ss = split(io.read(), " ")
t1 = tonumber(ss[1])
t2 = tonumber(ss[2])
t3 = tonumber(ss[3])
t4 = tonumber(ss[4])

total = (t1 + t2 + t3 + t4) - 3

io.write(total, '\n')
