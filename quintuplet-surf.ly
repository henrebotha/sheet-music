\header {
  title = "Quintuplet surf"
  composer = "Henré Botha"
}

\language "english"

quintSwing = 5/4

guitarMusic = \fixed c, {
  \repeat unfold 3 \tuplet \quintSwing 4 {e16\7 e\7 e\7 d8\7 b,8\7 d16\7 ds8\7 }
  \tuplet \quintSwing 4 {e16\7 e\7 e\7 d8\7 e8\7 g16\7 gs8\7 }
  \tuplet \quintSwing 4 {a16\6 a\6 a\6 g8\6 e8\6 g16\6 gs8\6 }
  \tuplet \quintSwing 4 {a16\6 a\6 a\6 g8\6 b,8\7 d16\6 ds8\6 }
  \repeat unfold 2 \tuplet \quintSwing 4 {e16\7 e\7 e\7 d8\7 b,8\7 d16\7 ds8\7 }
  \tuplet \quintSwing 4 {b16\6 b\6 b\6 a8\6 fs8\6 a16\6 as8\6 }
  \tuplet \quintSwing 4 {a16\6 a\6 a\6 g8\6 e8\6 g16\6 gs8\6 }
  \tuplet \quintSwing 4 {e16\7 e\7 e\7 d8\7 b,8\7 d16\7 ds8\7 }
  \tuplet \quintSwing 4 {b16\6 b\6 b\6 a8\6 fs8\6 a16\6 as8\6 }
}

\score {
  <<
    \new StaffGroup \with {
      instrumentName = "Guitar"
    } <<
      \new Staff {
        \tempo 4 = 66
        \clef "treble_8"
        \time 2/4
        \guitarMusic
      }
      \new TabStaff \with {
        stringTunings = #guitar-seven-string-tuning
      } {
        \guitarMusic
      }
    >>
  >>

  \layout {}
  \midi {}
}
