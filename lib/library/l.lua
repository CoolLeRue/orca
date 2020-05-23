local L = function (self, x, y )

  self.y = y
  self.x = x
  self.name = 'lesser'
  -- self.info = 'Outputs smallest input'
  self.ports = { {-1, 0, 'input-a' }, {1, 0, 'input-b' },  {0, 1, 'lesser-output' } }
  self:spawn(self.ports)

  local a = self:listen( self.x - 1, self.y ) or 0
  local b = self:listen( self.x + 1, self.y ) or 0
  local val = a == b and '*' or '.'

  if a ~= '.' and b ~= '.' then
    val = math.min( a, b )
  end

  self:write( 0, 1, val )
end

return L