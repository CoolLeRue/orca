local midi_out = function ( self, x, y )
  
  self.y = y
  self.x = x  
  
  self.glyph = ':'
  self.name = 'midi'
  self.info = 'Sends MIDI note.'
  self.passive = false

  self.ports = {
    input = {1, 0, 'in-port'}, {2, 0, 'in-octave'}, {3, 0, 'in-note'}, {4, 0, 'in-velocity'}, {5, 0, 'in-length'}
  }
  
  self:spawn(self.ports)
  
  local channel = util.clamp( self:listen( self.x + 1, self.y ) or 0, 0, 16 )
  local octave = util.clamp( self:listen( self.x + 2, self.y ) or 3, 0, 8 )
  local vel = util.clamp( self:listen( self.x + 4, self.y ) or 10, 0, 16 )
  local length = util.clamp( self:listen( self.x + 5, self.y ) or 1, 0, #self.chars )
  local l = self.data.cell[self.y][self.x + 3] ~= 'null' and self.data.cell[self.y][self.x + 3] or 'C'
  local note_in = self:listen( self.x + 3, self.y ) or 0
  local note = self.chars[note_in]
  if l == string.upper(l) then note = string.upper(note) end
  local transposed = self.transpose( note, octave )
  local n, oct, velocity = transposed[1], transposed[4], math.floor(( vel / 16 ) * 127 )
  
  if self:banged( ) then
    self:notes_off(channel)
    self.midi_out_device:note_on( n, velocity, channel )
    self:add_note(channel, n, length)
  end
  
end

return midi_out