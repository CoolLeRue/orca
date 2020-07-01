local W = function (self, x, y )

  self.x = x
  self.y = y
  self.name = 'west'
  -- self.info = 'Moves westward, or bangs'
  self:move( -1, 0 )
  
end

return W