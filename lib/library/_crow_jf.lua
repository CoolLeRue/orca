local crow_jf = function (self, x, y)
	
	crow.ii.pullup(true)
	crow.ii.jf.mode(1)
	self.y = y
	self.x = x
	self.name = 'crow_ii_jf'
	self.ports = { {1, 0, 'in-port' }, {2, 0, 'in-octave' }, {3, 0, 'in-note' }, {4, 0, 'in-level' }, {5, 0, 'in-reps' } }
	self:spawn(self.ports)

	local channel = util.clamp( self:listen( self.x + 1, self.y ) or 0, 0, 5 ) + 1
	local octave = util.clamp( self:listen( self.x + 2, self.y ) or 3, 0, 8 )
	local note = self:glyph_at(self.x + 3, self.y) or 'C'
	local transposed = self:transpose( note, octave )
	local n = transposed[1]
	local level = util.clamp( self:listen( self.x + 4, self.y ) or 3, 0, 5 )
	local reps = util.clamp( self:listen( self.x + 5, self.y ) or 0, 0, 5 )

	if self:neighbor(self.x, self.y, '*') then
		crow.ii.jf.play_voice(channel, self:note_freq(n)/12, level/reps )
		redraw()
	end



end

return crow_jf