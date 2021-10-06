\header {
  title = "Quintuplet swing trap beat"
  composer = "Henré Botha"
}

\language "english"

quintSwing = 5/4

\score {
  \repeat volta 2 \new DrumStaff <<
    \tempo 4 = 100
    \time 4/4
    \new DrumVoice = "cymbals" {
      \voiceOne \drummode {
        \override Beam #'positions = #'(5 . 5)
        \repeat unfold 2 \tuplet \quintSwing 4 {r8. hh8} r2
        \repeat unfold 4 hh4
      }
    }
    \new DrumVoice = "drums" {
      \voiceTwo \drummode {
        \override Beam #'positions = #'(-5 . -5)
        \override TupletBracket.bracket-visibility = ##f
        \omit TupletNumber
        bd4 bd \tuplet \quintSwing 4 {sn8. bd8} r4
        \repeat unfold 4 \tuplet \quintSwing 4 {r8. sn8}
      }
    }
  >>

  \layout {}
  \midi {}
}