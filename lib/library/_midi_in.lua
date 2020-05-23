local midi_in = function ( self, x, y )
  
  self.y = y
  self.x = x  
  self.name = 'midi in'
  self.ports = { {1, 0, 'in-ch'}, {2, 0, 'in-x'}, {0, 1, 'key-out' }, {-4, 1, 'bang-out'} }

  self:spawn(self.ports)

  local ch = self:listen( self.x + 1, self.y ) or 1
  local keyout = self.notes[ ( ( self.vars.midi[ch] or 1 ) % 12 ) + 1 ]
  local val = 1
  if keyout ~= keyout2 then
  	val = 0 
  end
  local keyout2 = keyout
  local bangout = ( val == 0 ) and '*' or '.'
  local a = util.clamp(self:listen(self.x + 2, self.y) or 1, 1, 35)
  local offset_x = a + self.x

  
  self:write( 0, 1, keyout )
  self:write(0, 1, bangout(offset_x, 0))
  
end

return midi_in