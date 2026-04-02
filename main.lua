local revproxy = {}

function revproxy:Insert(id, parent)
   local asset = game:HttpGet("https://proxy.95.fyi/fetchasset.php?assetId="..id)
   writefile("RevProxy"..id..".rbxm", asset, true)
   local content = getelyasset("RevProxy"..id..".rbxm")
   content.Parent = parent
end

return revproxy
