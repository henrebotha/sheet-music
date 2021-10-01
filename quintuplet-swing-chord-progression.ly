\header {
  title = "Quintuplet swing chord progression"
  composer = "Henré Botha"
}

\language "english"

quintSwing = 5/4

guitarMusic = \fixed c, {
  \repeat unfold 2 \tuplet \quintSwing 4 {<e'\6 gs'\5 fs''\3>8. <e'\6 gs'\5 fs''\3>8}
  \repeat unfold 2 \tuplet \quintSwing 4 {<e'\6 g'\5 fs''\3>8. <e'\6 g'\5 fs''\3>8}
  \repeat unfold 2 \tuplet \quintSwing 4 {<c'\6 g'\5 e''\3>8. <c'\6 g'\5 e''\3>8}
  \repeat unfold 2 \tuplet \quintSwing 4 {<cs'\6 gs'\5 e''\3>8. <cs'\6 gs'\5 e''\3>8}
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
      \new TabStaff {
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
