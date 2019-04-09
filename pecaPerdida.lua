--Peça perdida em lua

function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

n = tonumber(io.read())
ss = split(io.read(), " ")

soma1 = 0
soma2 = 0
pecaFaltante = 0
v = {}
for i=1, n-1 ,1 do
	v[i] = tonumber(ss[i])
end

for i=1,n -1 ,1 do
	soma1 = soma1 + v[i]
end

for i=1,n ,1 do
	soma2 = soma2 + i
end

pecaFaltante = soma2 - soma1

print(pecaFaltante)
