local Revproxy = {}

function Revproxy:InsertRBXM(id, par)
   local asset = game:HttpGet("https://proxy.95.fyi/fetchasset.php?assetId="..id, true)
   writefile("RevProxy"..id..".rbxm", asset, true)
   local content = getelyasset("RevProxy"..id..".rbxm")
   for _,v in ipairs(game:GetObjects(content)) do
     v.Parent = par
   end
end

function Revproxy:InsertRBXMX(id, par)
   local asset = game:HttpGet("https://proxy.95.fyi/fetchasset.php?assetId="..id, true)
   writefile("RevProxy"..id..".rbxm", asset)
   local content = getelyasset("RevProxy"..id..".rbxm")
   for _,v in ipairs(game:GetObjects(content)) do
     v.Parent = par
   end
end

return Revproxy
