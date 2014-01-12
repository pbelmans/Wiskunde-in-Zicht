\paper {
  indent = 0\mm
  line-width = 110\mm
  oddHeaderMarkup = ""
  evenHeaderMarkup = ""
  oddFooterMarkup = ""
  evenFooterMarkup = ""
}

guitarOne = \relative a { 
  \key g \major
  <a d g a c d g>1 \fermata
}

guitarTwo = \relative c''' {
  \key g \major
  <c> \fermata
}

bass = \relative c' {
  \clef bass
  \key g \major
  <d> \fermata
}

pianoLeft = \relative c {
  \clef bass
  \key g \major
  <d f> \fermata
}

pianoRight = \relative c'' {
  \key g \major
  <d g e'> \fermata
}

\score {
  <<
    \new Staff \with { instrumentName = #"gitaar (George Harrison)" } \guitarOne
    \new Staff \with { instrumentName = #"gitaar (John Lennon)" } \guitarTwo
    \new Staff \with { instrumentName = #"bas (Paul McCartney)" } \bass

    \new StaffGroup \with { instrumentName = #"piano (George Martin)" } <<
      \new Staff \pianoRight
      \new Staff \pianoLeft
    >>
  >>

  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
      \override TimeSignature #'stencil = #point-stencil
      \override BarLine #'transparent = ##t
    }
  }
}


