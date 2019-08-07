

function import(...)
	local path = ...
	local pasth2 = string.gsub(path,"%.","\\")
	require(pasth2)
end



function addSearchPath(path)
	package.path = package.path .. ";" .. path .. "\\?.lua"
end


addSearchPath("E:\\project\\luaProject\\myLuaProject")

import("frameworks\\__init")





local function testArray()
	local array1 = Array:create()

	for i = 1, 5 do
		array1:push(i)
	end

	for i = 1,5 do
		print(array1:at(i))
	end

	local array2 = Array:create()
	for i = 1, 15 do
		array2:push(i)
	end
	print(array2:len())
end


local function testList()
	local list1 = List:create()

	for i = 1, 5 do
		list1:push(i)
	end

	for i = 1,5 do
		print(list1:pop())
	end

	-- local list2 = List:create()
	-- for i = 1, 15 do
	-- 	list2:push(i)
	-- end
	-- print(list2:len())
end

local function main()
	-- testArray()
	-- testList()

end


main()

