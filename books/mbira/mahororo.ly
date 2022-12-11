\version "2.20.0"

#(set-global-staff-size 18)

%% Repeats can be represented in the MIDI output by applying the \unfoldRepeats command.
%% In order to restrict the effect of \unfoldRepeats to the MIDI output only, while also generating printable scores, it is necessary to make two \score blocks; one for MIDI (with unfolded repeats) and one for the notation (with volta, tremolo, and percent repeats);
%% When using multiple voices, each of the voices must contain completely unfolded repeats for correct MIDI output. 

music = \relative c'' {
  \clef treble
  \time 12/8
  \key c \major
  \repeat volta 4 {
    g8 g, b' f b d, g g, b' e, b' d,
    | g g, c' e, c' c, g' g, b' e, b' c,
    | a' a, c' e, c' d, g g, b' e, b' d,
    | g g, b' f b d, a' a, a' f a d,
  }
}

\score {
  \music
  \layout { }
}

\score {
  \unfoldRepeats {
    \music
  }
  \midi {
    \tempo 4 = 120
  }
}
