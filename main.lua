

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




local function main()

	local tree = Tree:create()



	-- local heap	 = Heap:create()




end


main()

