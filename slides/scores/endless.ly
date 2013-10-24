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
    \time 2/4
    c8 cis4. | cis8 d4. | d8 dis4. | dis8 e4. | e8 f4. | f8 fis4. | fis8 g4. | g8 gis4. | gis8 a4. | a8 ais4. | ais8 b4. | b8 c4. \bar ":|"
  } 

  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
