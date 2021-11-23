\header {
  title = "Jam in Five"
  composer = "Henré Botha"
}

\language "english"

guitarMusic = \fixed c, {
  cs16\7 r8. cs16 b, fs\6 e r e r8 r2
}

\score {
  <<
    \new StaffGroup \with {
      instrumentName = "Guitar"
    } <<
      \new Staff {
        \tempo 4 = 97
        \clef "treble_8"
        \time 5/4
        \guitarMusic
      }
      \new TabStaff \with {
        stringTunings = #guitar-seven-string-tuning
      } {
        \guitarMusic
      }
    >>
    \new DrumStaff <<
      \new DrumVoice = "cymbals" {
      \voiceOne \drummode {
        \override Beam #'positions = #'(5 . 5)
        \repeat unfold 5 {hh16 hh hh hh}
      }
      }
      \new DrumVoice = "drums" {
      \voiceTwo \drummode
      {
        \override Beam #'positions = #'(-5 . -5)
        \override TupletBracket.bracket-visibility = ##f
        \omit TupletNumber
        bd4 sn8. bd16 r bd r8 r2
        }
      }
    >>
  >>
  \layout {}
  \midi {}
}
