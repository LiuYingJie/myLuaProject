





Array = class("Array")



--[[
	数组的实现
		


]]




function Array:onCreate()
	print("Array")
	self.m_root = {}
end


function Array:push(obj)
	table.insert(self.m_root,obj)
end


function Array:pop()
	return table.remove(self.m_root,1)
end


function Array:at(idx)
	return self.m_root[idx]
end



function Array:len()
	return #self.m_root
end




return Array



