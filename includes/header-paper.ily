%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

#(set-global-staff-size 18)

\header {
  title = ##f
  composer = ##f
  opus = ##f
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/f/fa/IMSLP130312-PMLP02364-FChopin_Piano_Sonata_No.3,_Op.58_BH_FE.pdf" % SrcA
  source = "https://vmirror.imslp.org/files/imglnks/usimg/4/4d/IMSLP122149-PMLP02364-op_58_chopin_sonata_3_autograph.pdf" % Autograph
  source = "https://imslp.eu/files/imglnks/euimg/4/48/IMSLP826380-PMLP02364-E825595_31-74-Chopin--sonatas--Ekier.pdf" % Urtext
  source = "https://www.youtube.com/watch?v=xGJxmCOPFVM" % Performance
  copyright = \markup { 
    \center-column { \concat {
      "Copyright © 2024 Knute Snortum. This piece licensed under the " 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "CC BY-SA 4.0 License."
    } }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5

  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
    
  tocTitleMarkup = \markup \huge \bold \column {
    \fill-line { "Table of Contents" }
    \hspace #1
  }
  tocItemMarkup = \tocItemWithDotsMarkup
  print-all-headers = ##t
}

\layout {
  \context {
    \Score
    % I have decided to not omit bar numbers.  Doing so causes an error in
    % compiling in the Allegro movement that I can't track down.
    % \omit BarNumber
    \override Slur.details.free-head-distance = 0.5
  }
  \context {
    \Voice
    \override Tie.minimum-length = 3
  }
  % Helps keep dynamics from intersecting the span bar line.
  \context { 
    \Dynamics
    \consists Pure_from_neighbor_engraver
    \remove Bar_engraver
  }
}

% Better dynamic performance
\midi {
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
  \context {
    \Score
    midiMinimumVolume = #0.20
    midiMaximumVolume = #0.99
  }  
}