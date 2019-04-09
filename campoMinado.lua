-- campo minado em lua

n = tonumber(io.read())

v1 = {}
v2 = {}

for i=1,n,1 do
	v1[i] = tonumber(io.read())
end

for i=1,n,1 do
	if(i < n and v1[i] == 0 and v1[i+1] == 0) then
		v2[i] = 0
	end
	if(i < n and v1[i] == 0 and v1[i+1] == 1)then
		v2[i] = 1
	end
	if(i < n and v1[i] == 1 and v1[i+1] == 0)then
		v2[i] = 1
	end
	if(i < n and v1[i] == 1 and v1[i+1] == 1)then
		v2[i] = 2
	end

	if(i < n and i > 1 and v1[i-1] == 0 and v1[i] == 0 and v1[i+1] == 0)then
		v2[i] = 0
	end
	if(i < n and i > 1 and v1[i-1] == 0 and v1[i] == 0 and v1[i+1] == 1)then
		v2[i] = 1
	end
	if(i < n and i > 1 and v1[i-1] == 0 and v1[i] == 1 and v1[i+1] == 0)then
		v2[i] = 1
	end
	if(i < n and i > 1 and v1[i-1] == 0 and v1[i] == 1 and v1[i+1] == 1)then
		v2[i] = 2
	end
	if(i < n and i > 1 and v1[i-1] == 1 and v1[i] == 0 and v1[i+1] == 0)then
		v2[i] = 1
	end
	if(i < n and i > 1 and v1[i-1] == 1 and v1[i] == 0 and v1[i+1] == 1)then
		v2[i] = 2
	end
	if(i < n and i > 1 and v1[i-1] == 1 and v1[i] == 1 and v1[i+1] == 0)then
		v2[i] = 2
	end
	if(i < n and i > 1 and v1[i-1] == 1 and v1[i] == 1 and v1[i+1] == 1)then
		v2[i] = 3
	end

	if(i == n and v1[i-1] == 0 and v1[i] == 1)then
		v2[i] = 1
	end
	if(i == n and v1[i-1] == 0 and v1[i] == 0)then
		v2[i] = 0
	end
	if(i == n and v1[i-1] == 1 and v1[i] == 1)then
		v2[i] = 2
	end
	if(i == n and v1[i-1] == 1 and v1[i] == 0)then
		v2[i] = 1
	end
end

for i=1,n,1 do
	print(v2[i])
end
