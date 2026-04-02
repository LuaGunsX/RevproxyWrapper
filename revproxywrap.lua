local Revproxy = {}

function Revproxy:Insert(id, par)
   local asset = game:HttpGet("https://proxy.95.fyi/fetchasset.php?assetId="..id)
   writefile("RevProxy"..id..".rbxm", asset, true)
   local content = getelyasset("RevProxy"..id..".rbxm").Parent = par
end

return Revproxy
