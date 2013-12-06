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
    a'4 \stemUp <a cis e>
  } 

  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

