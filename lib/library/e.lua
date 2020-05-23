local E = function( self, x, y )
  
  self.x = x
  self.y = y
  self.name = 'east'
  -- self.info = 'Moves eastward, or bangs'
  self:move(1, 0)

end

return E