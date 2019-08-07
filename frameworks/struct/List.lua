





List = class("List",Array)



--[[
	链的实现
		


]]




function List:onCreate()
	List.super.onCreate(self,List)
	-- print("List")
	-- self.m_root = {}
end


-- function List:push(obj)
-- 	table.insert(self.m_root,obj)
-- end


-- function List:pop()
-- 	table.insert(self.m_root,obj)
-- end


-- function List:at(idx)
-- end


-- function List:len()
-- 	return 0
-- end




return List



