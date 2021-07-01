--* preprocess_ivan = true
EXTERNAL_ACCESS()
EDITOR_OBJECT{
  svg = [[<circle fill="red" r="1.75" cx="0" cy="0" /><rect fill="gray" x="-.5" y="1.5" width="1" height="0.5" />]],
  properties = {{type = "position", key = "position"}, {type = "rotation", name = "Rotation", key = "rotation"}},
}
local function circle(r, x, y, z)
  x = x or 0
  y = y or 0
  z = z or 0
  local o = {}
  for a = 0, (math.pi * 2) - 0.001, (math.pi * 2) / 8 do
    table.insert(o, vertex((math.cos(-a) * r) + x, (math.sin(-a) * r) + y, z))
  end
  return o
end
REQUIRE_FILE("nie-src/nie-game/oft/location/kawaii/objects/oven.nio")
return require"nie-src/nie-game/nie/template/static_object".create(SOURCE, {
  filename = "nie-src/nie-game/oft/location/kawaii/objects/oven.nio",
  render_data = {diffuse = require("nie-src/nie-game/default_data").white},
  collision = {circle(1.75, 0, 0, 0)},
})