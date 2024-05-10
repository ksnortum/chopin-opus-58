%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . -6) (0 . -2) (2 . 2.5))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 1.5) (0 . 2) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 2) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . -1.5) (0 . -4) (0 . 3.5) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -2))
                        ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 2.5) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . -3) (0 . 4) (0 . 1) (0 . 0))
                        ((0.5 . -1) (0 . -20) (0 . -9) (0 . 4))
                        ) \etc
slurShapeC = \shape #'(
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                        ((0 . 0) (0 . 0) (-1 . 1) (0.25 . 4.5))
                        ) \etc
slurShapeD = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0) (-1 . 1) (0.25 . 3.5))
                        ) \etc
slurShapeE = \shape #'((1 . 0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 1) (0 . 2.5))
                        ) \etc
slurShapeG = \shape #'(
                        ((0 . 3) (0 . 2) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 2) (0 . 3))
                        ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 2) (0 . 3))
                        ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 3))
                        ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 3))
                        ) \etc
slurShapeK = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0) (-1 . 1) (0.25 . 3.5))
                        ) \etc
slurShapeL = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0) (-1 . 1) (0.25 . 3.5))
                        ) \etc

%%% Music %%%

global = {
  \time 3/4
  \key ef \major
}

rightHandUpper = \relative {
  \partial 4 g8-\slurShapeA ( af |
  a8 c bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef8 bf g ef bf g |
  ef8 g, c ef g f |
  ef8 af, d c b g |
  
  \barNumberCheck 9
  af8 a bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf bf c' bf |
  g8 ef c bf g ef |
  c8 bf g c, d g |
  f8 ef a, bf b c | \bar "||"
  
  \barNumberCheck 17
  cs8 ef d bf' fs a |
  g8 d bf d g bf |
  cs8 ef d bf' fs a |
  g8 d bf d g bf |
  \ottavaUnderSlur \ottava 1 cs8 d d' a c! bf |
  % last eight, Urtext has a but this doesn't match the Autograph
  g d bf \ottava 0 g d bf |
  c8 bf g d e af |
  g f c g af bf |
  
  \barNumberCheck 25
  b8 df c af' e g |
  f8 c af c f af |
  b8 df c af' e g |
  f8 c af c f af |
  \ottavaUnderSlur \ottava 1 b8 c c' g bf! af |
  \ottava 0 f8 d c af f d |
  c8 af f d af' c, |
  b g af\prall-\underSlurTwo ^\prallFlat g g' g, |
  
  \barNumberCheck 33
  af8-\underSlur ^\aTempo a bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef8 bf g ef bf g |
  ef8 g, c ef g f |
  ef8 af, d c b g |
  
  \barNumberCheck 41
  af8 a bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf bf c' bf |
  g8 ef c bf g ef |
  c8 a c bf c' bf |
  g8 ef c bf g ef |
  
  \barNumberCheck 49
  c8 a c bf c' bf |
  g8 ef c bf g' ef |
  c8 bf g g' ef c |
  bf8 g ef' c bf g |
  \clef bass ef8 d-> f ef df-> f |
  ef8 c-> f ef cf-> f |
  ef8 bf-> f' ef a,-> f' |
  \stemUp ef8 c!-> f ef bf-> g' |
  
  \barNumberCheck 57
  ef,4-.) r r \stemNeutral |
  \clef treble <ef''' ef'>4-> r <ef,, ef'>8-. q-. |
  q2.->~ |
  q2. | \bar "||"
  \key b \major
  \voiceOne 
  ds'2. |
  <cs_~ e~>2. |
  q2 <e gs>4 |
  fs2.~ |
  
  \barNumberCheck 65
  fs2 fs4( |
  gs2. |
  <ds b'>2. |
  ds2.) |
  <b e>2.-\slurShapeF ( |
  <b gs'>2. |
  <b cs>2. |
  <b e>2. |
  
  \barNumberCheck 73
  ds2. |
  cs2.~ |
  cs2. |
  css2. |
  ds2. |
  e2. |
  b2.~ |
  b2.) |
  
  \barNumberCheck 81
  ds2.( |
  e2. |
  b2.~ |
  b2.) |
  cs2.-\slurShapeG ( |
  ds2. |
  b2.~ |
  b2.) |
  
  \barNumberCheck 89
  s2. * 4 |
  \oneVoice r4 r <as as'>8^( q |
  q2.) |
  es'2.-\slurShapeH ^( |
  <as, fs'>2. |
  
  \barNumberCheck 97
  cs2.~ |
  cs2.~ |
  <a cs>2.) |
  R2. |
  r4 r <cs cs'>8^( q |
  q2.) |
  <af af'>2.~-\slurShapeI ^\( |
  q2.~ |
  
  \barNumberCheck 105
  q2.~ |
  q2.~ |
  <af\=1( af'\=2^(>2. |
  <gs!\=1) gs'!\=2)>2.\) |
  \voiceOne gs'2.( |
  a2. |
  e2.~ |
  e2.) |
  
  \barNumberCheck 113
  gs2.( |
  a2. |
  e2.~ |
  e2.) |
  fs2.( |
  gs2. |
  e2.~ |
  e2.~ |
  
  \barNumberCheck 121
  e2.~ |
  e2.~ |
  e2. |
  cs2.) |
  ds2.-\slurShapeJ ( |
  <cs e>2.~ |
  q2 <e gs>4 |
  fs2.~ |
  
  \barNumberCheck 129
  <ds fs>2) fs4( |
  gs2. |
  <ds b'>2. |
  ds2.) |
  e2.( |
  <b gs'>2. |
  <b cs>2. |
  <b e>2. |
  
  \barNumberCheck 137
  ds2. |
  cs2.~ |
  cs2. |
  css2. |
  ds2. |
  e2. |
  b2.~ |
  b2.) |
  
  \barNumberCheck 145
  ds2.( |
  e2. |
  b2.~ |
  b2.) |
  cs2.( |
  ds2. |
  b2.~ |
  b2) s4 |
  
  \barNumberCheck 153
  s2. * 4 | \bar "||"
  \key ef \major
  \oneVoice r4^\aTempo bf8-\slurShapeB ( g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef g, bf ef g af |
  
  \barNumberCheck 161
  a8 c bf g' d f |
  ef8 bf g ef bf g |
  ef8 g, c ef g f |
  ef8 af, d c b g |
  af8 a bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef8 g, bf ef g af |
  
  \barNumberCheck 169
  a8 c bf bf c' bf |
  g8 ef c bf g ef |
  c8 bf g c, d g |
  f8 ef a, bf b c | \bar "||"
  cs8 ef d bf' fs a |
  g8 d bf d g bf |
  cs8 ef d bf' fs a |
  g8 d bf d g bf |
  
  \barNumberCheck 177
  \ottavaUnderSlur \ottava 1 cs8 d d' a c! bf |
  % last eight note, a in Urtext but not in Autograph
  g d bf \ottava 0 g d bf |
  c8 bf g d e af |
  g f c g af bf |
  b8 df c af' e g |
  f8 c af c f af |
  b8 df c af' e g |
  f8 c af c f af |
  
  \barNumberCheck 185
  \ottavaUnderSlur \ottava 1 b8 c c' g bf! af |
  \ottava 0 f8 d c af f d |
  c8 af f d af' c, |
  b g af\prall-\underSlurTwo ^\prallFlat g g' g, |
  af8-\underSlur ^\aTempo a bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef8 g, bf ef g af |
  
  \barNumberCheck 193
  a8 c bf g' d f |
  ef8 bf g ef bf g |
  ef8 g, c ef g f |
  ef8 af, d c b g |
  af8 a bf g' d f |
  ef8 g, bf ef g af |
  a8 c bf g' d f |
  ef8 g, bf ef g af |
  
  \barNumberCheck 201
  a8 c bf bf c' bf |
  g8 ef c bf g ef |
  c8 a c bf c' bf |
  g8 ef c bf g ef |
  c8 a c bf c' bf |
  g8 ef c bf g' ef |
  c8 bf g g' ef c |
  bf8 g ef' c bf g |
  
  \barNumberCheck 209
  \clef bass ef8 d-> f ef df-> f |
  ef8 c-> f ef cf-> f |
  ef8 bf-> f' ef a,-> f' |
  \stemUp ef8 c!-> f ef bf-> g' |
  ef,4) r r \stemNeutral |
  \clef treble <ef''' ef'>4-> r <ef,, ef'>8-. q-. |
  q2.->~ |
  q4 r r | \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 3 |
  \hideNoteHead ef'2.-\slurShapeE ( |
  \key b \major 
  \hideNoteHead ds2.) |
  s2. |
  \voiceFour 
  s2 \hideNoteHead e4~ |
  e2. |
  
  \barNumberCheck 65
  ds2 ds4~ |
  << 
    { ds2. | s2. | s2. | } 
    \new Voice { \voiceTwo s4 b2~ | b2.~ | b2. | } 
  >>
  s2. * 4 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 5 |
  \hideNoteHead cs2.( |
  df2) c4 |
  c4 b af |
  
  \barNumberCheck 105
  c2 df4 |
  df2 c4 |
  df2 d4 |
  << 
    { d4 cs d~ | <gs, d'>2 <d' fs!>4 | } 
    \new Voice { \voiceTwo \hideNoteHead gs,2.~ | \hideNoteHead gs2. | } 
  >>
  <d' fs>4 <cs e> <b d> |
  q2 <a cs>4 |
  q2 r4 |
  
  \barNumberCheck 113
  r4 r <d fs> |
  q4 <cs e> <b d> |
  q2 <a cs>4 |
  q2.~ |
  q2 s4 |
  s2. * 3 |
  
  \barNumberCheck 121
  s2. * 3 |
  \hideNoteHead cs2.~ |
  cs2 b4~ |
  b4 s2 |
  s2 \hideNoteHead e4~ |
  e2. |
  
  \barNumberCheck 129
  << 
    { s2 ds4~ | ds2. | s2. * 3 | } 
    \new Voice { s2. | s4 \voiceTwo b2~ | b2.~ | b2.~ | b2. | } 
  >>
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \partial 4 s4 |
  s2 \voiceThree af!4( |
  g4 ef,) s |
  s2 af''!4( |
  g4 ef,) s |
  s2. * 4 |
  
  \barNumberCheck 9
  s2 af!4( |
  g4 ef,) s |
  s2 af''!4( |
  g4 ef,) s |
  s2. * 2 |
  s2 af4~ |
  af4 g s |
  
  \barNumberCheck 17
  s2 c!4( |
  bf4 g,) s |
  s2 c''!4( |
  bf4 g,) s |
  s2. * 2 |
  s2 bf4( |
  af4 f,) s |
  
  \barNumberCheck 25
  s2 bf'!4( |
  af4 f,) s |
  s2 bf''!4-\slurShapeC ( |
  af4 f,) s |
  s2. * 4 |
  
  \barNumberCheck 33
  s2 af!4( |
  g4 ef,) s |
  s2 af''!4( |
  g4 ef,) s |
  s2. * 4 |
  
  \barNumberCheck 41
  s2 af!4-\slurShapeD ( |
  g4 ef,) s |
  s2 af''!4( |
  g4 ef,) s |
  s2. * 4 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 4 |
  \key b \major 
  <<
    { s2 b'4~ | b4 as gs | }
    \new Voice { \voiceThree fs2._~ | \voiceTwo \hideNoteHead fs2. | }
  >> 
  as2 as4~ |
  as4 b cs~ |
  
  \barNumberCheck 65
  << 
    { cs2 cs4~ | cs4 b as | } 
    \new Voice { \voiceFour \hideNoteHead fs2.~ | fs4 s2 | } 
  >>
  as4 gs2~ |
  gs2. |
  gs2 gs4 |
  gs4 fs e |
  e2 e4 |
  e4 ds cs |
  
  \barNumberCheck 73
  as'2 as4 |
  as4 b gs |
  gs2 gs4 |
  gs4 as fs~ |
  <ds fs>2 <a' cs>4 |
  q4 <gs b> <fs a> |
  q2 <e gs>4 |
  q2 r4 |
  
  \barNumberCheck 81
  r4 r <a cs> |
  q4 <gs b> <fs a> |
  q2 <e gs>4 |
  q2 r4 |
  r4 r <gs b>~ |
  q4 <fs as!> <e gs> |
  q2 <ds fs>4 |
  q2 cs4( |
  
  \barNumberCheck 89
  cs2 ds4 |
  ds2 b4 |
  b2 fs4 |
  % third beat, Urtext has gss here but it's not in the Autograph
  fs2 gs4) |
  s2. |
  \staffUp \hideNoteHead as'2._~ |
  \voiceFour as2 \staffDown \voiceThree gs4 |
  % third beat, cs in Urtext and Autograph
  gs4 fs cs |
  
  \barNumberCheck 97
  <fs as>2 <gs b>4 |
  q4 <fs as> <es gss> |
  es2( fs4) |
  s2. * 3 |
  s2 c4 |
  c4 df f |
  
  \barNumberCheck 105
  c2 b4 |
  b2 c4 |
  b2.~ |
  b2. |
  s2. * 4 |
  
  \barNumberCheck 113
  s2. * 4 |
  s2 <b' d>4 |
  q4 <a cs> <gs b> |
  q2 <a cs>4 |
  q4 <gs b> <fs a> |
  
  \barNumberCheck 121
  q2 <gs b>4 |
  q4 <fs a> <gs b> |
  <e gs>2.~ |
  q2. |
  s2. |
  s4 as! gs |
  as2 as4~ |
  as4 b cs~ |
  
  \barNumberCheck 129
  << 
    { cs2 cs4~ | cs4 b as | } 
    \new Voice { \voiceFour \hideNoteHead fs2.~ | fs4 s2 | } 
  >>
  as4 gs2~ |
  gs2.~ |
  gs2 gs4 |
  gs4 fs e |
  e2 e4 |
  e4 ds cs |
  
  \barNumberCheck 137
  % third beat tied in Urtext but not in Autograph
  as'2 as4 |
  as4 b gs |
  % third beat tied in Urtext but not in Autograph
  gs2 gs4 |
  gs4 as fs~ |
  <ds fs>2 <a' cs>4 |
  q4 <gs b> <fs a> |
  q2 <e gs>4 |
  q2 r4 |
  
  \barNumberCheck 145
  r4 r <a cs> |
  q4 <gs b> <fs a> |
  q2 <e gs>4 |
  q2 r4 |
  r4 r <gs b>~ |
  q4 <fs as!> <e gs> |
  q2 <ds fs>4 |
  q2 cs4 |
  
  \barNumberCheck 153
  cs2 ds4 |
  ds2 b4 |
  b2 gs4 |
  gs2 a4 |
  \key ef \major
  s2 af'4( |
  g4 ef,) s4 |
  s2 af''!4( |
  g4 ef,) s |
  
  \barNumberCheck 161
  s2. * 4 |
  s2 af!4-\slurShapeK ( |
  g4 ef,) s |
  s2 af''!4( |
  g4 ef,) s |
  
  \barNumberCheck 169
  s2. * 2 |
  s2 af4~ |
  af4 g s |
  s2 c!4( |
  bf4 g,) s |
  s2 c''!4( |
  bf4 g,) s |
  
  \barNumberCheck 177
  s2. * 2 |
  s2 bf4-\slurShapeL ( |
  af4 f,) s |
  s2 bf'!4( |
  af4 f,) s |
  s2 bf''!4( |
  af4 f,) s |
  
  \barNumberCheck 185
  s2. * 4 |
  s2 af!4( |
  g4 ef,) s |
  s2 af''!4( |
  g4 ef,) s |
  
  \barNumberCheck 193
  s2. * 4 |
  s2 af!4( |
  g4 ef,) s |
  s2 af''!4( |
  g4 ef,) s |
  
  \barNumberCheck 201
  s2. * 4 |
}

leftHandLower = \relative {
  \partial 4 r4 |
  r4 r \voiceTwo bf,~ |
  bf2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble bf'~ |
  bf2 \oneVoice r4 |
  r4 r <bf' g'>( |
  <g ef'>4) r r |
  % c in Urtext and Autograph
  \clef bass c,,2.(_\> |
  f,2\! g8) r |
  
  \barNumberCheck 9
  r4 r \voiceTwo bf~ |
  bf2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble bf'~ |
  bf2 \oneVoice r4 |
  r4 r <bf' g'>( 
  <g ef'>4) r r |
  r4 r \voiceTwo \clef bass bf,, |
  ef2 \oneVoice r4 |
  
  \barNumberCheck 17
  r4 r \voiceTwo d~ |
  d2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble d'~ |
  d2 \oneVoice r4 |
  r4 r <d' bf'>( |
  <bf g'>4) r r |
  r4 r \voiceTwo \clef bass c,,4~ |
  c2 \oneVoice r4 |
  
  \barNumberCheck 25
  r4 r \voiceTwo c4~ |
  c2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble c'4~ |
  c2 \oneVoice r4 |
  R2. |
  <c' d af'>2 r4 |
  R2. |
  \clef bass <g,, d'>2 r4 |
  
  \barNumberCheck 33
  r4 r \voiceTwo bf~ |
  bf2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble bf'~ |
  bf2 \oneVoice r4 |
  r4 r <bf' g'>( |
  <g ef'>4) r r |
  \clef bass c,,2.(_\> |
  f,2\! g8) r |
  
  \barNumberCheck 41
  r4 r \voiceTwo bf~ |
  bf2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble bf'~ |
  bf2 \oneVoice r4 |
  r4 r <bf' g'>( |
  <g ef'>4) r r |
  r4 r \clef bass <bf, g'>( 
  <g ef'>4) r r |
  
  \barNumberCheck 49
  r4 r c8 bf |
  g8 ef c bf g' ef |
  c8 bf g g' ef c |
  bf8 g ef' c bf g |
  ef8 d-> f ef df-> f |
  ef c-> f ef cf-> f |
  ef8 bf-> f' ef a,-> f' |
  ef8 c!-> f ef bf-> g' |
  
  \barNumberCheck 57
  ef,4-. r r |
  <g'' bf ef g>4-> r ef,8-. ef-. |
  ef2.->~ |
  ef2. |
  \key b \major 
  \voiceTwo <b b'>2.~ |
  <b' fs'>~ |
  q2.~ |
  q2. |
  
  \barNumberCheck 65
  q2.~ |
  b2.~ |
  % third beat, tie in Urtext but not in Autograph
  b2 b4 |
  b4 as gs |
  gs4 cs,2~ |
  cs2. |
  gs'4 cs,2~ |
  cs2. |
  
  \barNumberCheck 73
  <fs e'>2.~ |
  q2.~ |
  % tie in Urtext and Autograph
  q2.~ |
  q2. |
  b,2.~ |
  b2.~ |
  b2.~ |
  b2. |
  
  \barNumberCheck 81
  <b b'>2.~ |
  q2.~ |
  q2.~ |
  q2. |
  q2.~ |
  q2.~ |
  q2.~ |
  q2 cs4 |
  
  \barNumberCheck 89
  cs2 ds4 |
  ds2 b4 |
  b2 fs4 |
  % third beat, Urtext has gss here but it's not in the Autograph
  fs2 gs4 |
  \oneVoice <as as'>2 <gs gs'>4~ |
  q4 <fs fs'> <ds ds'> |
  \voiceTwo <css css'>2. |
  <cs! cs'!>2.~ |
  
  \barNumberCheck 97
  <cs' cs'>2.~ |
  q2. |
  <fs cs'>2. |
  \oneVoice <a, a'>4( <b b'> <d d'> |
  <cs cs'>2 <b b'>4~ |
  q4 <a a'> <fs fs'> |
  \voiceTwo <f f'>2.)~ |
  f'2.~ |
  
  \barNumberCheck 105
  f2.~ |
  f2. |
  f2 f4 |
  f2 e4 |
  \oneVoice <e e'>2.~ |
  q2.~ |
  q2.~ |
  q2. |
  
  \barNumberCheck 113
  q2.~ |
  q2.~ |
  q2.~ |
  q2. |
  \voiceTwo q2.~ |
  q2.~ |
  q2.~ |
  q2.~ |
  
  \barNumberCheck 121
  q2.~ |
  q2.~ |
  e2.~ |
  e2. |
  <fs fs'>2.~ |
  q2.~ |
  q2.~ |
  q2. |
  
  \barNumberCheck 129
  <b fs'>2.~ |
  b2.~ |
  % third beat tied in Urtext, Autograph?
  b2 b4 |
  b4 as gs |
  gs4 cs,2~ |
  cs2. |
  gs'4 cs,2~ |
  cs2. |
  
  \barNumberCheck 137
  <fs e'>2.~ |
  q2.~ |
  q2.~ |
  q2. |
  b,2.~ |
  b2.~ |
  b2.~ |
  b2. |
  
  \barNumberCheck 145
  <b b'>2.~ |
  q2.~ |
  q2.~ |
  q2. |
  q2.~ |
  q2.~ |
  q2.~ |
  q2 cs4 |
  
  \barNumberCheck 153
  cs2 ds4 |
  ds2 b4 |
  b2 gs4 |
  gs2 a4 |
  \key ef \major
  \oneVoice <bf bf'>4 r \voiceTwo bf'~ |
  bf2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble bf'~ |
  bf2 \oneVoice r4 |
  
  \barNumberCheck 161
  r4 r <bf' g'>( |
  <g ef'>4) r r |
  \clef bass c,,2.(_\> |
  f,2\! g8) r |
  r4 r \voiceTwo bf~ |
  bf2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble bf'~ |
  bf2 \oneVoice r4 |
  
  \barNumberCheck 169
  r4 r <bf' g'>( 
  <g ef'>4) r r |
  r4 r \voiceTwo \clef bass bf,, |
  ef2 \oneVoice r4 |
  r4 r \voiceTwo d~ |
  d2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble d'~ |
  d2 \oneVoice r4 |
  
  \barNumberCheck 177
  r4 r <d' bf'>( |
  <bf g'>4) r r |
  r4 r \voiceTwo \clef bass c,,4~ |
  c2 \oneVoice r4 |
  r4 r \voiceTwo c4~ |
  c2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble c'4~ |
  c2 \oneVoice r4 |
    
  \barNumberCheck 185
  R2. |
  <c' d af'>2 r4 |
  R2. |
  \clef bass <g,, d'>2 r4 |
  r4 r \voiceTwo bf~ |
  bf2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble bf'~ |
  bf2 \oneVoice r4 |
  
  \barNumberCheck 193
  r4 r <bf' g'>( |
  <g ef'>4) r r |
  \clef bass c,,2.(_\> |
  f,2\! g8) r |
  r4 r \voiceTwo bf~ |
  bf2 \oneVoice r4 |
  r4 r \voiceTwo \clef treble bf'~ |
  bf2 \oneVoice r4 |
  
  \barNumberCheck 201
  r4 r <bf' g'>( |
  <g ef'>4) r r |
  r4 r \clef bass <bf, g'>( 
  <g ef'>4) r r |
  r4 r c8 bf |
  g8 ef c bf g' ef |
  c8 bf g g' ef c |
  bf8 g ef' c bf g |
  
  \barNumberCheck 209
  ef8 d-> f ef df-> f |
  ef c-> f ef cf-> f |
  ef8 bf-> f' ef a,-> f' |
  ef8 c!-> f ef bf-> g' |
  ef,4 r r |
  <g'' bf ef g>4-> r <ef,, ef'>8-. q-. |
  q2.->~ |
  q4 r r |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \partial 4 \tag layout { s4^\leggieroWO } \tag midi { s4\p } |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 6 |
  s2 s4\> |
  s8 s\! s2 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 6 |
  s4. s^\pocoRitenuto
  s2. |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 6 |
  s2.\cresc |
  s2. |
  
  \barNumberCheck 49
  s2 s4\f |
  s2. * 7 |
  
  \barNumberCheck 57
  s2. |
  s2 s4-\tweak Y-offset -2 \ff |
  s2. * 2 |
  % key b major
  s2.^\pLegato |
  s2. * 3 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 4 |
  s2 s4\f |
  s2\> s4\p |
  s2. * 2 |
  
  \barNumberCheck 97
  s2. * 4 |
  s2 s4\f |
  s2\> s4\p |
  s2. * 2 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. |
  s2.^\pocoRitenuto |
  s2. * 2 |
  % key ef major
  s2. * 4 |
  
  \barNumberCheck 161
  s2. * 8 |
  
  \barNumberCheck 169
  s2. * 2 |
  s2 s4\> |
  s8 s\! s2 |
  s2. * 4 |
  
  \barNumberCheck 177
  s2. * 8 |
  
  \barNumberCheck 185
  s2. * 2 |
  s2 s4^\pocoRitenuto
  s2. * 5 |
  
  \barNumberCheck 193
  s2. * 8 |
  
  \barNumberCheck 201
  s2. * 2 |
  s2.\cresc |
  s2. |
  s2 s4\f |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Molto vivace" 2. = 100
  \partial 4 s4 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 6 |
  \tempo 2. = 88
  s2. |
  \tempo 2. = 76
  s2. |
  
  \barNumberCheck 33
  \tempo 2. = 100
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 4 |
  \tempo 2. = 88
  s2. * 4 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. |
  \tempo 2. = 80
  s2. |
  \tempo 2. = 72
  s2. |
  \tempo 2. = 66
  s2. |
  \tempo 2. = 100
  s2. * 4 |
  
  \barNumberCheck 161
  s2. * 8 |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2. * 8 |
  
  \barNumberCheck 185
  s2. * 2
  \tempo 2. = 88
  s2. |
  \tempo 2. = 76
  s2. |
  \tempo 2. = 100
  s2. * 4 |
  
  \barNumberCheck 193
}

pedal = {
  \partial 4 s4 |
  s2. |
  s2\sd s4\su |
  s2. |
  s2-\tweak Y-offset -2 \sd s4\su |
  s2 s4\sd |
  s2 s4\su |
  s2. * 2 |
  
  \barNumberCheck 9
  s2. |
  s2\sd s4\su |
  s2. |
  s2-\tweak Y-offset -2 \sd s4\su |
  s2 s4\sd |
  s2 s4\su |
  s2. * 2 |
  
  \barNumberCheck 17
  s2. |
  s2\sd s4\su |
  s2. |
  s2-\tweak Y-offset -2 \sd s4\su |
  s2 s4\sd |
  s2 s4\su |
  s2. |
  s2\sd s4\su |
  
  \barNumberCheck 25
  s2. |
  s2\sd s4\su |
  s2. |
  s2-\tweak Y-offset -2 \sd s4\su |
  s2. |
  s2.\sd |
  s2 s4\su |
  s2. |
  
  \barNumberCheck 33
  s2. |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2. |
  s2-\tweak Y-offset -2 \sd s4\su |
  s2 s4\sd |
  s2 s4\su |
  s2. * 2 |
  
  \barNumberCheck 41
  s2. |
  s2\sd s4\su |
  s2. |
  s2-\tweak Y-offset -2 \sd s4\su |
  s2 s4\sd |
  s2 s4\su |
  s2 s4\sd |
  s2. |
  
  \barNumberCheck 49
  s2.\su |
  s2. * 7 |
  
  \barNumberCheck 57
  s2.-\tweak Y-offset -2 \sd |
  s2. * 2 |
  s2 s4\su |
  % key b major
  s2. * 4 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. * 4 |
  s2\sd s4\su |
  s2. * 2 |
  s2-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 161
  s2 s4\sd |
  s2 s4\su |
  s2. * 2 |
  s2\sd s4\su |
  s2. * 2 |
  s2-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 169
  s2 s4\sd |
  s2 s4\su |
  s2. * 2 |
  s2. |
  s2\sd s4\su |
  s2. |
  s2-\tweak Y-offset -1.5 \sd s4\su |
  
  \barNumberCheck 177
  s2 s4\sd |
  s2 s4\su |
  s2. |
  s2\sd s4\su |
  s2. |
  s2\sd s4\su |
  s2. |
  s2-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 185
  s2. |
  s2.\sd |
  s2 s4\su |
  s2. |
  s2. |
  s2\sd s4\su |
  s2. |
  s2-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 193
  s2 s4\sd |
  s2 s4\su |
  s2. * 2 |
  s2. |
  s2\sd s4\su |
  s2. |
  s2-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 201
  s2 s4\sd |
  s2 s4\su |
  s2 s4\sd |
  s2. |
  s2.\su |
  s2. * 3 |
  
  \barNumberCheck 209
  s2. * 4 |
  s2.\sd |
  s2. * 2 |
  s4 \tag layout { s2 } \tag midi { s2\su } |
}

forceBreaks = {
  % page 1
  \partial 4 s4 |
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 9 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 9 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 10 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 10 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 9 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 10 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 9 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 10 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 9 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 5
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
}

sonataScherzoNotes =
\score {
  \header {
    title = "Scherzo"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
}

\include "articulate.ly"

sonataScherzoMidi =
\book {
  \bookOutputName "sonata-op58-scherzo"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
