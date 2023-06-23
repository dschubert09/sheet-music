\version "2.23.1"

\language "deutsch"

\header {
  title = "Ägyptische Party"
  instrument = "Klavier"
  composer = "Dario Schubert"
  opus = "Sommer 2023"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=135
}

right = \relative c {
  \global
  \clef bass
  <e h'>8.  e e8 e8. e e8 |
  e8. e16 ~ e8 e ~ e8. e16 ~ e8 e |
  
  
}

left = \relative c, {
  \global
  \clef bass
  <e h'>4 
}

\score {
  \new PianoStaff \with {
    instrumentName = "Klavier"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
