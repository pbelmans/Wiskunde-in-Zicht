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
    \time 13/4
    \stemUp c g' d a' e b' fis cis' gis dis' ais eis' bis
  } 

  \layout { 
    \context { 
      \Staff 
      \override TimeSignature #'stencil = #point-stencil
      \override BarLine #'transparent = ##t
    } 
  } 
}
