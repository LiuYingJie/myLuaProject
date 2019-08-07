





function class(className)
	local tb = {}



	tb.create = function(self)
		local son = {}

		son.__super = tb

		son.__index = function(my,key)
			local data = rawget(my,key)
			if data then
				return data
			else
				local data = rawget(tb,key)
				if data then
					return data
				else
					print("空值")
				end
			end
		end
		setmetatable(son,son)
		return son
	end



	return tb
end



