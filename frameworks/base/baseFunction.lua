

function cclog(...)
	local arg = {...}

	-- for key,val in pairs(arg) do
	-- 	print(key, " = " , tostring(val) )
	-- end

	print(string.format(...))
end


function inherit(class,baseClass)
	if not baseClass then
		return
	end
	class.super = baseClass
	class.__index = function(my,key)
		-- print("key = ",key)
		-- local data = rawget(my,key)
		-- cclog("类(%s)想查询变量(%s)",rawget(my,"__cname"),key)
		-- if data then
		-- 	cclog("类(%s)找到变量(%s)",rawget(my,"__cname"),key)
		-- 	return data
		-- else
		-- 	local data = rawget(baseClass,key)
		-- 	cclog("类(%s)想查询变量(%s)",rawget(baseClass,"__cname"),key)
		-- 	if data then
		-- 		cclog("类(%s)找到变量(%s)",rawget(baseClass,"__cname"),key)
		-- 		return data
		-- 	else
		-- 		cclog("类(%s)没有找到变量(%s)",rawget(baseClass,"__cname"),key)
		-- 	end
		-- end


		-- print("key = ",key)
		local data = rawget(my,key)
		-- cclog("类(%s)想查询变量(%s)",rawget(my,"__cname"),key)
		if data then
			-- cclog("类(%s)找到变量(%s)",rawget(my,"__cname"),key)
			return data
		else
			local data = rawget(baseClass,key)
			-- cclog("类(%s)想查询变量(%s)",rawget(baseClass,"__cname"),key)
			if data then
				-- cclog("类(%s)找到变量(%s)",rawget(baseClass,"__cname"),key)
				return data
			else
				if baseClass[key] then
					--这里是从他继承的类寻找变量
					return baseClass[key]
				else
					--父类都没有找到
					-- cclog("类(%s)没有找到变量(%s)",rawget(baseClass,"__cname"),key)
					return function()
						cclog("空函数,不执行,找不到变量:%s",key)
					end
				end
			end
		end

	end
	setmetatable(class,class)
end


function class(className,baseClass)
	local tb = {}

	tb.__cname = className

	tb.create = function(self,...)
		local son = {}
		son.__cname = className

		inherit(son,tb)

		if son.onCreate then
			son:onCreate(...)
		end

		return son
	end


	if baseClass then
		inherit(tb,baseClass)
	end

	return tb
end



