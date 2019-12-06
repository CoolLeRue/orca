local crow_cv = function (self, x, y)
	
	self.y = y
	self.x = x
	self.name = 'crow_cv'
	self.ports = { {1, 0, 'in-port' }, {2, 0, 'in-octave' }, {3, 0, 'in-note' }, {4, 0, 'in-attack' }, {5, 0, 'in-release' } }
	self:spawn(self.ports)

	local channel = util.clamp( self:listen( self.x + 1, self.y ) or 0, 0, 1 )
	local ocatave = util.clamp( self:listen( self.x + 2, self.y ) or 4, 0, 8 )
	local note = self:glyph_at(self.x + 3, self.y) or 'C'
	local attack = util.clamp( self:listen( self.x + 4, self.y ) or 0, 0, 5 )
	local release = util.clamp( self:listen( self.x + 5, self.y ) or 1, 0, 5 )

	if self:neighbor(self.x, self.y, '*') then
		crow.output[(channel + 1)].volts = (octave + note)
        crow.output[(channel + 2)].ar(attack, release)
  end