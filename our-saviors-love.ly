global = {
  \key d \major
  \time 4/4
}

\parallelMusic #'(voiceA voiceB) {
  % Bar 1
  \relative c'
  <cis e fis> |

  g1

  % Bar 2

  % Bar 3 ...
}

\score {
  \new PianoStaff <<
     \new Staff {
       \global
       <<
         \relative c'' \voiceA
       >>
     }
     \new Staff {
       \global \clef bass
       <<
         \relative c \voiceB
       >>
     }
  >>
}