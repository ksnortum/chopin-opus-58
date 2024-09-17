%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ((0 . 0) (0 . 1.5) (0 . 1.5) (0 . 0))
                      ((0 . 0) (0 . 2.5) (0 . 2) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.5))
                        ) \etc
slurShapeC = \shape #'(
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeD = \shape #'(
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ) \etc
slurShapeF = \shape #'((-1 . 3) (0 . 0) (0 . -1) (0 . 0)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -0.5) (2 . -2.5) (0 . 1) (0 . 0))
                        ((0 . 3) (0 . 3) (0.5 . 3) (0.5 . 2.5))
                        ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 0) (0 . 0))
                        ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . -1) (0 . -1))
                        ((0 . -0.5) (0 . 0) (0 . -1.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . -1.5) (0 . 0))
                        ) \etc

slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 3) (2 . 2))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . -1) (0 . -1))
                        ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 1.5) (0 . 0))
                        ((0 . 4) (0 . 4) (0 . 1.5) (0 . 0))
                        ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 5) (0 . 5) (0 . 1) (0 . 0))
                        ) \etc
slurShapeM = \shape #'((-1 . 3) (-1 . 3) (0 . 3) (0 . 3)) \etc
slurShapeN = \shape #'(
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (2 . 1) (0 . 0) (3 . -5))
                        ) \etc
slurShapeP = \shape #'((0 . 1.25) (0 . 0) (0 . 0) (0 . 1)) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 3) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 3.5) (0 . 0) (3 . 0.5))
                        ((0 . 5) (0 . 5) (0 . 5) (0 . 5))
                        ) \etc
slurShapeR = \shape #'((-1 . 2) (0 . 0) (0 . 0) (0.5 . 2.5)) \etc
slurShapeS = \shape #'(
                        ((0 . 0) (0 . 2) (0 . 1) (-0.5 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ) \etc
slurShapeT = \shape #'(
                        ((0 . -1) (0 . 2) (0 . 2) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeU = \shape #'((-0.5 . 2.5) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeV = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 2) (0 . 2) (0 . 0))
                        ((0 . 0) (0 . 2) (0 . 2) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeW = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.5)) \etc
slurShapeX = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -2)) \etc
slurShapeY = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0.5))
                        ((0 . 2) (0 . 2) (0 . 0) (0 . 0))
                        ) \etc

tieShapeA = \shape #'((0 . 0) (0 . -2) (0 . -1.5) (0 . 0)) \etc

beamPositionsA = \tweak Beam.positions #'(2.5 . 2.5) \etc

moveOttavaA = \offset OttavaBracket.Y-offset 0.5 \etc
moveOttavaB = \offset OttavaBracket.Y-offset 0.75 \etc
moveNoteA = \once \override Score.NoteColumn.X-offset = 0.4
moveClefA = \once \override Staff.Clef.extra-offset = #'(0.2 . 0)

extraSpacingA = 
  \once \override Staff.NoteHead.extra-spacing-width = #'(-1 . 1 )

%%% Music %%%

global = {
  \time 6/8
  \key b \minor
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  <fs fs'>4. <fs' fs'> |
  <fs' fs'>4. <fs,, fs'> |
  <fs b fs'>4. <fs' b fs'> |
  <fs' b fs'>4. <fs,, b fs'> |
  <fs bs fs'>4. <fs' bs fs'> |
  <fs' cs' fs>4. <fs,, cs' fs> |
  <fs cs' e fs>4. <fs' cs' e fs> |
  \ottava 1 <d'' fs d'>4. <cs fs cs'> \ottava 0 \fermataOverBarUpper |
  
  \barNumberCheck 9
  \clef bass
  \hideNoteHead b,,8( s4 s4. |
  s2. * 2 |
  \voiceOne d2.~ |
  \hideNoteHead d8 s4 s4. |
  s2. * 2 |
  fs2.~ |
  
  \barNumberCheck 17
  \hideNoteHead fs8 s4 d4 ds8 |
  \oneVoice e4.~ e8. fs16 e8 |
  d8[) r cs](  b[) r cs]( |
  fs,4. d'8[) r16 e( d8] |
  cs8[) r d](  b[) r cs]( |
  <e, fs>4. <d d'>8[) r16 e'( d8] |
  cs8[) r d](  b[) r g']( |
  fs2. |
  
  \barNumberCheck 25
  es4. e |
  ds4. d |
  cs8[) r c](  e[) r as,]( |
  b8) r s8 s4. |
  s2. |
  s4 \voiceOne <b' b'> s |
  d'2.~ |
  \hideNoteHead d8 s4 s4. |
  
  \barNumberCheck 33
  s2. |
  s4 <d, d'> s |
  fs'2.~ |
  \hideNoteHead fs8 s4 s4. |
  e4 s2 |
  s2. |
  fs,4.~ \hideNoteHead fs8 s4 |
  s2. |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 3 |
  \oneVoice <b, ds b'>4. <b, ds>-\slurShapeC ^( |
  e8 ds <as gs'> <b fs'>) r \clef bass <es, b'>( |
  <e! b' cs>4-.) r8 \clef treble gs'''16( fs e ds cs b |
  as16 gs fs e ds cs  b as gs fs es e |
  ds4.) <css es>-\slurShapeD ^( |
  
  \barNumberCheck 57
  gs'8 fs <css b'>  <ds as'>) r \clef bass <es, gss ds'>( |
  <es as ds es>4-.) r8 \clef treble \ottava 1 b''''16-\slurShapeE ( as gs fs es
    ds |
  \ottava 0 css16 b as gs fs es  ds css b as gss gs |
  fss4) <fss ds'>8^( <gs e'!> <fss ds'> <gs css> |
  % second beat, gs's in Urtext
  <fss ds'>4) q8^( <gs e'> <fss ds'> <gs css> |
  <fss ds'>4 <gs css>8 <fss ds'>4 <gs css>8 |
  <fss ds'>8 <gs css> <fss ds'> <gs css> <fss ds'> <gs css> |
  <fss ds'>4) r8 \ottava 1 gs''16-\slurShapeG ( a! gs fs! e ds |
  
  \barNumberCheck 65
  \ottava 0 cs16 ds cs b! as gs  fss gs fs e ds cs |
  ds16 e ds cs b as  gs as gs fs es ds |
  \staffDown \voiceOne css16 b as gs fs es  ds css b as es as |
  << { \hideNoteHead ds,4) } \new Voice { \oneVoice \staffUp r4 } >>
    \oneVoice \staffUp r8 <ds'' fs>4.^( |
  <css gs'>8 <ds fs> <css b'>  <ds as'>) r \clef bass <es, gss ds'>8( |
  <es as ds es>4-.) r8 \clef treble \ottava 1 b''''16( as gs fs es ds |
  \ottava 0 css16 b as gs fs es  ds css b as a gs |
  % second beat, gs in Urtext
  fs4.) <fs gs>^( |
  
  \barNumberCheck 73
  % second beat, last sixteenth chord, gs in UrText
  \voiceOne b!8 as <es ds'> \oneVoice <fs cs'>) r <gs, bs fs'>^( |
  <gs cs fs gs>4^.) r8 \ottava 1 ds''''16( cs b as gs fs |
  \ottava 0 es ds cs b as gs  fs es ds cs bs b) |
  as16-\slurShapeJ (^\leggiero b cs ds es fs  b as gs fs es ds |
  cs16 bs b as fss gs  as b bs cs ds cs |
  as16 b! cs ds es fs  b as gs fs es ds |
  cs16 bs b as fss gs  as b bs cs ds cs |
  as16 b! cs ds e! fs  gs as b cs ds e |
  
  \barNumberCheck 81
  \ottavaUnderSlur \moveOttavaA \ottava 1 ds'16 cs b e, fss gs  b as gs fs e
    ds |
  \ottava 0 cs16 b as gs fs e  ds cs bs cs css ds |
  e16 es fs fss gs fss  as gs fs e ds css |
  % second beat, ds, Urtext
  ds e fs gs as b  e ds cs b as gs |
  % second beat, gs in Urtext
  fs16 es e ds bs cs  ds e es fs gs fs |
  % first and second beats, gs's, second beat, ds,  Urtext
  ds16 e! fs gs as b  e ds cs b as gs |
  % second beat, gs in Urtext
  fs16 es e ds bs cs  ds e es fs gs fs |
  ds16 e es fs g gs  a as b bs cs d! |
  
  \barNumberCheck 89
  \ottava 1 ds16 e es fs g gs  a as b c a fs |
  css16-> fs ds a' fs ds  b-> ds c fs ds c |
  % first beat, ds in Urtext
  \ottava 0 gs16-> c a ds c a  es-> a fs c' a fs |
  css16-> fs ds a' fs ds  b-> ds c fs ds c
  % first beat, ds in Urtext
  gs16-> c a ds c a  es-> a fs c' a fs |
  % ds's in Urtext
  css16-> fs ds a' fs ds  b-> ds c fs ds c |
  \clef bass gs16-> c a ds c a  css,-> fs ds a' fs c |
  b16 c ds a' fs c  b c ds a' fs c |
  
  \barNumberCheck 97
  b16 c ds a' fs c  b c ds a' fs c |
  b16) r r8 c[( b16]) r r8 fs'[( |
  \moveNoteA b,16]) r r8 <c c'>( b' <ds, a'> ds' |
  \clef treble \voiceOne e4 b8 c4 ds8 |
  e4 b8 c4 ds8 |
  e4 e8 s4. |
  g4.~ g4 ef8 |
  g4 d8 ef4 fs8 |
  
  \barNumberCheck 105
  g4 d8 ef4 fs8 |
  g4 g8 s4. |
  b4.~ b~ |
  b4 fs8 g4 gs8 |
  a4.~ a8. b16 a8 |
  g4 fs8 e4 fs8 |
  \clef bass b,4.~ <g b>8.) \clef treble a'16( g8 | 
  fs4 g8 e4 fs8 |
  
  \barNumberCheck 113
  b,4 b8)~ <g b>8. a'16( g8 |
  fs4 g8 e4 s8 |
  b'2. |
  as4. a |
  gs4. g |
  e4 f8 <a, a'> b \moveClefA \clef bass <ds, ds'> |
  <e e'>8) s \clef treble s s4. |
  s2. |
  
  \barNumberCheck 121
  s4 \voiceOne <e' e'> s |
  g'2.~ |
  \hideNoteHead g8 s4 s4. |
  s2. |
  s4 <g, g'> s |
  b'2.~ |
  \hideNoteHead b8 s4 s4. |
  a4 s2 |
  
  \barNumberCheck 129
  s2. |
  b,4.~ \hideNoteHead b8 s4 |
  s2. * 6 |
  
  \barNumberCheck 137
  s2. * 6 | 
  \key ef \major
  s4. <ef, g>( |
  af8 g c <ef, bf'>) \oneVoice r <f, a ef'>8-\slurShapeM ^( |
  
  \barNumberCheck 145
  <f bf ef f>4-.) r8 \ottava 1 c''''16( bf af g f ef |
  \ottava 0 d16 c bf af g f  ef d c bf a af |
  g4.) <fs a>-\slurShapeN ^( |
  \voiceOne c'8 bf ef d) r <a, cs g'>( |
  <a d g a>4-.) \oneVoice r8 \ottava 1 ef''''16( d c bf a g |
  fs16 ef d c bf a  \ottava 0 g fs ef d cs c |
  b4) <b g'>8( <c af'> <b g'> <c fs> |
  <b g'>4) <b, g'>8( <c af'> <b g'> <c fs> |
  
  \barNumberCheck 153
  <b g'>4) \oneVoice <c' fs>8( <b g'>4 <c fs>8 |
  <b g'>8 <c fs> <b g'> <c fs> <b g'> <c fs> |
  <b g'>4-.) r8 \ottava 1 c''16-\slurShapeO ( df c bf af g |
  f16 g f ef d! c \ottava 0 b c bf af g f |
  g16 f ef d c bf  af g f ef d c |
  \staffDown \voiceOne b16 af g f ef d  c b af g f d) |
  \staffUp \oneVoice r4 r8 <c'' ef>4.( |
  <b f'>8 <c ef> <b af'>  <c g'>) r \clef bass <c, f c'>8( |
  
  \barNumberCheck 161
  <d f c' d>4-.) r8 \clef treble \ottava 1 af''''16( g f ef d c |
  \ottava 0 b af g f ef d  c b af g fs f |
  ef4.) <ef f>-\slurShapeP ^( |
  \voiceOne af8 g c  <ef, bf'>) \oneVoice r <f, a ef'>( |
  <f bf ef f>4-.) r8 \ottava 1 c''''16-\slurShapeQ ( bf af g f ef |
  \ottava 0 d c bf af g f  ef d c bf a af |
  g16^\leggiero af bf c d ef  af g f ef d c |
  bf16 af g f e f  g af a bf c bf |
  
  \barNumberCheck 169
  g16 af! bf c d ef  af g f ef d c |
  bf16 a af g e f  g af a bf c bf |
  g16 af! bf c df ef  f g af bf c df |
  \ottavaUnderSlur \ottava 1 ef16 f g af f' ef  df c bf af g f |
  ef16 df c bf af g  \ottava 0 f ef df c bf af |
  g16 af bf b c df  d ef g f ef df |
  c16 df ef f g af  df c bf af g f |
  ef16 df c bf a bf  b c df d f ef |
  
  \barNumberCheck 177
  c16 df ef f g af  df c bf af g f |
  ef16 df c bf a bf  b c df d f ef |
  c16 df ef f gf af  \ottavaUnderSlur \ottava 1 bf c df ef f gf |
  c16 bf af gf f ef  f ef df c bf c |
  \ottava 0 bf16 af gf f ef f  ef df c df c bf |
  af16 bff bff' gf ef c  bff gf ef c bff gf |
  ef8-.) r <c' af'>^(  <df bff'> <c af'> <df g!> |
  <c af'>4 q8  <df bff'> <c af'> <df g> |
  
  \barNumberCheck 185
  <c af'>8)\noBeam c16-\slurShapeS ( ef af bf  c ef af bf \ottavaUnderSlur
    \ottava 1 c c' |
  bf af ef c \ottava 0 bf af  ef c bf af ef c |
  \key b \minor |
  <cs e a>8-.) r <e a>-\slurShapeR ^(  <g b> <e a> <g d'> |
  <e cs'>8) r <e a>-\slurShapeR ^(  <g b> <e a> <g d'> |
  <e cs'>8)\noBeam ds16-\slurShapeT ( e a cs  e a cs e \ottavaUnderSlur 
    \moveOttavaB \ottava 1 a d! |
  cs a e cs \ottava 0 a e  cs a e cs \clef bass a e |
  <e as cs>8-.) r \clef treble <e' as>(  <g b> <e as> <g d'> |
  <e cs'>8) r <e as>(  <g b> <e as> <g d'> |
  
  \barNumberCheck 193
  <e cs'>8) r <e as>^(  <g b> <e as> <g d'>|
  q8 <e cs'>) <g b>-\slurShapeU ^(  q8 <e as> <g d'> |
  <e cs'>4-.) r8 \ottava 1 fs''16->( as g cs as g |
  ds16-> g e as g e  bs-> e cs g' e cs |
  \ottava 0 a16-> cs as e' cs as  fs-> as g cs as g |
  ds16-> g e as g e  bs-> e cs g' e cs |
  a16-> cs as e' cs as  fs-> as g cs as g |
  ds16-> g e as g e  bs-> e cs g' e cs |
  
  \barNumberCheck 201
  a16-> cs as e' cs as  \clef bass fs-> as g cs as g |
  ds16-> g e as g e  bs-> e cs g' e cs |
  fs,8-.)\noBeam g16( e' cs g  fs g as e' cs g |
  fs16 g as e' cs g  fs g as e' cs g |
  fs8) r <e' g>[( fs]) r <e gs>[( |
  fs8]) r <e a! d>[( fs]) r <e as cs>[( |
  <d b'>8]) r fs^( g4 as8 |
  b4 fs8 g4 as8 |
  
  \barNumberCheck 209
  b4 b8 b8. as16 b8 |
  d4.~ d4 bf8 |
  d4 a8 bf4 cs8 |
  d4 a8 bf4 cs8 |
  d4 d8 d8. cs16 d8 |
  fs2.~ |
  fs4 cs8 d4 ds8 |
  e4.~ e8. fs16 e8 |
  
  \barNumberCheck 217
  d8[) r cs](  b[) r cs]( |
  fs,4.  d'8[) r16 e( d8] |
  cs8[) r d](  b[) r cs]( | 
  fs,4.  d'8[) r16 e( d8] | |
  cs8[) r d](  b[) r \clef treble g']^( |
  fs2. |
  \voiceOne es4 b') b8\rest b[~ |
  b8] b\rest b4 b8\rest g[~ |
  
  \barNumberCheck 225
  g8] b\rest g4 b8\rest fs[~ |
  fs8] s4 s4. |
  s2. |
  s4 <b b'> s |
  d'2.~ |
  \hideNoteHead d8 s4 s4. |
  s2. |
  s4 <d, d'> s |
  
  \barNumberCheck 233
  fs'2.~ |
  \hideNoteHead fs8 s4 s4. |
  e4 s2 |
  s2. |
  fs,4.~ \hideNoteHead fs8 s4 |
}

rightHandLower = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  \clef bass b8^\agitato d, fs  g e as |
  b8 d, fs  g e as |
  b8 <d, fs> b' \slashedGrace { cs } b <e, g as> b' |
  d8 fs, a!  r g bf |
  d8 fs, a  bf <e, g> cs' |
  d8 fs, a  bf <e, g> cs' |
  d8 <fs, a> d'  \slashedGrace { e } d <g, b! cs> d' |
  \voiceFour fs8 as, cs  d,\rest b' d |
  
  \barNumberCheck 17
  fs8 as, cs  d b ds |
  s2. * 7 |
  
  \barNumberCheck 25
  s2. * 3 |
  s4 \clef treble <fs fs'>8-\slurShapeA ^( <g g'> <cs e> <as as'> |
  <b b'>8 d <fs, fs'>  <g g'> <cs e> <as as'> |
  <b b'>8 <d fs> b  <e g> <as, as'> <b b'> |
  d8 <fs a!> d  <g bf> d <g bf> |
  <d d'>8 <fs a> <a, a'>  <bf bf'> <e g> <cs cs'> |
  
  \barNumberCheck 33
  <d d'>8 <fs a> <a, a'>  <bf bf'> <e g> <cs cs'> |
  <d d'>8 <fs a> d  <g b!> <cs, cs'> <d d'> |
  fs8 <as cs> fs  <b d> fs <b d> |
  <fs fs'>8 as <cs, cs'>  <d d'> <fs b> <ds ds'> |
  <e e'>8 <gs b> e  <a cs>[) r16 <fs fs'>-\slurShapeB ^( <e e'>8] |
  <d d'>8 <fs a> <cs cs'>  <b b'> <d gs> <cs cs'> |
  <fs, fs'>8 <as cs> fs  <b d fs>[) r16 <e e'>^( <d d'>8] |
  <cs cs'>8 <e fs> <d d'>  <b b'> <d fs> <d d'> |
  
  \barNumberCheck 41
  <fs, fs'>8 <b ds> <g g'>  <e e'> <g b> <b b'> |
  <d,! d'!>8 <fs b> <e e'>  <cs cs'> <g' as> <g g'> |
  <g g'>8 <as cs>) <as as'>^(  <cs cs'> <d d'> <e e'> |
  <g g'>8 <b d> g  <fs fs'> <b d> fs |
  <es es'>8 <b' cs> es,  <e e'> <fs as> e |
  <d d'>8 <fs b> d  \oneVoice <d, d'> <gs b> d) |
  <d' d'>8( <fs b> d  <cs cs'> <fs as> cs) |
  fs,8( <cs' fs> fs,  <b fs'> fs <b fs'> |
  
  \barNumberCheck 49
  es,8 <b' es> e,  <as e'> e <as e'> |
  ds,8 <fs b ds> d  <g! b d> d <g d'> |
  c,8 <g' c> b,  <e fs b> as, <e' fs as>) |
  s4. \voiceFour \hideNoteHead b4.~ |
  b4 s2 |
  s2. * 3 |
  
  \barNumberCheck 57
  ds4 s2 |
  s2. * 7 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  fs4 s2 |
  s2. * 7 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 3 |
  e8 g, b  c a ds |
  e8 g, b  c a ds |
  e8 <g, b> e'  \voiceOne \slashedGrace { fs } e <a, c ds> e' |
  \voiceFour g8 b, d! g c, ef |
  g8 b, d  ef <a, c> fs' |
  
  \barNumberCheck 105
  g8 b, d  ef <a, c> fs' |
  g8 <b, d> g' \voiceOne \slashedGrace { a } g <c, e! fs> g' |
  \voiceFour b8 ds, fs  b e, g |
  b8 ds, fs  g <d e> gs |
  a8 cs, g'!  <c, fs>4. |
  g'8 b, fs'  e as, fs' |
  \clef bass b,8 ds, a' s8. \clef treble s |
  fs'8 <a, b> g'  e <g, b> fs' |
  
  \barNumberCheck 113
  b,8 <fs a> b s4. |
  fs'8 <a, b> g'  e <g, b> <c c'> |
  fs8 b, fs'  b, f' b, |
  e8 as, e'  a, e' a, |
  e'8 gs, e'  g, c g |
  c8 f, c' s4. |
  s8 \oneVoice r \clef treble <b b'>-\slurShapeK (  <c c'> <fs a> <ds ds'> |
  <e e'>8 g <b, b'>  <c c'> <fs a> <ds ds'> |
  
  \barNumberCheck 121
  \voiceFour <e e'>8 <g b> e  <a c> <ds, ds'> <e e'> |
  g8 <b d!> g  <c ef> g <c ef> |
  <g g'>8 <b d> <d, d'>  <ef ef'> <a c> <fs fs'> |
  <g g'>8 <b d> <d, d'>  <ef ef'> <a c> <fs fs'> |
  <g g'>8 <b d> g  <c e> <fs, fs'> <g g'> |
  b8 <ds fs> b  <e g> b <e g> |
  <b b'>8 ds <fs, fs'>  <g g'> <b e> <gs gs'> |
  <a a'>8 <cs e> a  <d fs>[) r16 <b b'>-\slurShapeL ^( <a a'>8] |
  
  \barNumberCheck 129
  <g g'>8 <b d> <fs fs'>  <e e'> <g cs!> <fs fs'> |
  b,8 <ds fs> b  <e g b>[) r16 <a a'>^( <g g'>8] |
  \oneVoice <fs fs'>8 <a b> <g g'>  <e e'> <g b> <g g'> |
  <b, b'>8 <f' gs> <c c'>  <a a'> <c e> <e e'> |
  % last eighth note, c-natural in Urtext
  <g,! g'!>8 <b e> <a a'>  <fs fs'> <c' e> <c c'> |
  <c c'>8 <ds fs> <ds ds'>  <fs fs'> <g g'> <a a'> |
  <c c'>8 <ds g> c  <b b'> <e g> b |
  <as as'>8 <e' fs> as,  <a a'> <ds fs> a |
  
  \barNumberCheck 137
  <g g'>8 <b e> g  <g, g'> e' g,) |
  <g' g'>8( <c ds> g  <fs fs'> <b ds> fs |
  b,8 <fs' b> b,  <e b'> b <e b'> |
  % third eighth note, a-natural, Urtext
  as,8 <e' fs as> a,  <ds a'> a <ds a'> |
  gs,8 <b e gs> g  <c e g> g <c e g> |
  \clef bass f,8 <c' f> e,  <a b e> ds, <a' ds> |
  \key ef \major 
  <g bf ef g>4) r8 \clef treble s4.
  \voiceFour ef'4 d8 s4. |
  
  \barNumberCheck 145
  s2. * 3 |
  g4 fs8 g s4 |
  s2. * 4 |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  s2. * 3 |
  ef4 d8 s4. |
  s2. * 4 |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2. * 8 |
  
  \barNumberCheck 185
  s2. * 8 |
  
  \barNumberCheck 193
  s2. * 8 |
  
  \barNumberCheck 201
  s2. * 8 |
  
  \barNumberCheck 209
  s2. * 8 |
  
  \barNumberCheck 217
  s2. * 6 |
  s4 es8[( e]) s8 e[( |
  ds8]) s8 ds[( d]) s8 d[( |
  
  \barNumberCheck 225
  b8]) s8 c[( e]) s8 as,[( |
  b8]) \oneVoice r <fs' fs'>-\slurShapeV (  <g g'> <cs e> <as as'> |
  <b b'>8 d <fs, fs'>  <g g'> <cs e> <as as'> |
  <b b'>8 <d fs> b  <e g> <as, as'> <b b'> |
  d8 <fs a!> d  <g bf> d <g bf> |
  <d d'>8 <fs a> <a, a'>  <bf bf'> <e g> <cs cs'> |
  <d d'>8 <fs a> <a, a'>  <bf bf'> <e g> <cs cs'> |
  <d d'>8 <fs a> d  <g b!> <cs, cs'> <d d'> |
  
  \barNumberCheck 233
  fs8 <as cs> fs  <b d> fs <b d> |
  <fs fs'>8 as <cs, cs'>  <d d'> <fs b> <ds ds'> |
  <e e'>8 <gs b> e  <a cs>[) r16 <fs fs'>-\slurShapeW ( <e e'>8] |
  <d d'>8 <fs a> <cs cs'>  <b b'> <d gs> <cs cs'> |
  <fs, fs'>8 <as cs> fs  <b d fs>[) r16 <e e'>( <d d'>8] |
  <cs cs'>8 <e fs> <d d'>  <b b'> <d fs> <d d'> |
  <fs, fs'>8 <c' ds> <g g'>  <e e'> <g b> <b b'> |
  <d,! d'!>8 <fs b> <e e'>  <cs cs'> <g' as> <g g'> |
  
  \barNumberCheck 241
  q8 <as cs> <as as'>  <cs cs'> <d d'> <e e'> |
  % second eighth note, cs instead of b, Urtext
  <g g'>8 <as cs> g  <fs fs'> <b d> fs |
  <es es'>8 <b' cs> es,  <e e'> <fs as> e |
  <d d'>8 <fs b> d  <d, d'> <gs b> d) |
  <d' d'>8( <g as> d  <cs cs'> <fs as> cs) |
  fs,8( <cs' fs> fs,  <b fs'> fs <b fs'> |
  es,8 <b' es> e,  <b' e!> e, <b' e> |
  ds,8 <fs b ds> d  <g b d> d <g b d> |
  
  \barNumberCheck 249
  c,8 <g' c> b,  <e b'> as, <cs fs as> |
  cs <fs cs'> <b, b'>  cs <fs cs'> <d b' d> |
  ds8 <g b ds> <e e'>  fs <b cs fs> <g g'> |
  es8 <b' d! es> <fs fs'>  as <d fs as> <b b'> |
  bs8 <es gs bs> <cs cs'>  es <as cs es> <fs fs'>) | 
  \key b \major 
  \ottava 1 \slashedGrace { b8 } b'( gs16 fs cs b \ottava 0 gs fs cs b gs fs |
  \clef bass cs16 b gs fs cs b  <cs es b'>4.->) |
  e!16( g b cs e g \clef treble b cs e g b cs |
  
  \barNumberCheck 257
  \ottavaUnderSlur \ottava 1 e g e' cs as fs \ottava 0 e cs as fs e cs) |
  \ottava 1 \slashedGrace { b'8 } b'( gs16 fs cs b \ottava 0 gs fs cs b gs fs |
  \clef bass cs16 b gs fs cs b  <cs es b'>4.->) |
  e!16( g b cs e g \clef treble b cs e g b cs |
  \ottavaUnderSlur \ottava 1 e g e' cs as fs \ottava 0 e cs as fs e cs) |
  as16-\slurShapeY ( b ds b bs e  bs cs es cs css fs |
  css16 ds fss ds e gs  e es a es fs as |
  fs16 fss b fss gs bs  gs gss cs gss as css |
  
  \barNumberCheck 265
  as16 b ds b bs e  \ottavaUnderSlur \ottava 1 bs! cs es cs css fs |
  % second beat, fs, not fss, Urtext
  css16 ds fss ds e gs  e es a es fs as |
  fs16 fss b fss gs bs  fss gs cs fss, gs ds' |
  fss,16 gs e' cs gs e  \ottava 0 cs gs e' cs gs e |
  cs16 gs e' cs gs e  \clef bass cs gs e' cs gs e |
  <cs gs'>4 <cs ds fss as>8 <b ds gs b>) r <e as cs>-. |
  <ds b' ds>8-. r \clef treble <fs c' ds>[-. <g c e>]-. r <b es>[-. |
  % last eighth note, gs, Urtext
  <as fs'>]-. r <as cs g' as>[-. <b fs' b>]-. r <bs ds fs gs bs>-. |
  
  \barNumberCheck 273
  <cs gs' cs>4( <ds gs ds'>8 <e gs e'>4) <e fs as>8 |
  % second beat, fifth sixtenth note, as, Urtext
  \ottava 1 b'''16( ds d b as cs  c a gs b as g |
  fs16 a gs es e g  fs ds d f e cs |
  \ottava 0 c16 ds d b as cs  c a gs b as g |
  fs a gs es e g  fs ds d f e cs |
  c16 ds d b as cs  c a gs b as g |
  fs a gs es e g  fs ds d f e cs |
  c16 ds d b as cs  \clef bass cs as gs b fs b |
  
  \barNumberCheck 281
  f16 b e, b' ds, b'  d, b' cs, b' c, b' |
  b,4-.) r8 \clef treble <as' e' fs as>4. |
  <b ds b'>4. <fs' as cs fs> |
  <ds fs b ds>4 r8 r4 r8 |
  \clef bass <ds, fs b ds>2 r4 |
  \clef treble <b''' b'>2.\fermata |
  \bar "|."
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  \voiceThree s4. s8 a4~ |
  a4 gs8 s4. |
  s2. * 6 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 4 |
  gs8 fs e ds s4 |
  s2. * 3 |
  
  \barNumberCheck 57
  b'8 as gs fs s4 |
  s2. * 2 |
  s4 ds8-\slurShapeF ( css ds b' |
  \hideNoteHead as4) ds,8( css ds b' |
  \hideNoteHead as4 s2 |
  as8 b as  b as b |
  \hideNoteHead as4) s2 |
  
  \barNumberCheck 65
  s2. * 4 |
  b8 as gs fs s4 |
  s2. *  3 |
  
  \barNumberCheck 73
  ds'8 cs b! s4. |
  s2. * 2 |
  s4. ds,4 s8 |
  gs4 s8 cs,4 s8 |
  fs4 s8 ds4 s8 |
  gs4 s8 cs,4 s8 |
  fs4 s8 es4 fs8 |
  
  \barNumberCheck 81
  gs4 s8 as4 s8 |
  \clef treble \voiceTwo  as4 s8 b4 s8 |
  s2. |
  b4 s8 gs4 s8 |
  cs4 s8 fs,4 s8 |
  b4 s8 gs4 s8 |
  cs4 s8 fs,4 s8 |
  b4 s8 c4 s8 |
  
  \barNumberCheck 89
  c4 s8 b4 s8 |
  s2. * 7 |
  
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
  s2. * 7 |
  \voiceThree c8 bf af s4. |
  
  \barNumberCheck 145
  s2. * 3 |
  ef'8 d c bf s4 |
  s2. * 2 |
  s4 g8 fs g ef' |
  s4 d,8~ d4 ef8 |
  
  \barNumberCheck 153
  d4 \oneVoice af''8(\> g4 ef8\! |
  \voiceThree d8 ef d ef d ef |
  \hideNoteHead d4) s2 |
  s2. * 4 |
  af8 g f ef s4 |

  \barNumberCheck 161
  s2. * 3 |
  c'!8 bf af s4. |
  s2. * 2 |
  s4. c,4 s8 |
  f4 s8 bf,4 s8 |
  
  \barNumberCheck 169
  ef4 s8 c4 s8 |
  f4 s8 bf,4 s8 |
  ef4 s8 d!4 ef8 |
  f4 s8 g4 s8 |
  g4 s8 af4 s8 |
  s2. |
  af4 s8 f4 s8 |
  bf4 s8 ef,4 s8 |
  
  \barNumberCheck 177
  af4 s8 f4 s8 |
  bf4 s8 ef,4 s8
  af4 s8 \clef treble \voiceTwo g!4 af8 |
  bf4 s8 c4 s8 |
  c4 \tieToNextNote gf'4*1/2-\tieShapeA ~ df gf d8 |
  s2. * 3 |
  
  \barNumberCheck 185
  s2. * 2 |
  \key b \minor
  s4 \voiceThree cs8 d cs b |
  a8 s cs d cs b |
  a8 s8 s2 |
  s2. |
  s4 cs8  d cs b |
  as8 s cs  d cs b |
  
  \barNumberCheck 193
  as8 s4 s4. |
  s2. * 7 |
  
  \barNumberCheck 201
  s2. * 8 |
  
  \barNumberCheck 209
  s2. * 8 |
  
  \barNumberCheck 217
  s2. * 8 |
  
  \barNumberCheck 225
  s2. * 8 |
  
  \barNumberCheck 233
  s2. * 8 |
  
  \barNumberCheck 241
  s2. * 8 |
  
  \barNumberCheck 249
  s2. * 5 |
  \key b \major
  \grace { s8 } s2. * 2 |
  s4. e'8( fs g |
  
  \barNumberCheck 257
  \oneVoice cs,4. <fs, as e'> |
  <b, ds fs ds'>4)\arpeggio s8 s4. |
  s2. |
  s4. \voiceThree e'8-\slurShapeX ( fs g |
  \oneVoice cs,4. <fs, as e'>) |
  
}

leftHandLower = \relative {
  <fs,, fs'>4. <fs' fs'> |
  <fs' fs'>4. <fs,, fs'> |
  <g g'>4. <g' g'> |
  <g' g'>4. <g,, g'> |
  <gs gs'>4. <gs' gs'> |
  <a' cs fs a>4. <a,, a'> |
  <as as'>4. <fs'' cs' e> |
  \clef treble <e' fs d'>4. <e fs cs'> \fermataOverBarLower |
  
  \barNumberCheck 9
  \clef bass b,,8 b' fs  e b' g |
  b,8 b' fs  e b' g |
  b,8 b' fs  e b' g |
  d8 d' a  g d' bf |
  d,8 d' a  g d' bf |
  d,8 d' a  g d' bf |
  d,8 d' a  g d' b! |
  % second beat, b, not g, Urtext
  fs8 fs' cs  \stemUp b fs' d \stemNeutral |
  
  \barNumberCheck 17
  \voiceTwo fs,8 fs' cs  b fs' b, |
  e,8 e' b  a g' cs, |
  \oneVoice d,8 fs' a,  g es' b |
  fs8 e'! as,  b, fs'' fs, |
  b,8 e' fs,  b, d' fs, |
  b,8 cs' fs,  b, fs'' fs, |
  b,8 e' fs,  b, d' b |
  as8 cs' fs,  a, c' d, |
  
  \barNumberCheck 25
  gs,8 b' cs,  g b' cs, |
  fs,8 fs' b,  f g' b, |
  e,8 g' c,  fs,! e' cs |
  \stemDown b,8 fs'' d'  e <g, as> e \stemNeutral |
  b8 fs' d'  e <g, as> e |
  b8 d' fs,  e g' <g, b> |
  d8 fs' <a, d>  g g' <bf, d> |
  d,8 fs' a,  g' <bf, cs> g |
  
  \barNumberCheck 33
  d8 fs' a,  g' <bf, cs> g |
  d8 fs' <a, d>  \clef treble g b'! <b, d> |
  as8 cs' <cs, fs>  b d' <d, fs> |
  as8 cs' <cs, fs>  a d' <b, fs'> |
  gs8 b' <b, e>  g a' <cs, e> |
  \clef bass fs,8 a' <a, d>  fs gs' es, |
  e!8 e' <fs, as>  d fs' <fs, b> |
  as,8 e'' fs,  b, d' fs, |
  
  \barNumberCheck 41
  a,!8 b' ds,  g, b' e, |
  fs,8 fs' b,  e, g' as, |
  e8 g' cs,  as g' cs, |
  d,8 b'' d,  d' b d, |
  cs,8 gs'' cs,  fs, cs'' fs, |
  b,8 d' fs,  es, gs' b, |
  fs8 fs' b,  e,! fs' as, |
  d,8 b'' fs  d d' fs, |
  
  \barNumberCheck 49
  cs8 cs' gs  fs, cs'' fs, |
  b,8 b' fs  f, g' b, |
  e,8 g' c, fs,! fs' cs |
  <b, b'>4. <b' fs'>_~ |
  \voiceTwo b4.~ b8 \oneVoice r <gs cs> |
  <fs, fs'>4 r8 <cs'' e as>4.( |
  <e fs b>4. <e fs ds'>4 cs'8 |
  % second beat, gs in Urtext
  <b, fs' b>4.) <as gs'> |
  
  \barNumberCheck 57
  \voiceTwo ds4.~ ds8 \oneVoice r <b, b'> |
  % second beat, gs in Urtext
  <as as'>4 r8 <es'' gs as css>4.( |
  <es gs as ds>4. <gs as fs'>4 es'8 |
  <ds, as'>4) s8 s \voiceTwo ds4~ |
  <ds as'>4 s8 s ds4~ |
  \after 8 \> <ds as'>4 e'8 ds4 b8\! |
  ds,2.~ |
  <ds as'>4 \oneVoice r8 <gs bs fs'!>4. |
  
  \barNumberCheck 65
  <cs, gs' e'>4\arpeggio r8 <fs as e'>4. |
  % first beat, ds in Urtext
  <b, fs' ds'>4.(\arpeggio <es gs ds'>8) r4 |
  \voiceTwo <as, es' gs>8 r4 as,8 r4 |
  \oneVoice <ds, ds'>4-. r8 \voiceTwo <ds'' as'>4.~ |
  ds4.~ ds8 \oneVoice r <b, b'> |
  <as as'>4 r8 <es'' gs as css>4.( |
  <es gs as ds>4. <gs as fs'>4 es'8 |
  <ds, as'>4.) <d bs'> |
  
  \barNumberCheck 73
  \voiceTwo cs4.~ <cs as'>8 \oneVoice r <d, d'> |
  <cs cs'>4 r8 <gs'' b! cs es>4.( |
  <gs b cs fs>4. <b cs es as>4 gs'8 |
  <fs, cs' fs>4) r8 \voiceTwo ds^( fs' as, |
  gs8 ds' b  cs, es' b) |
  fs8-\slurShapeH ^( fs' as,  ds, fs' as, |
  gs8 ds' b  cs, es' b) |
  fs8^( e'! as,  es e'! fs, |
  
  \barNumberCheck 81
  gs8 e' b  as e' cs |
  \clef treble \voiceThree as8 gs' e  b gs' e |
  \oneVoice <cs e gs>8-. <fs, cs' e fs>-.) r r4 r8 |
  \voiceThree b8-\slurShapeI _( b' ds,  gs, b' ds, |
  % first beat, gs in Urtext
  cs8 gs' e  fs, as' e |
  b8 b' ds,  gs, b' ds, |
  % first beat, gs in Urtext
  cs8 gs' e  fs, as' e |
  b8 b' ds,  c a' ds, |
  
  \barNumberCheck 89
  c8 a' ds,  \beamPositionsA b \tieToNextNote a'~ ds, |
  <b a'>4) \untieToNextNote \oneVoice r8 r4 r8 |
  R2. |
  \clef bass b,,8-. bs-. cs-.  css-. ds-. e-. |
  % second beat, gs's in Urtext
  es8-. <fs, fs'>-. <fss fss'>-.  <gs gs'>-. <a a'>-. <as as'>-. |
  <b b'>8-. <c c'>-. <b b'>-.  <fs' fs'>4-. r8 |
  R2. |
  b,16 r4 c16[( b]) r4 c16[( 
  
  \barNumberCheck 97
  b]) r4 c16[( b]) r4 c16 |
  b16 c fs a fs c  b c fs a fs c |
  b16 c fs a fs c \tuplet 4/3 4. { b8 fs' b fs |
    e8 b' e b  a c e c |
  }
  \scaleDurations 3/4 {
    e,8 b' e b  a c e c |
    e,8 b' e b  a c e c |
    g8 d' g d  c ef g ef |
    % second beat, c-natural in Urtext
    g,8 d' g d  c ef g ef |
    
    \barNumberCheck 105
    g,8 d' g d  c ef g ef |
    g,8 d' g d  c e! g e |
    b8 fs' b fs  e g b g |
    b,8 fs' b fs  e, e' b' e, |
    a,8 e' a e  d, d' a' d, |
    g,8 d' g d  cs,! cs' fs c, |
    b8 fs' b fs  e b' e b |
    ds,8 b' fs' b,  e, b' e b |
    
    \barNumberCheck 113
    e,8 b' ds b  e, b' e b |
    e,8 b' ds b  e, b' e b |
    ds,8 b' fs' b,  d, gs f' gs, |
    cs,8 e e' e,  c e e' e, |
    b8 e e' e,  bf e c' e, |
    a, f' c' f,  b,! fs' b fs |
  }
  % second beat, c-natrual, Urtext
  e,8 g'' b, \tuplet 4/3 { e, c' a' c, } |
  \scaleDurations 3/4 {
    e,8 b' g' b,  e, c' a' c, |
    
    \barNumberCheck 121
    e,8 b' g' b,  a c c' c, |
    g8 d' b' d,  c ef c' ef, |
    g,8 d' b' d,  g, ef' c' ef, |
    % second beat, c-natural, Urtext
    g,8 d' b' d,  g, ef' c' ef, |
    g,8 d' b' d,  c e e' e, |
    b8 fs' ds' fs,  e g g' g, |
    ds8 b' fs' b,  d, e e' e, |
    cs8 e e' e,  c fs d' fs, |
    
    \barNumberCheck 129
    b,8 g' d' g,  b, g' cs! as, |
    a!8 fs' b fs  g, e' b' e, |
    ds,8 b' a' b,  e, b' g' b, |
    d,8 gs f' gs,  c, a' e' a, |
    b,8 e e' e,  a, e' e' e, |
    a,8 a' c fs  a, ds c' ds, |
    g,8 ds' c' ds,  g, e' b' e, |
    % first beat, cs in Urtext
    fs,8 fs' cs'! fs,  b, fs' ds' fs, |
    
    \barNumberCheck 137
    e8 g e' g,  as, e' c' e, |
    a,8 ds c' ds,  a ds b' ds, |
    g,8 ds' fs ds  g, e' g e |
    fs,8 cs' fs cs  b, b' fs' b, |
    e,8 b' e b  c, c' e c |
    a,8 a' c a  b, fs' b \extraSpacingA b, |
  }
  \key ef \major
  <bf bf'>4 r8 \voiceTwo <bf' bf'>4.~ |
  bf4.~ <bf g'>8 \oneVoice r <cf, cf'> |
  
  \barNumberCheck 145
  <bf bf'>4 r8 <f'' af! bf d>4.( |
  <f af bf ef>4. <af bf g'>4 f'8 |
  <ef, bf'>4.) <d c'> |
  g4._~ g8 r <ef, ef'> |
  <d d'>4 r8 <a'' c d fs>4.( |
  <a c d g>4. <c d bf'>4 a'8 |
  <g, d'>4) s \voiceTwo g4~ |
  <g d'>4 r8 fs, g4~ |
  
  \barNumberCheck 153
  g4 s2 |
  g'2.~ |
  <g d'>4^. \oneVoice r8 <c, bf' e>4.(\arpeggio |
  <f af f'>4) r8 <bf,! af' d>4.(\arpeggio |
  <ef g ef'>4) r8 <af, ef' c'>4\arpeggio r8 |
  \voiceTwo <d f>8 r4 g,,4 r8 |
  \oneVoice <c, c'>4-. r8 \voiceTwo <c'' g'>4.~ |
  c4.~ c8 \oneVoice r <af, af'>8 |
  
  \barNumberCheck 161
  <g g'>4 r8 <d'' f g b>4.( |
  <d f g c>4. <f g ef'>4 d'8 |
  <c, g'>4.) <cf a'> |
  \voiceTwo bf4.~ <bf g'>8 \oneVoice r <cf, cf'> |
  <bf bf'>4 r8 <f'' af! bf d>4.( |
  <f af bf ef>4. <af bf g'>4 f'8 |
  <ef, bf' ef>4) r8 \voiceTwo c8^( ef' af, |
  f8 c' af  bf, d' af!) |
  
  \barNumberCheck 169
  ef8^( ef' g,  c, ef' af, |
  f8 c' af  bf, d' af!) |
  % first beat, df, Urtext
  ef8^( df' g,  d! df'! ef, |
  f8 df' af  g f' df |
  g,8 f' df  af f' df |
  <bf~ df f>8^. <ef, bf' df ef>^.) \oneVoice r8 r4 r8 |
  \voiceTwo af8^( ef' c  f, af' c, |
  bf8 f' df  ef, g' df |
  
  \barNumberCheck 177
  % second eighth note, af in Urtext
  af8 af' c,  f, af' c, |
  bf8 f' df  ef, g' df! |
  % seconnd eighth not, gf in Urtext
  af8 gf' c,  \clef treble \voiceThree g! gf' af, |
  bf8 gf' df  c bf' gf |
  c,8 bf' gf  df af' d, |
  <ef gf>4) \oneVoice r8 r4 r8 |
  \clef bass <af,,, af'>8\noBeam af'16( ef' af, ef'  g,! ef' af, ef' bff ef |
  af,16 ef' ef, ef' af, ef'  g, ef' af, ef' bff ef |
  
  \barNumberCheck 185
  af,16 ef' ef, ef' af, ef'  ef, ef' af, ef' ef, ef' |
  af,16 ef' ef, ef' af, ef'  ef, ef' af, ef') <af,, af'>8(\noBeam |
  \key b \minor
  <g g'>8-.) r \voiceTwo g''2~ |
  g8 d\rest g2~ |
  g8\noBeam \oneVoice g,,16( a' a, a'  g, a' a, a' g, a' |
  a,16 a' g, a' a, a'  g, a' a, a' g, a' |
  <fs, fs'>8-.) r \voiceTwo fs''2~ |
  fs8 r fs2~ |
  
  \barNumberCheck 193
  fs8 \oneVoice r <cs cs'>8( <d d'> <cs cs'> <b b'> |
  q8 <as as'>) <d, d'>(\noBeam q8 <cs cs'> <b b'> |
  <as as'>4-.) r8 <fs'' cs' e>4-. r8 |
  R2. * 3 |
  es,,8-. fs-. g-.  gs-. a-. as-. |
  b8-. c-. cs-.  d-. ds-. e-. |
  
  \barNumberCheck 201
  <es, es'>8-. <g g'>-. <fs fs'> <cs' cs'>4-. r8 |
  R2. |
  fs,8 r g[( fs]) r g[( |
  fs8]) r g[( fs]) r g( |
  fs16) cs' fs cs' fs, cs  fs, cs' fs cs' fs, cs |
  fs,16 cs' fs cs' fs, cs  \tuplet 5/6 { fs, cs' fs cs' fs, } |
  b,16 fs' b d b fs  b, e g e' g, e |
  b16 fs' b d b fs  b, e g e' g, e |
  
  \barNumberCheck 209
  b16 fs' b d b fs  e g b g' b, g |
  d16 a'! d fs d a  g bf d g d bf |
  d,16 a' d fs d a  d, g bf g' bf, g |
  d16 a' d fs d a  d, g bf g' bf, g |
  d16 a' d fs d a  g b! d b'! d, b |
  fs16 cs' fs as fs cs  b d fs d' fs, d |
  as16 cs fs cs' fs, cs  a b fs' b fs b, |
  gs16 b e b' e, b  g a cs a' cs, a |
  
  \barNumberCheck 217
  fs16 a d a' d, a  fs gs d' gs gs, es |
  e!16 fs as fs' as, fs  d fs b fs' b, fs |
  as,16 fs' cs' fs cs fs,  b, fs' b d b fs |
  b,16 fs' as e' as, fs  b, fs' b d b fs  |
  b,16 fs' as e' as, fs  b, fs' b fs' d b |
  as16 cs fs cs' fs, cs  a ds fs c' fs, ds |
  gs,16 b es b' es, b  g b e b' e, b |
  fs16 b fs' b fs b,  f g b g' b, g |
  
  \barNumberCheck 225
  e16 g c g' c, g  fs! cs' e fs e cs |
  \stemDown b,8-. fs''16 d' b fs  b, e g e' g, e |
  b16 fs' b d b fs  b, e g e' g, e |
  b16 fs' b d b fs  e g b g' b, g |
  d16 a'! d fs d a  g bf d bf' d, bf |
  d,16 a' d fs d a  d, g bf g' bf, g |
  d16 a' d fs d a  d, g bf g' bf, g |
  d16 a' d fs d a  g b! d b'! d, b |
  
  \barNumberCheck 233
  \clef treble \stemNeutral fs16 cs' e as e cs  b d fs d' fs, d |
  as16 cs fs cs' fs, cs  a b fs' b fs b, |
  gs16 b e b' e, b  g cs e a e cs |
  \clef bass fs,16 a d a' d, a  fs gs d' gs gs, es |
  e!16 fs as e' as, fs  d fs b fs' b, fs |
  as,16 fs' cs' e cs fs,  b, fs' b d b fs |
  a,16 ds fs c' fs, ds  g, b e b' e, b  |
  fs16 b fs' b fs b,  e, as cs as' cs, as |
  
  \barNumberCheck 241
  e16 as cs g' cs, as  e fs as fs' as, fs |
  d16 fs as fs' as, fs  d fs b fs' b, fs |
  % first beat, fourth sixteenth note, gs, Urtext
  cs16 gs' cs gs' cs, gs  fs cs' fs cs' fs, cs |
  b16 fs' b d b fs  es, b' d gs d b |
  e,16 as d g d as  e as cs fs cs as  |
  d,16 fs cs' fs cs fs,  d fs b fs' b, fs |
  % first beat, fourth sixteenth note, gs, Urtext
  cs16 gs' cs gs' cs, gs  g b e b' e, b |
  fs16 b fs' b fs b,  f g b g' b, g |
  
  \barNumberCheck 249
  % second sixteenth note, g, not fs, Urtext
  e16 g c g' c, g  e fs! cs' fs cs fs, |
  d16 fs b fs' b, fs  d fs b fs' b, fs |
  g16 b cs b' cs, b  e, b' e b' e, b |
  fs16 d' fs b fs d  fs, d' fs d' fs, d |
  fs,16 cs' es b'! es, cs  fs, cs' e as e \extraSpacingA cs |
  \key b \major 
  \grace { s8 } <b ds fs ds'>4\arpeggio r8 r4 r8 |
  r4 r8 cs,4.-> |
  <fs, fs'>4-. r8 \voiceTwo <gs'' b>4. |
  
  \barNumberCheck 257
  s2. |
  s4 \oneVoice r8 r4 r8 |
  r4 r8 cs,,4.-> |
  <fs, fs'>4-. r8 \voiceTwo <gs'' b>4. |
  s2. |
  \oneVoice b,8 ds' <ds, fs>  as ds' <ds, fs> |
  as8 ds' <ds, fss> gs, ds'' <ds, gs> |
  cs e' <e, gs>  b e' <e, gs> |
  
  \barNumberCheck 265
  b8 e' <e, gss>  as, e'' <e, as> |
  ds8 fs'! <fs, as>  cs fs' <fs, as> |
  cs fs'! <fs, ds'>  bs, fs'' <gs, ds'> |
  <cs, gs' e'>4-.\arpeggio <as' cs e as>8[( <b cs e b'>]) r <cs, cs'>[( |
  <e e'>8]) r <gs, gs'>[( <b b'>]) r <e,, e'> |
  q4 <ds ds'>8 <gs gs'> r <fs! fs'!> |
  <b b'>8 <as as'> <a a'>  <g g'> r <g' g'> |
  <fs fs'>8 <es es'> <e e'> <ds ds'> r <gs! gs'!> |
  
  \barNumberCheck 273
  <e e'>4 <bs bs'>8 <cs cs'>4 <fs fs'>8 |
  <b,! b'!>4-. r8 <fs'' b ds fs>4.(\< |
  <fs b ds gs>4. <fs b ds fs> |
  \clef treble \after 32 \! <ds' fs b ds>2.) |
  r4 r8 r4 \clef bass <fs,, fs'>8-. |
  <b b'>4-. r8 r4 <fs, fs'>8[( |
  <b b'>8]) r <fs fs'>[( <b b'>]) r <fs fs'>( |
  <b b'>4-.) r8 r4 fs'8-. |
  
  \barNumberCheck 281
  f8-. e-. ds-.  d-. cs-. c-. |
  b4-. r8 <fs' cs'! fs>4. |
  <b fs'>4. <fs' cs' e> |
  <b, fs' b>4 r8 r4 r8 |
  <b, fs' b>2 r4 |
  \clef treble <ds'' fs b ds>2.\fermata |
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
  \override DynamicLineSpanner.to-barline = ##f
  s4\f s2\cresc |
  s2. * 6 |
  s4. s4 s8\! |
  
  \barNumberCheck 9
  s2.\p |
  s2. |
  s4. \grace { s8\< } s4. |
  s8\! s4 s4. |
  s2. * 4 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 3 |
  s8 s4\f s4. |
  s2. |
  s2.\< |
  s8\! s4 s4. |
  s2. |
  
  \barNumberCheck 33
  s2. |
  s2.\< |
  s8\! s4 s4. |
  s2. * 5 |
  
  \barNumberCheck 41
  s2. * 2 |
  s2\< s8. s16\! |
  s2. * 5 |
  
  \barNumberCheck 49
  s2. * 3 |
  s4.\ff s\< |
  s4. s4\! s8\< |
  s4\! s2 |
  s2. |
  s4. s\< |
  
  \barNumberCheck 57
  s4. s4\! s8\< |
  s4\! s2 |
  s2. * 4 |
  s2\dim s8. s16\! |
  s2. |
  
  \barNumberCheck 65
  s2. * 3 |
  s4.\sf s\< |
  s4. s8\! s s\< |
  s4\! s2 |
  s2. |
  s4. s\< |
  
  \barNumberCheck 73
  s4. s8\! s s\< |
  s4\! s2 |
  s2. |
  s4.\< s8\! s4\> |
  s8. s\! s4. |
  s4.\< s8\! s4\> |
  s8. s\! s s\< | 
  s2 s8. s16\! |
  
  \barNumberCheck 81
  s4. s8 s4\> |
  s4. s8. s\! |
  s16 s\< s8. s16\!  s16 s\> s8 s\! |
  s4.\< s8.\! s\> |
  s4 s8\! s4. |
  s4.\< s4\! s16 s\> |
  s4. s4 s8\! |
  s2.\< |
  
  \barNumberCheck 89
  s4. s8. s\! |
  s2. * 2 |
  s2.\cresc |
  s2 s8. s16\! |
  s2. * 2 |
  s4\f s16 s\< s4. |
  
  \barNumberCheck 97
  s2. |
  s16\! s8. s2 |
  s2\< s8. s16\! |
  s2.\f |
  s2. |
  s4 s2\< |
  s8 s\! s2 |
  s2. |
  
  \barNumberCheck 105
  s2. |
  s2.\< |
  s8\! s4 s4. |
  s2. * 5 |
  
  \barNumberCheck 113
  s2. |
  s8. s\< s4. |
  s8\! s4 s4. |
  s2. * 3 |
  s2.\f |
  s4. s\< |
  
  \barNumberCheck 121
  s2. |
  s8\! s4 s4. |
  s2. |
  s4. s4 s8\< |
  s2. |
  s8\! s4 s4. |
  s4 s8\< s4. |
  s8\! s4 s4. |
  
  \barNumberCheck 129
  s2. * 4 |
  s4. s\< |
  s2. |
  s8\! s4 s4.
  s2. |
  
  \barNumberCheck 137
  s2. * 2 |
  s2 s4\cresc |
  s2. * 2 |
  s2 s8. s16\! |
  % key ef major
  s4.\ff s4.\< |
  s4. s8\! s s\< |
  
  \barNumberCheck 145
  s8 s\! s2 |
  s2. |
  s2 s4\< |
  s4. s\! |
  s2. * 4 |
  
  \barNumberCheck 153
  s2 s4\> |
  s4. s4 s8\! |
  s4. s\f |
  s2. * 3 |
  s2 s4\< |
  s4. s\! |
  
  \barNumberCheck 161
  s2. * 2 
  s2 s4\< |
  s4. s\! |
  s2. * 2 |
  s4.\< s8\! s4\> |
  s4. s\! |
  
  \barNumberCheck 169
  s4.\< s8.\! s\> |
  s4. s4 s8\! |
  s2.\< |
  s8. s\! s8 s4\> |
  s4. s\! |
  s2\< s8. s16\! |
  s4. s\> |
  s4 s16 s\! s4 s8\< |
  
  \barNumberCheck 177
  s8. s16\! s8 s4.\> |
  s4 s16 s\! s4. |
  s4.\< s4 s16 s\! |
  s4. s\> |
  s2. |
  s4. s4 s16 s\! |
  s2. * 2 |
  
  \barNumberCheck 185
  s8 s4\< s s16 s\! |
  s4.\> s4 s16 s\! |
  % key of b minor
  s2.\sf |
  s2. |
  s8 s4\< s4 s16 s\! |
  s4.\> s4 s16 s\! |
  s2.\sf |
  s4 s2\< |
  
  \barNumberCheck 193
  s2. * 2 |
  s4\! s2 |
  s2. * 3 |
  s2.\< |
  s2 s8. s16\! |
  
  \barNumberCheck 201
  s2. * 2 |
  s2.\< |
  s2 s8. s16\! |
  s4 s2\cresc |
  s2 s8. s16\! |
  s2.\f |
  s2. |
  
  
  \barNumberCheck 209
  s4 s2\< |
  s4.\! s |
  s2. |
  s4. s4 s8\< |
  s2. |
  s2.\! |
  s2. * 2 |
  
  \barNumberCheck 217
  s2. * 4 |
  s4. s4 s16 s\> |
  s2. |
  s8.\! s16 s8\> s16\! s8. s8\> |
  s16\! s8. s8\> s16\! s8. s8\> |
  
  \barNumberCheck 225
  s16\! s\< s4 s4. |
  s16\! s s4 s4. |
  s4. s\< |
  s2. |
  s8\! s4 s4. |
  s2. |
  s4. s4 s8\<
  s4. s4 s16 s\! |
  
  \barNumberCheck 233
  s2. * 7 |
  s4 s8\< s4. |
  
  \barNumberCheck 241
  s4. s4 s16 s\! |
  s2. * 3 |
  s4.\> s4 s16 s\! |
  s2.\> |
  s2. |
  s2. |
  
  \barNumberCheck 249
  s4. s8 s4\! |
  s2.\< |
  s2. * 2 |
  s4. s4 s16 s\!|
  % key of b major
  \grace { s8\ff } s2. |
  s2. * 2 |
  
  \barNumberCheck 257
  s2. * 4 |
  s4.\> s4 s16 s\! |
  s2.\< |
  s2. * 2 |
  
  \barNumberCheck 265
  s2. * 2 |
  s4. s4 s16 s\! |
  s2. * 2 |
  s4. s4 s8\< |
  s2. * 2 |
  
  \barNumberCheck 273
  s4. s4 s8\!
  s2.\ff |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Presto non tanto" 4. = 120
  s2. * 7 |
  s4. \tempo 4. = 60 s |
  
  \barNumberCheck 9
  \tempo 4. = 120
  s2. * 277 |
  \tempo 4. = 60
  s2. |
}

pedal = {
  s2.\sd |
  s4. s4 s8\su |
  s2.\sd |
  s4. s4 s8\su |
  s4.-\tweak Y-offset -0.5 \sd s4 s8\su
  s4.\sd s4 s8\su
  s2.\sd |
  s4. s8 s4\su |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 3 |
  s4. s4\sd s16 s\su |
  s4\sd s16 s\su s4. |
  s4. s4\sd s16 s\su |
  s4\sd s16 s\su s4. |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 25
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.-\tweak Y-offset -2 \sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 33
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 41
  s4\sd s8\su s4-\tweak Y-offset -1 \sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s2\sd s8 s16 s\su |
  s2\sd s8 s16 s\su |
  s4\sd s8\su s4-\tweak Y-offset -0.5 \sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s2\sd s8 s16 s\su |
  
  \barNumberCheck 49
  s4\sd s8\su s4-\tweak Y-offset -1 \sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s2-\tweak Y-offset -1 \sd s8 s16 s\su |
  s2. |
  s4.-\tweak Y-offset -2.5 \sd s4\su\sd s16 s\su |
  s2. * 2 |
  
  \barNumberCheck 57
  s2. |
  s4.-\tweak Y-offset -3 \sd s4\su\sd s16 s\su | 
  s2. * 5 |
  s4. s4\sd s16 s\su |
  
  \barNumberCheck 65
  s4\sd s16 s\su s4\sd s16 s\su |
  s4\sd s16 s\su s4. |
  s2. |
  s4.-\tweak Y-offset -4 \sd s4 s16 s\su |
  s2. |
  s4-\tweak Y-offset -2 \sd s16 s\su s4\sd s16 s\su |
  s2. * 2 |
  
  \barNumberCheck 73
  s2. |
  s4\sd s16 s\su s4\sd s16 s\su |
  s2. * 6 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 2 |
  s4. s4\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 105
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su-\tweak Y-offset -1 \sd s16 s\su |
  s4.-\tweak Y-offset -1 \sd s4\su\sd s16 s\su |
  s4.-\tweak Y-offset -1 \sd s4\su\sd s16 s\su |
  
  \barNumberCheck 113
  s4.\sd s4\su\sd s16 s\su |  
  s4.\sd s4\su\sd s16 s\su |  
  s4.-\tweak Y-offset -1 \sd s4\su-\tweak Y-offset -1 \sd s16 s\su |  
  s4.\sd s4\su-\tweak Y-offset -1 \sd s16 s\su |  
  s4.-\tweak Y-offset -1 \sd s4\su-\tweak Y-offset -1 \sd s16 s\su |  
  s4.-\tweak Y-offset -1 \sd s4\su-\tweak Y-offset -1 \sd s16 s\su |  
  s4.-\tweak Y-offset -2 \sd s4\su\sd s16 s\su |  
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 121
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 129
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su-\tweak Y-offset -0.5 \sd s16 s\su |
  s4.-\tweak Y-offset -0.5 \sd s4\su\sd s16 s\su |
  s4.\sd s4\su-\tweak Y-offset -1 \sd s16 s\su |
  s4.-\tweak Y-offset -0.5 \sd s4\su-\tweak Y-offset -1 \sd s16 s\su |
  s4.-\tweak Y-offset -0.5 \sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.-\tweak Y-offset -0.5 \sd s4\su\sd s16 s\su |
  
  \barNumberCheck 137
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su-\tweak Y-offset -1.5 \sd s16 s\su |
  s4.\sd s4\su-\tweak Y-offset -1.5 \sd s16 s\su |
  s4.-\tweak Y-offset -1.5 \sd s4\su-\tweak Y-offset -1.5 \sd s16 s\su |
  s4.\sd s4 s8\su |
  s2. |
  
  \barNumberCheck 145
  s4.\sd s\su |
  s2. * 3 |
  s4.\sd s\su |
  s2. * 3 |
  
  \barNumberCheck 153
  s2. * 2 |
  s4. s4\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s2. |
  s4.-\tweak Y-offset -3 \sd s4 s8\su |
  s2. |
  
  \barNumberCheck 161
  s4.-\tweak Y-offset -1 \sd s\su |
  s2. * 3 |
  s4.\sd s\su |
  s2. |
  s4. s4\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 169
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4\sd s16 s\su s4. |
  s4.\sd s\su\sd |
  s4 s16 s\su s4. |
  s2. |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 177
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4\sd s16 s\su s4. |
  s4.\sd s\su\sd |
  s4. s\su |
  s2. * 3 |
  
  \barNumberCheck 185
  s2.\sd |
  s4. s4 s16 s\su |
  % key of b minor
  s4-\tweak Y-offset -3 \sd s2\su |
  s2. |
  s2.\sd |
  s4. s4 s16 s-\tweak Y-offset -1 \su |
  s4-\tweak Y-offset -3 \sd s2\su |
  s2. |
  
  \barNumberCheck 193
  s2. * 2 |
  s2.-\tweak Y-offset -3 \sd |
  s2. * 2 |
  s2.\su |
  s2. * 2 |
  
  \barNumberCheck 201
  s2. * 4 |
  s4.-\tweak Y-offset -1 \sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 209
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 217
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.-\tweak Y-offset -1 \sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.-\tweak Y-offset -1 \sd s4\su\sd s16 s\su |
  
  \barNumberCheck 225
  s4.\sd s4\su\sd s16 s\su |
  s4.-\tweak Y-offset -2 \sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 233
  s4.-\tweak Y-offset -1 \sd s4\su\sd s16 s\su |
  s4.-\tweak Y-offset -1 \sd s4\su-\tweak Y-offset -1 \sd s16 s\su |
  s4.-\tweak Y-offset -2 \sd s4\su-\tweak Y-offset -2 \sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 241
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su-\tweak Y-offset -1 \sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 249
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s2.\sd |
  s4 s16 s\su s4. |
  s4.-\tweak Y-offset -3 \sd s\su |
  
  \barNumberCheck 257
  s4.\sd s4 s16 s\su |
  s2.\sd |
  s4 s16 s\su s4. |
  s4.-\tweak Y-offset -3 \sd s\su |
  s4.\sd s4 s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  
  \barNumberCheck 265
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4\sd s8\su s4.\sd |
  s2. |
  s8 s4\su s4. |
  s2. * 2 |
  
  \barNumberCheck 273
  s2. |
  s4.\sd s4 s16 s\su |
  s2.\sd |
  s2. |
  s4 s2\su |
  s2. * 3 |
  
  \barNumberCheck 281
  s2. * 3 |
  s2.\sd |
  s2. |
  \tag layout { s2. | } \tag midi { s4. s4 s8\su | }
}

forceBreaks = {
  % page 1
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak

  % page 4
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 5
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 6
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 7
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 8
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 9
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 10
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 11
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 12
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 13
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 14
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
}

sonataFinaleNotes =
\score {
  \header {
    title = "Finale"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override Beam.breakable = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
}

\include "articulate.ly"

sonataFinaleMidi =
\book {
  \bookOutputName "sonata-op58-finale"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
