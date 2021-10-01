\header {
  title = "Quintuplet swing chord progression"
  composer = "Henré Botha"
}

quintSwing = 5/4

\score {
  <<
    \new Staff {
      \tempo 4 = 66
      \clef bass
      \time 2/4
      \fixed c, {
        \tuplet \quintSwing 4 {<e gis fis'>8. <e gis fis'>8}
        \tuplet \quintSwing 4 {<e gis fis'>8. <e gis fis'>8}
        \tuplet \quintSwing 4 {<e g fis'>8. <e g fis'>8}
        \tuplet \quintSwing 4 {<e g fis'>8. <e g fis'>8}
        \tuplet \quintSwing 4 {<c g e'>8. <c g e'>8}
        \tuplet \quintSwing 4 {<c g e'>8. <c g e'>8}
        \tuplet \quintSwing 4 {<cis gis e'>8. <cis gis e'>8}
        \tuplet \quintSwing 4 {<cis gis e'>8. <cis gis e'>8}
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