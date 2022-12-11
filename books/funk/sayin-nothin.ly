\version "2.20.0"

upper = \relative c' {
  \clef treble
  \key ees \major
  \time 4/4

  r8 <des' f bes>16 <c e a> <des f bes> <des f bes> r4 c,16 des r f g aes
  | r8 <des f bes>16 <c e a> <des f bes> <des f bes> r8 r16 bes,16 c des r f g aes
  % <c ees a>8
  % <d f b>
  % <ees g c>
  % <f aes d>
  % <g a ees'>4
  % << \tuplet 3/2 {<d' f>8 <des e> <c ees>} \\ {fis,4} >>
  % | <d fis a d>1
}

lower = \relative c' {
  \clef bass
  \key ees \major
  \time 4/4

  ees,,4 g bes8 r16 c16~ c8 ees
  | ees,4 g8 r16 bes16 r bes c bes ees c bes8
  | ees,16 bes' ees ees r bes ees,8 r16 bes a aes~ aes bes cis d
  | ees bes' ees ees r bes ees, bes a aes a bes~ bes bes cis d
  % g8 aes a b c4( <d, c'>) |
  % <g, b'>2
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi {
    \tempo 4 = 90
  }
}

