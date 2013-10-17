\paper {
  indent = 0\mm
  line-width = 110\mm
  oddHeaderMarkup = ""
  evenHeaderMarkup = ""
  oddFooterMarkup = ""
  evenFooterMarkup = ""
}

\score {
  \relative a' {
    \time 7/4
    c d e f g a b
  } 

  \layout { 
    \context { 
      \Staff 
      \override TimeSignature #'stencil = #point-stencil
      \override BarLine #'transparent = ##t
    } 
  } 
}
