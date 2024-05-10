%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/sonata-op58-allegro-parts.ily"
\include "includes/sonata-op58-scherzo-parts.ily"
\include "includes/sonata-op58-largo-parts.ily"
\include "includes/sonata-op58-finale-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDFs

\tocItem \markup "Allegro in B minor"
\sonataAllegroNotes
\pageBreak

\tocItem \markup \concat { 
  "Scherzo in E" \raise #0.75 \teeny \flat " major" 
}
\sonataScherzoNotes
\pageBreak

\tocItem \markup "Largo in B major"
\sonataLargoNotes
\pageBreak

\tocItem \markup "Finale in B minor"
\sonataFinaleNotes

% Midi

\sonataAllegroMidi
\sonataScherzoMidi
\sonataLargoMidi
\sonataFinaleMidi
