\paper {
  indent = 0\mm
  line-width = 110\mm
  oddHeaderMarkup = ""
  evenHeaderMarkup = ""
  oddFooterMarkup = ""
  evenFooterMarkup = ""
}

\score {
  \relative a {
    \time 12/4
    c cis d dis e f fis g gis a ais b
  } 

  \layout { 
    \context { 
      \Staff 
      \override TimeSignature #'stencil = #point-stencil
      \override BarLine #'transparent = ##t
    } 
  } 
}
