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
        \tuplet \quintSwing 4 {<e g fis'>8. <e g fis'>8}
        \tuplet \quintSwing 4 {<e g fis'>8. <e g fis'>8}
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
        \tuplet \quintSwing 4 {bd8. r16 bd16}
        \tuplet \quintSwing 4 {sn8. r8}
        \tuplet \quintSwing 4 {bd8. r16 bd16}
        \tuplet \quintSwing 4 {sn8. r8}
        \tuplet \quintSwing 4 {bd8. r16 bd16}
        \tuplet \quintSwing 4 {sn8. r8}
        \tuplet \quintSwing 4 {bd8. r16 bd16}
        \tuplet \quintSwing 4 {sn8. r8}
        }
      }
    >>
  >>
  \layout {}
  \midi {}
}