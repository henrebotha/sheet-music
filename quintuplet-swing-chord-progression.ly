\header {
  title = "Quintuplet swing chord progression"
  composer = "Henré Botha"
}

\language "english"

quintSwing = 5/4

guitarMusic = \fixed c, {
  \repeat unfold 2 \tuplet \quintSwing 4 {<b,\7 ds'\6 cs''\4>8. <b,\7 ds'\6 cs''\4>8}
  \repeat unfold 2 \tuplet \quintSwing 4 {<b,\7 d'\6 cs''\4>8. <b,\7 d'\6 cs''\4>8}
  \repeat unfold 2 \tuplet \quintSwing 4 {<g\7 d'\6 b'\4>8. <g\7 d'\6 b'\4>8}
  \repeat unfold 2 \tuplet \quintSwing 4 {<gs\7 ds'\6 b'\4>8. <gs\7 ds'\6 b'\4>8}
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
    \new DrumStaff <<
      \new DrumVoice = "cymbals" {
      \voiceOne \drummode {
        \override Beam #'positions = #'(5 . 5)
        \tuplet \quintSwing 4 {hh16. hh32 hh16 hh hh}
        \tuplet \quintSwing 4 {hh16. hh32 hh16 hh hh}
        \tuplet \quintSwing 4 {hh16. hh32 hh16 hh hh}
        \tuplet \quintSwing 4 {hh16. hh32 hh16 hh hh}
        \tuplet \quintSwing 4 {hh16. hh32 hh16 hh hh}
        \tuplet \quintSwing 4 {hh16. hh32 hh16 hh hh}
        \tuplet \quintSwing 4 {hh16. hh32 hh16 hh hh}
        \tuplet \quintSwing 4 {hh16. hh32 hh16 hh hh}
      }
      }
      \new DrumVoice = "drums" {
      \voiceTwo \drummode
      {
        \override Beam #'positions = #'(-5 . -5)
        \override TupletBracket.bracket-visibility = ##f
        \omit TupletNumber
        \tuplet \quintSwing 4 {bd4 bd16}
        sn4
        \tuplet \quintSwing 4 {bd4 bd16}
        sn4
        \tuplet \quintSwing 4 {bd4 bd16}
        sn4
        \tuplet \quintSwing 4 {bd4 bd16}
        sn4
        }
      }
    >>
  >>
  \layout {}
  \midi {}
}
