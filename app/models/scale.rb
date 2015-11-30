class Scale

  NOTES = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
  SCALE_MAJOR = [0, 2, 4, 5, 7, 9, 11, 12]

  def initialize(root_note, scale_type)
    @root_note = root_note
    @scale_type = scale_type
  end

  def notes
    output_array = []
    starting_note = NOTES.index(@root_note)
    SCALE_MAJOR.each do | offset |
      output_array << NOTES[(starting_note + offset) % 12]
    end
    output_array
  end


  def major
    W W H W W W H
  end

  def minor
    W H W W H W W
  end

  def ionian
    W W H W W W H
  end

  def dorian
    W H W W W H W
  end

  def phrygian
    H W W W H W W
  end

  def lydian
    W W W H W W H
  end

  def mixolydian
    W W H W W H W
  end

  def aeolian
    W H W W H W W
  end

  def locrian
    H W W H W W W
  end

end

s = Scale.new('B', 'MAJOR')
puts s.notes
