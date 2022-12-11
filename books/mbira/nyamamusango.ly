\version "2.22.2"

%% mbira piece

upper = \relative c' {
  \clef treble
  \key c \major
  \time 12/8

  \repeat volta 4 {
    r8 d' r c r a r c r c r a
    | r d r c r a r c r b r a
    | r d r b r g r b r b r g
    | r c r b r g r b r b r a
  }
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 12/8

  \repeat volta 4 {
    d8 r f' c, r4 c8 r f' c, r d'
    | d, r f' c, r4 c8 r f' b,, r d'
    | d, r f' b,, r4 g8 r f' g, r c'
    | c, r e' b, r4 g8 r f' g, r d'
  }
}

\score {
  \new PianoStaff \with { instrumentName = "Mbira" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}

\score {
  \unfoldRepeats {
    <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  }
  \midi {
    \tempo 4 = 190
  }
}
