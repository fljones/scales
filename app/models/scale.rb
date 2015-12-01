class Scale

  NOTES = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
  MAJOR = [0, 2, 4, 5, 7, 9, 11, 12]
  MINOR = [0, 2, 3, 5, 7 ,8, 10, 12]
  IONIAN = [0, 2, 4, 5, 7, 9, 11, 12]
  DORIAN = [0, 2, 3, 5, 7, 9, 10, 12]
  PHRYGIAN = [0, 1, 3, 5, 7, 8, 10, 12]
  LYDIAN = [0, 2, 4, 6, 7, 9, 11, 12]
  MIXOLYDIAN = [0, 2, 4, 5, 7, 9, 10, 12]
  AEOLIAN = [0, 2, 3, 5, 7 ,8, 10, 12]
  LOCRIAN = [0, 1, 3, 5, 6, 8, 10, 12]
  SCALE_LIST = ["MAJOR", "MINOR", "IONIAN", "DORIAN", "PHRYGIAN", "LYDIAN", "MIXOLYDIAN", "AEOLIAN", "LOCRIAN"]

  def initialize(root_note, scale_type)
    @root_note = root_note
    @scale_type = scale_type
  end

  def notes
    output_array = []
    starting_note = NOTES.index(@root_note)
    MAJOR.each do | offset |
      output_array << NOTES[(starting_note + offset) % 12]
    end
    output_array
  end
end
