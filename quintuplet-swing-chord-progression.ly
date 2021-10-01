\header {
  title = "Quintuplet swing chord progression"
  composer = "Henré Botha"
}

\language "english"

quintSwing = 5/4

\score {
  <<
    \new Staff \with {
      instrumentName = "Guitar"
    } {
      \tempo 4 = 66
      \clef bass
      \time 2/4
      \fixed c, {
        \tuplet \quintSwing 4 {<e gs fs'>8. <e gs fs'>8}
        \tuplet \quintSwing 4 {<e gs fs'>8. <e gs fs'>8}
        \tuplet \quintSwing 4 {<e g fs'>8. <e g fs'>8}
        \tuplet \quintSwing 4 {<e g fs'>8. <e g fs'>8}
        \tuplet \quintSwing 4 {<c g e'>8. <c g e'>8}
        \tuplet \quintSwing 4 {<c g e'>8. <c g e'>8}
        \tuplet \quintSwing 4 {<cs gs e'>8. <cs gs e'>8}
        \tuplet \quintSwing 4 {<cs gs e'>8. <cs gs e'>8}
      }
    }
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
