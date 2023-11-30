\version "2.18.0"
\language "deutsch"

\header {
  title = "Titel"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key g \major
  \time 4/4
  \tempo 4=100
}

right = \relative c'' {
  \global
  g2 a4 fis
  | g2 d
  | h'4 h c a
  | h1
  
}

leftOne = \relative c' {
  \global
  <h d>2 <c e>
  <g h d>1
  
}

leftTwo = \relative c' {
  \global
  g1
  s1
  
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
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { }
  \midi { }
}
