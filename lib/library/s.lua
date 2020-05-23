local S = function(self, x, y )

  self.x = x
  self.y = y
  self.name = 'south'
  -- self.info = 'Moves southward, or bangs'
  self:move(0,1)
  
end

return S