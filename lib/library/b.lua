-- local B = function ( self, x, y )
  
--   self.y = y
--   self.x = x
--   self.name = 'between'
--   -- self.info = 'Outputs subtraction of inputs'
--   self.ports = { {-1, 0, 'input-a' }, {1, 0, 'input-b' },  {0, 1, 'subtract-output' } }
--   self:spawn( self.ports )

--   local b = self:listen( self.x + 1, self.y ) or 0
--   local a = self:listen( self.x - 1, self.y ) or 0
--   local l = self:glyph_at( self.x + 1, self.y )
--   local cap = l ~= '.' and l == self.up(1) and true
--   local sum = self.chars[ ( a - b ) % 36 ]

--   sum = sum == '0' and '.' or ( cap and self.up(sum) or sum )

--   self:write( 0, 1, sum )
  
-- end

-- return B

local B = function ( self, x, y )
  
  self.y = y
  self.x = x
  self.name = 'bounce'
  self.ports = { {-1, 0, 'in-rate'}, {1, 0, 'in-to'},  {0, 1, 'b-out'} }
  self:spawn(self.ports)

  local to = self:listen( self.x + 1, self.y ) or 1
  local rate = self:listen( self.x - 1, self.y ) or 1
  to, rate = to == 0 and 1 or to, rate == 0 and 1 or rate

  local key = math.floor( self.frame / rate ) % ( to * 2 )
  local val = key <= to and key or to - ( key - to )
  
  self:write( 0, 1, self.chars[ val ] )
  
end

return B