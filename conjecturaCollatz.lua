-- conjectura de Collatz em Lua
n = 0
x = tonumber(io.read())
  
while (x ~= 1)do
    if (x % 2 == 0) then
        x = x / 2
    else
        x = 3 * x + 1;
	end
	    n = n + 1
end

io.write(n,'\n')
