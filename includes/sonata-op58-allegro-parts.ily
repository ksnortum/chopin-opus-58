%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

% Supress cyclic dependency warnings six times
#(ly:expect-warning-times 6 "cyclic dependency: calculation-in-progress")

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 2.5) (0 . 2.5)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (1 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 3) (0 . 3)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 3)) \etc
slurShapeG = \shape #'((-1 . 5.5) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 1) (0 . 3) (0 . 3)) \etc
slurShapeI = \shape #'((-1 . 0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'((-1 . 4.5) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeK = \shape #'((0 . 0) (0 . 1) (0 . 3) (0 . 3)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 1) (0 . 3) (0 . 3)) \etc
slurShapeM = \shape #'((-1 . 4) (0 . 3) (0 . 1) (0 . 0)) \etc
slurShapeN = \shape #'((-1 . 3.5) (0 . 3) (0 . 1) (0 . 0)) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -2))
                        ) \etc
slurShapeP = \shape #'((0 . 3) (0 . 3) (0 . 2) (0 . 2)) \etc
slurShapeQ = \shape #'(
                        ((0 . 3.5) (0 . 3.5) (0 . 3.5) (0 . 3.5))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeR = \shape #'(
                        ((0 . -3) (0 . -3) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeS = \shape #'((0 . 2) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeT = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 0) (0 . 0))
                        ) \etc
slurShapeU = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (5 . 1) (0 . 1) (0 . 0))
                        ) \etc
slurShapeV = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeW = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeX = \shape #'((0 . -2) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeY = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeZ = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeAA = \shape #'((0 . 1) (0 . 0) (0 . 0) (0 . 1)) \etc
slurShapeAB = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ) \etc
slurShapeAC = \shape #'(
                         ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                         ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                         ) \etc
slurShapeAD = \shape #'((0 . 0) (5 . 1) (0 . 0) (2 . 4)) \etc
slurShapeAE = \shape #'((0 . 0) (5 . 0) (0 . 0) (3 . 1.5)) \etc
slurShapeAF = \shape #'((0 . 0) (5 . 1) (3 . 0) (3.5 . 1.5)) \etc
slurShapeAG = \shape #'((0 . 0) (1 . 1) (3 . -4) (7.5 . 5)) \etc
slurShapeAH = \shape #'((0 . 0) (5 . 0) (0 . 0) (3.5 . 1.5)) \etc
slurShapeAI = \shape #'((0 . 0) (0 . 0) (0 . 0) (0.5 . 3)) \etc
slurShapeAJ = \shape #'((0 . 0) (2 . 0) (2 . 0) (4 . 0)) \etc
slurShapeAK = \shape #'((0 . 0) (2 . 0) (1 . 0) (2.5 . 0)) \etc
slurShapeAL = \shape #'((0 . 0) (-1 . 0) (2 . 0) (5 . -1)) \etc
slurShapeAM = \shape #'((0 . 0) (2 . 0) (2 . -1) (1 . 0)) \etc
slurShapeAN = \shape #'((0 . 0) (0 . 0) (2 . 0) (2.5 . 2)) \etc
slurShapeAO = \shape #'((0 . 0) (0 . 0) (3 . 0) (4 . 2)) \etc
slurShapeAP = \shape #'((-1 . 3) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeAQ = \shape #'((0 . -1) (0 . 1) (-2 . 1) (-0.75 . 0)) \etc
slurShapeAR = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                         ) \etc
slurShapeAS = \shape #'((0.5 . -0.25) (0 . -1.5) (0 . 1) (0 . 0)) \etc
slurShapeAT = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 4) (0 . 4))
                         ((0 . 3) (0 . 2) (0 . 0) (0 . 0))
                         ) \etc
slurShapeAV = \shape #'((0 . 2) (0 . 0) (0 . 3) (0 . 0)) \etc
slurShapeAW = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeAX = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 2) (1 . 1.5) (0 . 0.5) (0 . 0))
                         ) \etc
slurShapeAY = \shape #'((0 . 2) (0 . 2) (0 . 0) (0 . 0)) \etc
slurShapeAZ = \shape #'((0 . 3) (0 . 3) (0 . 3) (0 . 3)) \etc
slurShapeBA =\shape #'((0 . 3) (0 . 3) (0 . 1.5) (0 . 1.5)) \etc
slurShapeBB = \shape #'((0 . 0) (0 . -5) (0 . 5) (0 . 0)) \etc
slurShapeBC = \shape #'((0 . -2) (0 . 2) (0 . 0) (0 . 0)) \etc
slurShapeBD = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeBE = \shape #'((0 . 1) (2 . 0) (0 . -2) (0 . 0)) \etc
slurShapeBF = \shape #'((0 . 1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeBG = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeBH = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 5) (0 . 3))
                         ) \etc
slurShapeBI = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0.5 . 0))
                         ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                         ) \etc
slurShapeBJ = \shape #'(
                         ((0 . 2) (0 . 2) (0 . 0) (0 . 0))
                         ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                         ) \etc
slurShapeBK = \shape #'(
                         ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ) \etc
slurShapeBL = \shape #'((0 . 0) (2 . 0) (2 . 0) (2 . 1.75)) \etc
slurShapeBM = \shape #'((0 . 0) (2 . 0) (2 . 0) (3 . 3.5)) \etc
slurShapeBN = \shape #'((0 . 0) (0 . 0) (0 . 0) (3 . 2)) \etc
slurShapeBO = \shape #'((0 . 0) (2 . 0) (2 . 0) (5 . 4)) \etc
slurShapeBP = \shape #'((0 . 0) (2 . 0) (2 . 0) (4 . 3)) \etc
slurShapeBQ = \shape #'((0 . 0) (2 . 0) (2 . 0) (5 . 2)) \etc
slurShapeBR = \shape #'((0 . 0) (0 . 0) (-1 . -1) (0 . -1.5)) \etc
slurShapeBS = \shape #'((0 . 0) (1 . 0) (1 . 0) (3 . 2)) \etc
slurShapeBT = \shape #'((0 . 0) (2 . 0) (2 . 0) (4 . 3)) \etc
slurShapeBU = \shape #'((0 . 0) (0 . 0) (0 . 0) (3 . 2)) \etc
slurShapeBV = \shape #'((0 . 0) (2 . 0) (2 . 0) (2 . 0)) \etc
slurShapeBW = \shape #'(
                         ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                         ((0 . 2) (2 . 2) (0 . 0) (0 . 0))
                         ) \etc
slurShapeBX = \shape #'((0 . 0) (0 . 0) (0 . 0) (3 . 3)) \etc
slurShapeBY = \shape #'((0 . 0) (2 . 0) (1 . -5) (0 . -5)) \etc
slurShapeBZ = \shape #'((0 . 0) (5 . 23) (0 . 5) (2 . 3)) \etc
slurShapeCA = \shape #'((0.75 . 1) (0.75 . 0.75) (0 . 0.75) (0 . 1)) \etc
slurShapeCB = \shape #'((-1 . 2) (-1 . 2.5) (1 . 2.5) (1 . 2)) \etc
slurShapeCC = \shape #'((0 . 0) (0 . 1) (-2 . 1) (-0.75 . 0)) \etc
slurShapeCD = \shape #'(
                       ((0 . 0) (0 . 0) (0 . 0) (1 . 0))
                       ((0 . 2) (0 . 2) (0 . 1.75) (0 . 1.75))
                       ) \etc
slurShapeCE = \shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 0)) \etc
slurShapeCF = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 4) (0 . 4))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ) \etc

tieShapeA = \shape #'((0 . 0.5) (0 . 1) (-2 . 1) (-2 . 1)) \etc
tieShapeB = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) \etc
tieShapeC = \shape #'((0 . 0.5) (0 . 1) (-2 . 1) (-2 . 1)) \etc
tieShapeD = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . 0)) \etc
tieShapeE = \shape #'((0.5 . -0.5) (0 . -0.5) (0 . 0) (0 . -0.5)) \etc

forceHShiftA = \tweak NoteColumn.force-hshift 0.5 \etc
forceHShiftB = \tweak NoteColumn.force-hshift 0 \etc
forceHShiftC = \tweak NoteColumn.force-hshift 0 \etc

beamPositionsA = \once \override Beam.positions = #'(4 . 1.75)
beamPositionsB = \once \override Beam.positions = #'(4 . 2)
beamPositionsC = \once \override Beam.positions = #'(-4.5 . -3.5)
beamPositionsD = \once \override Beam.positions = #'(-4.5 . -3.5)
beamPositionsE = \once \override Beam.positions = #'(5 . 4)
beamPositionsF = \once \override Beam.positions = #'(5.5 . 5)
beamPositionsG = \once \override Beam.positions = #'(-5.5 . -4.5)
beamPositionsH = \once \override Beam.positions = #'(-5 . -4)
beamPositionsI = \once \override Beam.positions = #'(-5.5 . -4.5)

moveRestA = \tweak MultiMeasureRest.Y-offset -2 \etc
moveDotA = \tweak Dots.Y-offset -1 \etc

adjustArpeggioA = 
  \tweak positions #'(0 . 4) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc

adjustArpeggioB =
  \tweak positions #'(-5 . -1)
  \tweak X-offset -1
  \etc

%%% Music %%%

global = {
  \time 4/4
  \key b \minor
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \partial 4 g''16-\slurShapeA ( fs d b |
  
  \repeat volta 2 {
  \voiceOne fs2) \oneVoice <b, e b'>4( <cs g' b cs> |
  <as cs fs as>4) r8 <fs as cs fs>8 <b fs' b> <cs fs cs'> <d fs b d> 
    <e g b e> |
  <fs b d fs>2( <a b e a>4. <g b e g>8 |
  <fs b d fs>2) r8 b'-\slurShapeB ( g16 fs d b |
  \voiceOne fs2) \oneVoice <b, e b'>4( <cs g' b cs> |
  <d fs b d>4) r8 <gs, d' es> <fs cs' fs> <gs cs gs'> <a cs a'> <b fs' b> |
  % third beat and end of fouth, gs, in Urtext
  <cs fs a cs>2( <cs fs gs cs>4. <cs es gs cs>8) |
  <cs fs as cs>4-. <ds a' b ds>-. <b' b'>-> c16^( b g e |
  
  \barNumberCheck 9
  \clef bass \voiceOne b2) \oneVoice <e, g c e>4( <fs c' e fs> |
  <fs b ds>4) r8 <ds fs b> <e b' e> <fs b fs'> <g b e g> <a e' a> |
  \clef treble <b e g b>2( <d e a d>4.. <c a' c>16 |
  <b g' b>2) r8 e'8(  c16 b g e |
  \clef bass \voiceOne c2)~^\ten c8 \oneVoice r16 \clef treble f'-\slurShapeC (
    d c a f |
  \clef bass \voiceOne  cs!2~)^\ten cs8 \oneVoice r16 \clef treble fs'!16
    -\slurShapeF ( \beamPositionsB d cs as fs |
  % third beat, bs, in Urtext
  <b, d>8) r16 g''16-\slurShapeH ( e d b g  <bs, ds>8) r16 gs''-\slurShapeK (
    e ds bs gs |
  <cs, e>8) r16 a''-\slurShapeL ( fs e cs a  <cs, as'>8) r16 as''( fs e cs
    as) |
  
  \barNumberCheck 17
  \tuplet 3/2 { <bf d bf'>8( <a a'> <g g'> } <f bf f'>4 <g c ef> 
    \slashedGrace { ef'8 } \voiceOne d8. c16 |
  \oneVoice <d, a' d>4 <d g d'> <ef af c> \slashedGrace { c'8 } \voiceOne 
    bf8. a16 |
  \oneVoice <g, bf cs! g'>4) fs16( g bf cs  fs g bf cs  fs[ g g') r32 fs]
    -\slurShapeO ( | 
  \voiceOne f16 e ef d  <af d> <g c> <f bf> <ef af>  <d g> <c f> <bf ef> <af d>
    <g c> <f bf> <ef af> <d g> |
  <d f>8) b'\rest <af, f'>2-\slurShapeP ( <gf bf ef gf>8[) r16 <gf c ef>]
    -\slurShapeQ ( | 
  d'8. cs!16 e!8. d16 <f, b! f'>8. e'16 <c e bf'>8. a'16 |
  a'2 bf8 a g f |
  e8 d f e d2) |
  
  \barNumberCheck 25
  <d a'>2(\arpeggio bf'8\arpeggio a g f |
  e d f d d2) |
  << { a'2( bf8\arpeggio a g fs! } \new Voice { \voiceFour d1 } >> |
  fs2 fs4 fs |
  \oneVoice <g, g'>4) \omit TupletBracket \tuplet 3/2 4 { r8( \voiceOne bf,
    <g' bf>) f( ef <c' ef>)  bf( g <ef' g>) } |
  \tupletOff \tuplet 3/2 4 { \oneVoice c8( bf <g' bf>)  f( ef <ef' g>
    <bf ef>) <g bf>-> <ef g>->  <bf ef>-> <g bf>-> <ef g>-> } |
  \voiceOne gs,16-\slurShapeT ( a! <e'! a> g!  s8 <gs b>[  <a cs>] a4->
    <af b>8 |
  r8 c4-> <c d>8 r e4 <e g!>8[ |
  
  \barNumberCheck 33
  <a, d f>8]) bf4->-\slurShapeU ( bf8 g\rest a4-> bf16 a |
  g8\rest g4-> g8 g\rest f4-> g!16 f~ |
  f e g, d'  f e cs e  a, bf g d'  f e cs e |
  a,16 bf g d'  f e cs e  a, bf g d'  f e cs e |
  a,16 bf g d'  f e cs f  a g e a  c bf g d' |
  \oneVoice f16 e cs! e  a g e a  c bf g d' f e cs f |
  \ottava 1 a16 g e a  c b bf g \ottava 0 e c b bf  g e c b! |
  \voiceOne bf16 g e cs!  c b! \staffDown bf a  gs g e cs!  b gs b a) |
  
  \barNumberCheck 41
  \staffUp \oneVoice r4^\sostenuto fs'''2( g8 fs |
  e4 d) r fs,8( cs' |
  b a cs d  es[ fs b8. a16] |
  a2 g4) r |
  g2( fs8 ds fs e |
  e4 g,) r b8.( cs16 |
  b8 a cs d  e[ g cs8. b16] |
  gs2 a4 g8. fs16 |
  
  \barNumberCheck 49
  fs4. e8 d4 e8. b16 |
  d8 cs \tupletOn \tuplet 3/2 { cs b a } a4 fs'8.) fs16( |
  fs4. e8 \tuplet 5/4 { cs d e g fs } |
  a,4 \stemUp \tuplet 3/2 { cs8 b8. a16 } a4) \stemNeutral \afterGrace 7/8
    b(\startTrillSpan { a16\stopTrillSpan b } |
  cs4 bs8. cs16 ds8 es fs gs |
  a8)\noBeam \ottava 1 cs'~( \magnifyMusic #2/3 { \scaleDurations 12/18 {
    cs[ b16 a gs fs es fs e d cs b \ottava 0 gs fs cs b fs b]
  } } |
  a8. d16 cs4) \grace { ds,16-\slurShapeB ^( es } \afterGrace 7/8
    es2\startTrillSpan { ds8\stopTrillSpan es a gs fs } |
  fs4) fs'2( fs4 |
  
  \barNumberCheck 57
  g8 e b cs  d4 e |
  fs4 b8. a16 \tupletOn \tuplet 3/2 4 { b8 a8. g16  g8 fs8. es16 } |
  fs8 d b cs  d ds) r16 e8( es16 |
  \omit TupletBracket fs8[ g \tuplet 3/2 { gs cs b] } a2) |
  \voiceFour <d, d'>4^( <cs cs'>8. <b b'>16 \oneVoice <cs g' a cs>8[ <b b'>
    \slashedGrace { <b b'> } <a a'> <gs gs'>] |
  <b d fs b>8. <a a'>16 \tuplet 3/2 { q8 <g! g'!> <fs fs'> } <fs bf cs fs>8.
    <e e'>16 <fs cs' fs>8. <g g'>16 |
  % fourth beat, last 16th, gs's in Urtext
  \slashedGrace { d'8 } d16[ <a' d>) r <cs, cs'>](  \tuplet 3/2 { q[ <d fs>
    <b b'>) } r <a a'>](  cs[ <g' a cs>) b,\rest <b b'>](  \tuplet 3/2 { q[
    <cs g'> <a a'>) } r <gs gs'>]( |
  b16[ <d fs b>) b\rest <a a'>](  \tuplet 3/2 { q[ d <g,! g'!>) } r <fs fs'>]( 
    q[ <bf cs>) r <e, e'>](  <fs fs'>[ <bf cs>) r <g g'>]( |
    
  \barNumberCheck 65
  <a c ds a'>8-.) r <c, ds a'>2->( <c e! a>4 |
  b16)^\leggiero fs' a b  \voiceOne s8 fs''8( fs e) r b( |
  b!8 a) r e'( e d) r fs,-\slurShapeAC ( |
  fs8. e16 \oneVoice cs'! b g fs  e d b g  e d! b d' |
  % third beat, b in chord, Urtext and Autograph
  <b, e>4\arpeggio-\underSlurTwo ^\tenutoMarkup <a b ds fs> <g b e g>
    <g cs fs>8.\arpeggio e'16) |
  fs,16 cs' e fs  \voiceOne s8 cs''( cs b) r fs( |
  fs!8 e) r b'( b a) r e |
  e16( ef d cs!  c b! a gs)  f'( e ds d  cs b as cs |
  
  \barNumberCheck 73
  g'16 fs es e  d cs e d) \tuplet 3/2 4 { <d b'>8( <cs as'> <d b'>
    <ds bs'> <e cs'> <es d'!> } |
  <fs d'>8)\noBeam <g! cs>( <fs b> <g cs>  <fs b> <e cs'> <d d'> <e a> |
  <d g>8 <cs a'> <b b'> <cs fs>  e <a, ds fs> g' <a, cs> |
  <fs d'!>4)^\aTempo fs16 g a d  \voiceOne b4~ b8 a16 s |
  e'4~ e8. d16 <gs, cs>4~ cs8 \omit TupletBracket \tuplet 3/2 { cs16 d b } |
  <g! b>4~ q8 a-\tieShapeA _~ <g a cs>4~ <a cs>8 d |
  <g, a cs e>4~ <a cs e>16[ cs b' r32 b] \tuplet 3/2 4 { b8( a8. g16 
    g8[ fs) f16\rest <gs, es'>]( } |
  \tuplet 3/2 { <b g'!>8[ <a fs'>]) b\rest } fs16 g a d  b4~ b8 a16 s |
  
  \barNumberCheck 81
  e'4~ e8. d16 <d, gs cs>4~ <gs cs>8[ cs16\arpeggio \grace { d8*1/4 cs b cs e
    d } <d, b'>16] |
  <d g! b>4~ <g b>8 a-\tieShapeC _~ <g a cs>4~ <a cs>8 d |
  <g, a cs e>4 g16\( cs a' bf(  \tuplet 3/2 { as8) cs, b' } b16 cs fs e |
  d4\) d-\slurShapeAR ( fs, b8. a16 |
  gs2 g4 fs8. e16 |
  d8 cs c b a4 b8. a16 |
  a8 gs4. g4 fs8. e16 |
  <d fs>4) fs2(^\> e8. d16\! |
  
  \barNumberCheck 89
  fs4)^\> fs2( \after 8. \! e4 |
  
  \alternative {
    \volta 1 {
      e1~ |
      <cs e>2) \oneVoice r4 g''16 fs e b |
    }
    \volta 2 {
      e,1^( |
      d2 cs | 
    }
  }
  } % repeat volta
  
  \voiceOne cs2 cs~ |
  cs2 es4 fs8. a16 |
  a2 gs) |
  
  \barNumberCheck 97
  b4( b~^\> b8\! as16 b!  d cs e d |
  <e, g cs>16 <as e'>) \oneVoice r8 r4 r4 \clef bass fs16( e cs as |
  fs4.) <cs fs as>8 <b fs' b> <cs fs cs'> <d fs b d> <e b' e> |
  \voiceOne fs'2.( \oneVoice <gs, cs gs'>4 |
  <a cs a'>4) <cs, cs'>4~(^\> q8\! <bs bs'>16 <cs cs'> <ds ds'>[ <cs cs'>
    <gs' gs'> r32 <cs, cs'>] |
  % first beat, as, in Urtext and Autograph
  \voiceOne <as' cs>4) \oneVoice r r2 |
  r4 \clef treble \voiceOne cs8.( gs'16 fss4 gs8. a!16 |
  as4) bf2(^\> a4\! |
  
  \barNumberCheck 105
  a4 g8. d'16) e4( f8. fs16 |
  a2 g4) <e gs>( |
  \voiceOne <af, c e af>8) e16 f  \oneVoice af c e f  \voiceOne d'4 \oneVoice
    <d, af' d>( |
  <d e g d'>2 <cs! g' cs!>4) \voiceOne c'16( bf g df | 
  \oneVoice <gf, df' gf>8) d!16 ef  g df' d ef  \voiceOne c'4 \oneVoice
    <c, g' c>( |
  <c d f c'>4 <b! d g b!>8)\noBeam \clef bass <d,, g b!> <c g' c>^\sempreF
    <d g d'> <ef g c ef> <f c' f> |
  <g c g'>4 <a! c fs! a!>8. <bf g' bf>16 <a d>4 <e a e'> |
  <f a d f>4. \clef treble <af d f>8 \voiceOne gf' af bff bf |
  
  \barNumberCheck 113
  cf4 c8. df16 cf,4 ef |
  \oneVoice <af, ef' af>4 r8 <c gf' a> <f bf> <c f c'> <df f bf df>
    <d f cf' d> |
  <ef bf' ef>4 \stemUp <e g c e>8.^( <f c' f>16 \stemNeutral <c ef g>4
    <b! d g b> |
  <c g' c>4) \clef bass <a c f>8.( <bf f' bf>16 <ef, af>4 <df g bf> |
  <ef gf c>8) r r4 r2 |
  r2 r4 \clef treble gf''( |
  f8[ df bf8. c16] df4 ef |
  % second and third beats, af's in Urtext
  f4 bf8. af16 \tuplet 3/2 4 { bf8 af8. gf16  gf8 f8. e!16 } |
  
  \barNumberCheck 121
  f8 df bf c  df d) r16 ef8( e16 |
  e8 f) r4 f,16^( df af af'  f df af af' |
  f16 df af af'  f df af af'  f df af af'  f df af af' |
  f16 df af af'  f df af af'  f ef af, af' f ef af, af') |
  af'8( f c d!  ef4 f |
  g4 c~ c8 bf c4~ |
  c4. bf8 \tuplet 3/2 4 { c8 bf8. af16  af8 g8. fs!16 } |
  g8 c4 bf8 \tuplet 3/2 { c8 bf8. af16 } af4) |
  
  \barNumberCheck 129
  R1 |
  f16( bf, af g'  f bf, af d,  d' af d, ef'  d af d, bf |
  f'16 bf, af bf'  af d, c bf  f' bf, af bf'  af f bf, af |
  f'16 cf af af'  f d af f  d' cf af af'  f d b! b'!) |
  << 
    { 
      \voiceOne f'2-\slurShapeAT ( \beamPositionsA e!8 c as b |
      % second half of 2nd beat, gf, in Urtext and Autograph
      \voiceFour c8 s4 \voiceOne \beamPositionsF gf'8[ f] s4 bs,8[ | 
    } 
    \new Voice { \voiceThree s2. s8 af' | \beamPositionsE g8 ef bf c s2 | } 
  >>  
  cs!8]) e4.-> \oneVoice <fs, b ds>8( <g cs> <fs b> <g cs e> |
  \tuplet 3/2 4 { q8 <fs b ds>) q(  q <g as cs>) q(  \stemUp q <fs b>) 
    <fs b gs'>( <fs b fs'>[ <fs cs' fs>) r16 <fs cs' e>] } \stemNeutral |
  
  \barNumberCheck 137
  <fs b ds>8 r <ds gs ds'>4-\slurShapeAV ( <e gs cs> \voiceOne \slashedGrace 
    { cs'8 } b8. as16 |
  \voiceFour \tuplet 3/2 { gs8 fs! e) } \voiceOne <b e b'>4-\slurShapeAW (
    <c f a> \slashedGrace { a'8-\adjustArpeggioB \arpeggio } g8. fs16 |
  % ds's in Urtext, and next two measures
  \oneVoice <g, as e'>4-.) ds'16( e g as  ds e e' ds  
    cs[ b \ottava 1 ds') r32 cs]( |
  b16 as gs fss  <ds gs>-. <cs fs>-. <b es>-. <a ds>-. \ottava 0 <gs cs>-. 
    <fs b>-. <es as>-. <ds gs>-.  <cs fs>-. <b es>-. <as ds>-. <gs cs>-. |
  % third beat, prall on 2nd 6th note, Urtext and Autograph
  <fs b>16[) r32 <es as>\slurShapeAX ^( <ds gs>16 <cs fs>] \voiceOne es gs ds
    gs  cs, gs'\prall fss gs  ds' cs ds, es |
  % fourth beat, chord is <f gs> in Urtext and Autograph
  <as, fs'>8-.) fs'4->-\slurShapeAY ( <fs gs>8[ <fs as>]) fs4->-\slurShapeAZ (
    <f gs>8) |
  r8 a4->-\slurShapeAZ ( <a b>8) r cs4->-\slurShapeBA ( <cs e!>8[) |
  <fs, b d>8] g4->-\slurShapeAZ ( g8) b\rest fs4->( g16 fs) |
  
  \barNumberCheck 145
  \clef bass r8 e4->-\slurShapeAZ ( e8) r d4->( e!16 d)~ |
  d16( cs e, b'  d cs as cs  \mockDim fs,\startTextSpan as e b'  d cs as cs |
  fs,16 as e b'  d cs\stopTextSpan as d  \clef treble \oneVoice fs e cs fs
    a! g e b') |
  % third beat, 1st 16th note, a, Urtext and Autograph 
  d16-\slurShapeBB ( cs as d  fs e cs e  a! g e b'  d cs as d |
  % first beat, 4th 16th note, a, Urtext and Autograph 
  \ottava 1 fs16 e cs a'! gs g fs f  e d' cs as  fs e cs as |
  \ottava 0 fs16 e d cs  as fs e cs  \staffDown \voiceOne as fs e cs
    as es gs fs ) \staffUp | 
  \key b \major
  \oneVoice r4 ds'''2(^\sostenuto e8. ds16 |
  cs4 b) r ds,8( as' |
  
  \barNumberCheck 153
  gs8 fs as b  css[ ds gs8. fs16] |
  fs4 e) r2 |
  e2~( e8 bs ds cs |
  cs4 e,) r gs8.( as16 |
  gs8 fs as b  cs[ e as8. gs16] |
  % fourth beat, e, in Urtext
  es2 fs4 e8. ds16) |
  ds4.( cs8 b4 cs8. gs16 |
  b8[ as \slashedGrace { as } gs fs] fs4 ds'8.) ds16-\slurShapeBH ( |
  
  \barNumberCheck 161
  ds4. cs8~ \tuplet 6/4 { cs[ as b cs e ds] } |
  fs,4 \tuplet 3/2 { as8 gs8. fs16 } fs4 \slashedGrace { gs8 } 
    \trillSpanUnderSlur \afterGrace gs4\startTrillSpan 
    { fs16\stopTrillSpan gs } |
  as4 gss8 as  b css ds es |
  fs8 b as fs  ds b ds, gs |
  fs8. b16 as2 \grace { bs,16 css } \trillSpanUnderSlur \afterGrace 
    css4\startTrillSpan { bs16\stopTrillSpan css } |
  ds4) ds'2-\slurShapeBI ( ds4 |
  e8 cs gs as b4 cs |
  ds4 gs8. fs16 \tuplet 3/2 4 { gs8 fs8. e16  e8 ds8. css16 } |
  
  \barNumberCheck 169
  ds8 b gs as b bs) r16 cs8( css16 |
  ds8[ e \tuplet 3/2 { es as gs] } fs2)
  \voiceFour <b, b'>4^( <as as'>8 <gs gs'>) \oneVoice <as e' fs as>( <gs gs'>
    \slashedGrace { q } <fs fs'> <es es'>) |
  <gs b ds gs>8.( <fs fs'>16 \tuplet 3/2 { <fs b fs'>8 <e! e'!> <ds ds'> }
    <ds as' ds>8.[ <cs cs'>16 <ds as' ds>8. <e e'>16]) |
  \slashedGrace { b'8 } b16[( <fs' b>) r <as, as'>]( \tuplet 3/2 { 
    q[ <b ds> <gs gs'>) } r <fs fs'>]( as[ <e' fs as>) b\rest <gs gs'>](
    \tuplet 3/2 { q[ <as e'> <fs fs'>) } r <es es'>]( |
  <gs gs'>16[ <b ds>) r <fs fs'>]( \stemDown \tuplet 3/2 { q[ b <e,! e'!>) } r 
    <ds ds'>]( q[ <fss as>) r <cs cs'>]( <ds ds'>[ <fss as>) r <e e'>]( |
  \stemNeutral <a bs fs'!>8-.) r <bs, fs' a bs>2-\slurShapeBJ ^( <cs fs a cs>4 |
  <fs gs ds'>8-.)\noBeam gs,16^\leggiero gs' \voiceOne s8 ds''( ds cs) r gs( |
  
  \barNumberCheck 177
  gs!8 fs) r cs'( cs b) r ds,( |
  ds8. cs16 \oneVoice as'! gs e ds  cs b gs e  cs b gs b') |
  \clef bass <gs, b cs>4(^\tenutoMarkup <fs b ds> <gs b e> \voiceOne 
    \slashedGrace { e'8-\adjustArpeggioA \arpeggio } ds8. cs16) |
  \oneVoice ds,16 as' cs ds  \clef treble \voiceOne r8 as''( as gs) r ds( |
  ds!8 cs) r gs'( gs fs) r cs-\slurShapeBK ( |
  \oneVoice <ds, cs'>16 c' b as  a <d, gs> fs es)  <es ds'>( cs' c b
    <e, as> gs fss as |
  <fss e'>16 ds' d cs!  b as cs b) \tuplet 3/2 4 { <gs b gs'>8 <as fss'>
    <b gs'>  <bs a'> <cs as'> <css b'!> } |
  <b ds b'>8( <e! as> <ds gs> <e as>  <ds gs> <cs as'> <b b'> <cs fs>) |
  
  \barNumberCheck 185
  <b e>8( <as fs'> <gs gs'> <as ds>  cs^\ritenuto <fs, bs ds> <cs' e>
    <fs, as> |
  \voiceOne <ds b'!>8)^\aTempo r8 ds16 e fs b  gs4~ gs8 fs16 s |
  cs'4~( cs8. b16) <es, as>4~( as4*1/2 \tuplet 3/2 { as16 b gs) } |
  <e! gs>4~ gs8 fs s4 \voiceFour \tieToNextNote \beamPositionsI e16~ fs~ b ds |
  \voiceOne \untieToNextNote <e, fs as cs>4~ <fs as cs>16[ as gs' r32 gs]( 
    \tuplet 3/2 4 { gs8 fs e e[ ds) d16\rest <es, css'>]-\slurShapeBW ( } |
  \tuplet 3/2 { <gs e'!>8 <fs ds'>) b\rest } ds,16 e fs b  gs4~ gs8 fs |
  cs'4~ cs8. b16 <b, es as>4~ <es as>8[ as16 \grace { b8*1/4 as gs as cs b }
    <b, gs'>16] |
  <b e! gs>4~ <e gs>8 fs <e fs as>4~ <fs as>8 b |
  
  \barNumberCheck 193
  s4 e,16 as es' fs \tuplet 3/2 { fss8 as, gs' } gss16 as ds cs |
  b4-\slurShapeCB \repeatTie b-\slurShapeCD ( ds, gs8. fs16 |
  es2 e4 <fs, ds'>8. <e cs'>16 |
  b'8 as a gs fs4 gs8. fs16 |
  \clef bass es2) <e, as fs'>4-\slurShapeCE (\arpeggio \clef treble 
    cs''8.\arpeggio b16 |
  \oneVoice <b, ds b'>8-.) r16 ds(  cs b fs ds') r8 r16 fs(  e ds b fs') |
  r8 r16 as-\slurShapeCF (  gs fs ds b  cs' b fs ds  e' ds b fs |
  gs'16 fs ds b  cs' b fs ds  \ottava 1 e' ds b fs  gs' fs ds b |
  
  \barNumberCheck 201
  cs'16 b gs fs  \ottava 0 ds b gs fs  ds b gs fs  \clef bass ds b gs fs |
  b,4) r <ds b'> <e as cs> |
  <ds b' ds>4 r \clef treble <fs' as e' fs>2 |
  <ds fs b ds>1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4 |
  
  \repeat volta 2 {
  \voiceFour r4 <b d> s2 |
  s1 * 3 |
  r4 <b d> s2 |
  s1 * 3 |
  
  \barNumberCheck 9
  \clef bass r4 <e, g> s2 |
  s1 * 3 |
  r4 <e bf'> <f a>8 s4. |
  r4 <es b'!> <fs as>8 s4. |
  s1 * 2 |
  
  \barNumberCheck 17
  s2. <ef' a>4 |
  s2. <c fs!>4 |
  s1 * 2 |
  s4 cf bf~ \hideNoteHead bf |
  f4 <f a!> s2 |
  <a' d>1 |
  a2-\slurShapeR ( bf8 a g f |
  
  \barNumberCheck 25
  e8\arpeggio d f e d!)\arpeggio r r4 |
  bf'2( c8 bf a g |
  g8 fs! a g fs)\arpeggio r r4 |
  ef'8 d f ef  d c bf a |
  s1 * 2 |
  % third beat, last 16th, g, in Urtext
  s4  f16 e d f  cs e a, g'  f e d df |
  c16 d! c bf'  a g f a  e f <e e'> d'  cs bf! a bf |
    
  \barNumberCheck 33
  s8 bf,16 <f' a>  <e g> f e g  a, bf a <e' g>  <d f> e d f |
  g,16 a g <d' f>  <cs e> d cs e  f, g f <cs' e>  <b! d> cs b d |
  cs8 g4.*2/3 s16 e'4*1/2 s16 g,4.*1/6 d'8. s16 e4*1/4 |
  s8 g,4.*1/6 d'8. s16 e4*3/4 g,4.*1/6 d'8. s16 e4*1/4 |
  s8 g,4.*1/6 d'8. cs4 s4. |
  s1 * 2 |
  \staffDown s2. s16 gs, s a \staffUp |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 4 |
  \voiceOne a'''2 s2 |
  s1 |
  s2 cs,4 s |
  b4 s2. |
  
  \barNumberCheck 65
  s1 |
  s4 \voiceFour cs'16 b as a  gs a b d,!  gs fs e d |
  bs16 cs g! e'  b' a gs g  fs g a c,  fs e d c |
  as16 b ds e s2. |
  s1 |
  s4 gs16 fs es e  ds e fs a,  ds cs b a |
  fss16 gs d! b'  fs' e ds d  cs d e g, cs b a g |
  fs4~ fs16 f8. gs4 g |
  
  \barNumberCheck 73
  as4 b s2 |
  s1 |
  s2 b4.*2/3 <g e'>4 |
  s2. fs16 g a fs' |
  s4 d,16 e fs d' s4 d,16 e gs8 |
  <<
    { 
      s4 s16 g8._~ \hideNoteHead g4 \tieToNextNote \forceHShiftA g4*1/4_~
        a8.-\tieShapeB _~ | \hideNoteHead <a g>4 
    }
    \\
    { s4 cs,16 g' a d s4 \beamPositionsC g,16 a d fs | s4 }
  >> 
  g,4*1/4 cs8 s16 cs2 |
  d4 s2 fs,16 g a fs' |
  
  \barNumberCheck 81
  s4 
    << 
      { 
        \tieToNextNote \beamPositionsI d,16~ e fs d' \hideNoteHead d,4 d16 e
          gs8\arpeggio
      }
      \new Voice { \voiceThree \forceHShiftB d4 s s16 \moveDotA e8. } 
    >> |
  s4
    <<
      { cs16 g'~ a d \hideNoteHead g,4 \beamPositionsD g16~ a~ d fs }
      \new Voice { \voiceThree s16 g,8. s4 \forceHShiftA g4*1/4 a8. }
    >> |
  \hideNoteHead <g a>4 s16 cs4*3/4 \tupletOff \tuplet 3/2 { g'4*1/2~ cs,4 }
    g'8 a16 g |
  fs2 s |
  <b, f'>4 e8. d16 
    << { bf4\arpeggio a8. g16 } \new Voice { \voiceThree cs2 } >> |
  << { fs,!1 } \new Voice { \voiceTwo s2. c4 } >> |
  << { f4 e8. d!16 } \new Voice { \voiceTwo b2 } >> cs2 |
  a2 b! |
  
  \barNumberCheck 89
  << { a2 b } \new Voice { \voiceTwo s2... d16 } >> |
  
  \alternative {
    \volta 1 {
      << 
        { g,2~ g4.. fs16 | fs2 } 
        \new Voice { \voiceThree d'2 cs^~ | \hideNoteHead cs2 } 
      >> s2 |
    }
    \volta 2 {
      << 
        { g2. fs4 | fs2. s4 | } 
        \new Voice { \voiceThree d'2 cs-\tieShapeD ~ | cs4 b2 a4 | } 
      >>
    }
  }
  } % repeat volta
  
  gs1 |
  << 
    { b1 | b1 | %{ bar 97 %} \voiceThree gs'2 } 
    \new Voice { 
      \voiceFour s2. d4 | d4 d~\> d8\! cs16 d  e! d b' d, | %{ bar 97 %} d4 s 
    } 
  >>
  \voiceFour <e! g>2~ |
  \hideNoteHead q16 s8. s2. |
  s1 |
  \clef bass 
  << 
    { \voiceTwo fs,2 s | } 
    \new Voice { 
      \voiceFour b4-\slurShapeAS ^( cs8. \grace { e8 } d16 fs,4) s4 | 
    } 
  >>
  s1 |
  gs8( fss) s2. |
  << 
    { s4 \clef treble cs'2. | cs!2 c | } 
    % fourth beat, 3rd 16th note, fs, in Urtext
    \new Voice { \voiceTwo s4 \clef treble s4 r8 css16 ds~ ds e fs e | e1 | } 
  >>
  
  \barNumberCheck 105
  s2 <bf' c> |
  <bf e>2. df16 c bf e, |
  s2 g'16 af e f s4 |
  s2. <df g>4 |
  s2 f16 g d ef s4 |
  s1 * 2 |
  s2 df,16 gf, df' cf  bff df g bf, |
  
  \barNumberCheck 113
  << { gf'16 cf, f gf  bff ef, af df, } \new Voice { \voiceOne s4 s8 af' } >>  
    cf,16 \staffDown \voiceThree g af ef  \staffUp \voiceTwo bf' \staffDown
    \voiceThree fs g ef |
  s1 * 7 |
  
  \barNumberCheck 121
  s1 * 8 |
  
  \barNumberCheck 129
  s1 * 4 |
  \staffUp \voiceFour f''8 d a! b!~ b c s4 |
  s2 df8 bf gs a |
  gs4 b!8 <fs! cs'> s2 |
  s1 |
  
  \barNumberCheck 137
  s2. <cs fss>4 |
  \voiceOne <b b'>4 s2 \voiceFour <a b ds>4 |
  s1 * 2 |
  s4 b8 b cs4 s |
  s8 fs,16 e'!  d! cs b d  as cs fs, e'  d cs b bf |
  a!16 b! a g'!  fs! e d fs  cs d cs b'  as g fs g |
  s8 g,16 <d' fs>  <cs e> d cs e  fs, g fs <cs' e>  <b d> cs b8 |
  
  \barNumberCheck 145
  \clef bass e,16 fs e <b' d>  <as cs> b as cs  d, e d <as' cs>
    <gs b> as gs b |
  as4*1/2 e2*1/8 b'4 s16 s8 e,4. |
  s8 e4. s2 |
  s1 * 5 |
  
  \barNumberCheck 153
  s1 * 8 |
  
  \barNumberCheck 161
  s1 * 8 |
  
  \barNumberCheck 169
  s1 * 2 |
  \voiceOne fs''2 s2 |
  s1 |
  s2 as,4 s4 |
  s1 * 2 |
  s4 \slashedGrace { gs8*1/2 } \voiceFour as'!16 gs fss fs  es fs gs b,!
    es ds cs b |
  
  \barNumberCheck 177
  gss16 as e! cs'  gs' fs es e  ds e fs a,  ds cs b a |
  fss16 gs cs, cs' s2. |
  \clef bass s2. <e,, as>4 |
  s4 \clef treble es''16 ds css cs  bs cs ds fs,!  bs as gs fs |
  % third and fourth beats, 4th 16th note, e, in Urtext
  dss16 es b! gs'  ds' cs bs b  as b cs e,  as gs fs e |
  s1 * 3 |
  
  \barNumberCheck 185
  s2 gs4.*2/3 e4 |
  s2. ds16 e fs ds' |
  s4 b,16 cs ds b' s4 b,16 cs es8 |
  << 
    { 
      \hideNoteHead e4_~ <as, e'>16 e' fs b \voiceOne <e, fs~ as~>4 <fs as>4 |
    } 
    \new Voice { s4 s16 e8. s4 s16 fs8. | } 
  >> 
  \voiceFour \hideNoteHead <e fs>4 
    << 
      { 
        e4*1/4 as8 s16 \tuplet 3/2 4 { \tupletOn \staffDown \voiceThree 
          e8 ds cs \tupletOff \staffUp \voiceFour gs'[ fs] r } 
      } 
      \new Voice { \voiceFour s4 as2 } 
    >> |
  b4 s2 ds,16 e fs ds' |
  << { s4 b,16 cs ds b' } \new Voice { \voiceOne s4 \forceHShiftC b, } >> 
    s4 b16 cs es8 |
  << 
    { 
      s4 as,16 e' fs b s4  \beamPositionsG e,16~ fs~ b ds | \voiceOne 
        <e, fs as cs>4
    }
    \new Voice { \voiceThree s4 s16 e8. s4 \forceHShiftA e4*1/4 fs8. | s4 } 
  >>
  
  % barNumber 193 (first beat is in the lines above)
  \voiceFour e4*1/4 as4*3/4 e'4-\slurShapeCA ~ e8 fs16 e |
  ds2 s |
  <gs, d'>4 cs8. b16 as2 |
  ds,1 |
  % last beat, e is in the Urtext
  \clef bass <b ds>4 <as cs>8 <es b'> s4 \clef treble <as e'>\arpeggio |
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
  \partial 4 s4 |
  
  \repeat volta 2 {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 3 |
  s2 s8 e'-\slurShapeE ( c16 b g e |
  \voiceThree c2~) c8 \oneVoice r16 f'-\slurShapeD ( d c a f |
  \voiceThree cs!2~) cs8 s4. |
  s1 * 2 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 6 |
  cs,4 d s2 |
  s1 |
  
  \barNumberCheck 33
  s8 a'4. s8 a4. |
  s8 a4. s8 a4._~ |
  \voiceTwo a2 a'8\rest <e bf'>4. |
  a8\rest <e bf'>4. a8\rest <e bf'>4. |
  a8\rest << { \voiceTwo bf4^( a8) } \\ { \voiceTwo e4. } >> s2 |
  s2 s8 \clef treble \voiceThree e'4.*1/3 a4 |
  s1 * 2 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 * 3 |
  s8 g,4.*1/3 b4 s2 |
  s1 * 3 |
  c8 b16 bf  a gs c b  d cs c b  as d cs e~ |
  
  \barNumberCheck 73
  e16 ds d cs s2. |
  s1 * 7 |
  
  \barNumberCheck 81
  s2 s8 e,4.*1/6 b'4*1/4 s4 |
  s1 * 7 |
  
  \barNumberCheck 89
  s1 |
  
  \alternative {
    \volta 1 {
      s1 * 2 |
    }
    \volta 2 {
      s1 |
      s2. cs,4 |
    }
  }
  } % repeat volta
  
  cs4 cs~^\> cs8\! bs16 cs  d cs gs' cs, |
  fs4 es8. a16 gs4 s |
  s1 |
  
  \barNumberCheck 97
  s1 * 8 |
  
  \barNumberCheck 105
  s1 |
  s8 \oneVoice b,,16_( c  g' c e g  c df b c  c,4) |
  s1 * 6 |
  
  \barNumberCheck 113
  s1 * 8 |
  
  \barNumberCheck 121
  s1 * 8 | 
  
  \barNumberCheck 129
  s1 * 8 |
  
  \barNumberCheck 137
  s1 * 5 |
  \voiceThree s4 b,4*1/2 fs'4 <as, fs'> s8 |
  s1 |
  s8 fs'4. s8 fs4. |
  
  \barNumberCheck 145
  s8 fs4. s8 fs4.*2/3 es'8[ |
  fs8] <cs g'!>4. s8 q4.|
  s8 q4 fs8 s2 |
  s1 * 5 |
  
  \barNumberCheck 153
  s1 * 8 |
  
  \barNumberCheck 161
  s1 * 8 |
  
  \barNumberCheck 169
  s1 * 8 |
  
  \barNumberCheck 177
  s1 |
  s8 e4.*1/3 gs4 s2 |
}

leftHandLower = \relative {
  \partial 4 r4 |
  
  \repeat volta 2 {
  r4 b, <g g'> <e e'> |
  <fs cs' fs>4 r8 <e e'>  <d d'> <as as'> <b b'> <b' e g b> |
  <b d fs b>2 <b e g b>4. <b e g cs>8 |
  <b fs' d'>2 r |
  r4 b <g g'> <e e'> |
  <b b'>4 r8 q <a a'> <es es'> <fs fs'> <d d'> |
  <cs cs'>2 <cs' cs'>4. q8 |
  <fs fs'>4 <b, b'> r2 |
  
  \barNumberCheck 9
  r4 e <c c'> <a a'> |
  <b b'>4 r8 <a' b>  <g b> <ds b'> <e b' e> <e c' fs> |
  <e b' g'>4\arpeggio ds16 e g b  e4-\pastBarLine \< ds16 e a c |
  e2\! s2 |
  \voiceFour r4 c,,4 f8 s4. |
  r4 cs fs8 \oneVoice r16 fs,-\slurShapeG ( \stemDown fs' cs' fs as |
  d,8) r16 \stemUp fs,,-\slurShapeI ( \stemDown fs' b g' b  ds,8) r16 \stemUp
    fs,,-\slurShapeJ ( \stemDown fs' ds' gs bs |
  e,8) r16 \stemNeutral fs,,-\slurShapeM (  fs' cs' a' cs  <fs, e'>8) r16 fs,,
    -\slurShapeN ( fs' cs' fs e') |
    
  \barNumberCheck 17
  <f, d' f>4 <d, d'> <ef ef'> <f f'> |
  \tuplet 3/2 { <bf bf'>8 <a a'> <g g'> } <bf, bf'>4 <c c'> <d d'> |
  <e! bf' cs! e!>4 r r <e' bf' cs g'>\arpeggio |
  <f af bf d af'>8\arpeggio r \clef treble f''16( ef d c  bf af g f
    ef d c bf |
  \clef bass af16 g f ef  d cf af f  d bf a! bf  bf'8[) r16 bf16]( |
  bf,4 a gs g |
  f8->)^( a16 bf  b\< c cs d  ds e f fs  g gs a bf |
  b!16 c cs d  ds e f fs  g gs a bf  b c cs d)\! |
  
  \barNumberCheck 25
  g,,,8->^( a16 bf  b\< c cs d  ds e f fs  g gs a bf |
  b!16 c cs d  ds e f fs  g gs a bf  b c cs d)\! |
  a,,8.->^( bf16  b\< c cs d  ds e f fs  g gs a bf |
  b!16 c cs d  ds e f fs  g gs a bf  b c cs d\! |
  ef4-.) \tupletOff \tuplet 3/2 { ef,,8( g' bf,  af' g bf,)  ef,-\slurShapeS (
    ef'' bf } |
  \clef treble \tuplet 3/2 4 { af'8 g bf,)  ef,( bf'' bf,  g'') ef-> bf->
    g-> ef-> bf-> } |
  \clef bass \voiceTwo cs,,!8[ <a'! e'!>] d,[ a'] \oneVoice a,[ <cs a'>]
    d[ f'] |
  e,8[ <c' g'>] f,[ <c' a'>] gs[ <e' b'! d>] a,[ <cs a' e'>] |
  
  \barNumberCheck 33
  <d a' f'>8\arpeggio \voiceTwo a,4 <g'' cs>8 r a,,4 <f'' a>8 |
  r8 a,,4 bf''8 r a,,4 gs''8^( |
  \voiceFour a8) bf4. a,2 |
  a2 a |
  a2 \oneVoice r |
  a,4 r r8 \tieToNextNote \clef treble \voiceTwo \beamPositionsH e'''8~ a~ 
    cs!~ |
  <e, a cs g'>4 \oneVoice r r2 |
  \clef bass \moveRestA R1 |
  
  \barNumberCheck 41
  \undo \omit TupletNumber \tuplet 3/2 4 { d,,8[-\slurShapeV ( fs' d'  a fs
    fs']) } \tupletOff \tuplet 3/2 { a,,[( fs' d'  a fs fs']) } |
  \tuplet 3/2 { 
    d,8[( fs d' a fs fs']) a,,[( fs' d' a fs fs']) |
    d,,8[-\slurShapeV ( fs' d' a fs fs'])  d,[( fs d' b fs fs']) |
    e,,8[-\slurShapeV ( g' e' b g g'])  e,[( g e' c g g']) |
    e,,8[-\slurShapeV ( g' e' cs! g g'])  cs,,[( g' e' cs g g']) |
    e,8[( g e' cs g g'])  cs,,[( g' e' cs g g']) |
    e,,8[-\slurShapeV ( g' e' cs g g'])  e,[( g e' cs g g']) |
    \voiceTwo es,8[-\slurShapeW ^( b' gs' d b \staffUp d'])  \staffDown
      \oneVoice fs,,[-\slurShapeX ( a a' d, a a']) |
    
    \barNumberCheck 49
    fs,8[( cs' as' e cs as'])  b,( a' d,)  e,( gs' d) |
    a8( g'! e)  a,,( g'' cs,)  d,[( a' fs' d a a']) |
    g,8[-\slurShapeY ( cs bf' e, cs bf'])  fs,[-\slurShapeX ( a a' d, a a']) |
    cs,,8[-\slurShapeZ ( g' e' a, g e'])  d,[( fs d' gs, fs fs']) |
    cs,8[-\slurShapeAA ( fs cs' a fs cs])  b[-\slurShapeAA ( es cs' gs es b]) |
  }
  \tuplet 3/2 { a8( fs' cs' } fs) r \tuplet 3/2 { b,,( fs' gs } d')\noBeam d, |
  \tuplet 3/2 { cs8[-\slurShapeZ ( fs cs' a fs cs'])  \stemDown cs,,[
    -\slurShapeV ( cs' gs' <b d!> <a cs> <gs b>]) } |
  \tuplet 3/2 { fs,,8[( fs' cs' \clef treble a' cs a'] } \stemNeutral 
    fs16 cs a b'  fs cs a a') |
    
  \barNumberCheck 57
  g16 e a, b'  g e a, a'  fs d a b'  g cs, a a' |
  fs16 d a a'  fs ds a a'  g e a, b'  g cs, a a' |
  fs16 d! a b'  g e a, a'  fs d a b'  g cs, a a' |
  fs16 d a a'  f d a a'  e d a a'  e cs g a' |
  \clef bass fs,!16[( a d a  a'8]) r  e,16[( a cs a  a'8]) r |
  d,,16[( a' d a  a'8]) r  \clef treble g,16[( bf cs bf  bf'8]) r \clef bass |
  fs,,16[( d' a' a,  <a' d a'>8]) r  e,16[( a a' a,  <a' cs g'>8]) r |
  \stemDown d,,16[( a' a' a,  <fs' a d>8]) r  \stemNeutral g,16( cs e g
    \clef treble bf cs e bf' |
  
  \barNumberCheck 65
  % fourth best, 2nd 16th, e in Urtext
  <fs, c' ef>8-.) r  \clef bass fs4(\> es16 fs a g  ds e g fs)\! |
  <ds, ds'>4-. <b'' fs' a>-. <e,, e'>-. <b'' e gs>-. |
  <a,, a'>4-. <a'' cs g'!>-. <d,, d'>-. <a'' c fs>-. |
  \voiceTwo g,8( g'~ b~ ds <g, b e>4) \oneVoice r |
  g,4\arpeggio fs e a |
  <as, as'>4-. <fs'' cs' e>-. <b,, b'>-. <b'' ds>-. |
  <e,, e'>4-. <e' gs d'!>-. <a,, a'>-. <a'' cs>-. |
  \voiceTwo d,4 s e s |
  
  \barNumberCheck 73
  fs4 b \clef treble \tuplet 3/2 { <gs es' b'>8 r4 r <b! gs'>8 } |
  <a a'>8\noBeam \oneVoice e''!( d e  d cs b cs |
  b8 a g a  g b, e a,) |
  \clef bass \voiceTwo d,,16-\slurShapeAD ( a' d a' 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead b'16) } \tag midi { s16 } }
      \new Voice { r4 } 
    >>
    \staffDown d,,16-\slurShapeAE ( a' d e 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead e'16) } \tag midi { s16 } }
      \new Voice { r4 } 
    >> |
  \staffDown b,,16-\slurShapeAF ( fs' b cs 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead d'16) } \tag midi { s16 } }
      \new Voice { r4 } 
    >>
    \staffDown e,,,16-\slurShapeAG ( b' e b'
    << 
      { s8 \tag layout { \staffUp \hideNoteHead gs') } \tag midi { s16 } }
      \new Voice { r4 } 
    >> |
  \staffDown a,,16-\slurShapeAH ( e' a b 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead g'16) } \tag midi { s16 } }
      \new Voice { r4 } 
    >>
    \staffDown a,,16-\slurShapeAI ( e' a d  e4*3/4 
    \tag layout { \hideNoteHead g16) } \tag midi { s16 } |
  \oneVoice a,,16( e' a~ e'~ \voiceFour <a, e'>8.) 
    << 
      { a16~ a2 } 
      \new Voice { 
        \voiceThree \hideNoteHead a16^( \tupletOff \tuplet 3/2 { g'8)
          fs8. e16  \staffUp \voiceFour b'8[ a] r } 
      } 
    >> |
  d,,16-\slurShapeAJ ( a' d e 
    << 
      { 
        s8 \tag layout { \staffUp \hideNoteHead d'16)\noBeam } 
          \tag midi { s16 } 
      }
      \new Voice { r8 r16 } 
    >>
    \staffDown \stemUp a,,16-. \stemDown a-\slurShapeAK ( a' d e 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead fs'16) } \tag midi { s16 } }
      \new Voice { r4 } 
    >> |
    
  \barNumberCheck 81
  \staffDown b,,,16-\slurShapeAL ( fs' b cs 
    << 
      { 
        s8 \tag layout { \staffUp \hideNoteHead d'16)\noBeam } 
          \tag midi { s16 } 
      } 
      \new Voice { r8 r16 } 
    >>
    \staffDown \stemUp e,,,16-. \stemDown e-\slurShapeAM ( b' e b'
    << 
      { s8. \tag layout { \staffUp \hideNoteHead d16) } \tag midi { s16 } }
      \new Voice { r4 } 
    >> |
  % first beat 3rd and 4th 16th note, a b in Urtext
  \staffDown a,16-\slurShapeAN ( e' a b 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead g'16) } \tag midi { s16 } }
      \new Voice { r4 } 
    >>
    \staffDown a,,16-\slurShapeAO ( e' a d  
    << 
      { s8. \tag layout { \staffUp \hideNoteHead fs'16) } \tag midi { s16 } }
      \new Voice { e,4 } 
    >> |
  \staffDown 
    << { a,,16 e' a^~ e'^~ <a, e'>8  } \new Voice { \voiceThree s8 a s } >>
    \oneVoice r16 a,,16-\slurShapeAP ^( a' e' a e' \clef treble a e') r8 |  
  \clef bass d,,,8-\slurShapeAQ ( a'16 d  \voiceTwo a' c \staffUp fs a  c2) |
  \staffDown \oneVoice d,,,8( b'16 d  f gs b f') e4\arpeggio s |
  d,,8( a'16 d a' c cs d  ef c a fs  ef d a ef) |
  d8( b'16 d  ds e f b  bf2) |
  \oneVoice d,2 g,8( fs16 g  a g d' g, |
  
  \barNumberCheck 89
  d2) g,8( fs16 g  a g d' g, |
  
  \alternative {
    \volta 1 {
      a2) \afterGrace 15/16 as_\startTrillSpan { gss16\stopTrillSpan as } |
      as'2 \oneVoice r |
    }
    \volta 2 {
      a,2\repeatTie \afterGrace 15/16 as_\startTrillSpan 
        { gss16\stopTrillSpan as } |
      b2 \voiceTwo fs'2 |
    }
  }
  } % repeat volta
  
  fs2 es |
  gs8 cs, r4 r a''16 gs fs d |
  \oneVoice es,2 es'4 es-\tieShapeE ~(_\> |
  
  \barNumberCheck 97
  es8\! dss16 es  fs es d' bs  cs4 b |
  as16 cs e,! fs  a g e cs  g' as bs, cs  fs e cs as |
  fs4.) e8 d <as as'> <b b'> g' |
  <d d'>4 <cs cs'>8. <b b'>16 <a! a'!>4 <es es'> |
  <fs fs'>4 r e'!2\startTrillSpan |
  ds4(\stopTrillSpan css16 ds as' css  ds e css ds  fs! e cs fss, |
  as'4) as2 gs4 |
  g!2~ g8 b,!16 c  d! c g' c,~ |
  
  \barNumberCheck 105
  <c bf' e>1~\arpeggio |
  q8 s8 s2. |
  <c c'>2(_\> <b b'>4\! bf'16 af f cf |
  bf8) a,16_( bf  e g bf e  bf' c a bf  bf,4) |
  % fourth beat, 4th 16th note, a in Urtext and Autograph
  <bf bf'>2(_\> <a a'>4)\!  bf'16 a ef a, |
  af16 g bf af  g fs f g  ef g b, g'  c, c' af c |
  ef,16 g c ef  d d, d' g,  f f' e d  cs bf a g |
  f16 e d c  b! b'! cf cf'  <bff, bff'>8 <f f'> <gf gf'> <ff ff'> |
  
  \barNumberCheck 113
  <ef ef'>4 <gf gf'>8. <ff ff'>16 \voiceTwo <ef ef'>4 <df df'> |
  \oneVoice c16 ef af c  d! f ef ef'  df df, a f'  bf, f' af, af' |
  g,16 bf ef g  bf c af c  g fs! af g  f e g f |
  e16 c g e  ef f df f  c b! df c  bf a! c bf |
  af8\noBeam \clef treble af''16( af'  gf ef af, af'  gf ef af, bf'
    gf ef af, af' |
  gf16 ef af, bf'  gf ef af, af'  gf ef af,  bf' gf c, af af') |
  f16 df af bf'  gf ef af, af'  f df af bf'  gf c, af af' |
  f16 df af af'  f d af af' gf ef af, bf'  gf c, af af' |
  
  \barNumberCheck 121
  f16 df af bf'  gf ef af, af' f df af bf' gf c, af af' |
  f16 df af af'  f df af af' r2 |
  \clef bass \tupletOn \tuplet 3/2 4 { af,8( gf8. f16  f8 ef8. df16 } df2) |
  \tuplet 3/2 4 { f8( ef8. df16  df8 c8. cf16 } cf4 cf,) |
  bf8-.\noBeam \clef treble bf''16 bf'  af f bf, bf'  g ef bf c'
    af d, bf bf' |
  g16 ef bf bf'  g e bf bf'  af f bf, bf'  af d, bf bf' |
  g16 ef bf bf'  g e bf bf'  af f bf, c'  af d, bf bf' |
  g16 ef bf bf'  g e bf bf'  af f bf, ef'  d( af f bf, |
  
  \barNumberCheck 129
  d'16 af f ef'  d af f bf,  af' d, bf bf'  af d, bf f) |
  af'16 d, bf bf'  af d, bf f  f' bf, f g'  f bf, f g |
  \clef bass \tuplet 3/2 4 { af8( g8. f16  f8 ef8. d16 } d2) |
  \tuplet 3/2 4 { eff8( df8. cf16  cf8 bf8. af16) } af8( f d! af |
  g4-.) r8 af'''( g e cs! d |
  ef8 c g a! bf) r r fs'!( |
  e!8 cs! gs as  b) e( ds as |
  \tuplet 3/2 4 { as8 b) b   b <e, e'> q  q <ds ds'> q  q[ <as as'> r16 q] } |
  
  \barNumberCheck 137
  <b b'>8 r <b, b'>4 <cs cs'> <ds ds'> |
  <gs gs'>4 <gs, gs'> <a a'> <b b'> |
  <cs! cs'!>4 r <cs' g' as e'> <ds fs b ds> |
  % first beat, es in Urtext and Autograph
  <es b' cs gs'>8\arpeggio r \clef treble b'''16-. as-. gs-. fs-.  es-. ds-.
    cs-. b-.  as-. gs-. fs-. es-. |
  \clef bass ds16[ r32 cs b16 as]  gs8 fs <es b'>4 cs,8( <cs' b'> |
  <fs, cs'>8)\noBeam \voiceTwo as, b fs'  fs, as b d' |
  % third beat, 2nd eight note, chord is <cs gs> in Urtext
  cs,8[ <a' e'>] d,[ <a' fs'>] es[ <cs' gs'>] fs,[ <as fs' cs'>] |
  <b fs' d'>8\arpeggio fs,4 <e'' as>8 r fs,,4 d''8 |
  
  \barNumberCheck 145
  r8 fs,,4 <e'' g>8 r fs,,4 s8 |
  fs'2 fs |
  fs2 \oneVoice r |
  fs,4-. r r8 fs''( cs' e |
  as4) r r2 |
  r2 r4 \voiceTwo s16 es,, s fs |
  \key b \major
  \oneVoice \stemDown
  \omit TupletBracket \tuplet 3/2 4 { b,8[-\slurShapeBC ( ds' b' fs ds ds'] }
    \tupletOff \tuplet 3/2 4 { fs,,[ ds' b' fs ds ds'] } |
  \tuplet 3/2 4 { 
    b,8[ ds b' fs ds ds'] fs,,[ ds' b' fs ds ds']) |
    
    \barNumberCheck 153
    b,,8[-\slurShapeBC ( ds' b' fs ds ds']  b,[ ds b' gs ds ds'] |
    cs,8[ e cs' gs e e']  cs,[ e cs' a e e']) |
    cs,,8[-\slurShapeBC ( e' cs' as! e e']  as,,[ e' cs' as e e'] |
    cs,8[ e cs' as e e']  as,,[ e' cs' as e e']) |
    cs,,8[-\slurShapeBC ( e' cs' as e e']  cs,[ e cs' as e e']) |
    css,8[-\slurShapeBC ( b' gs' es b b'])  ds,,[-\slurShapeBC ( b' fs' fs, b
      fs']) |
    ds,8[-\slurShapeBC ( as' fss' cs as fss'])  gs,( gs' ds)  cs,( es' b) |
    fs8( e'! cs)  fs,,( e'' as,)  b,[-\slurShapeBD ( fs' ds' b fs fs']) |
    
    \barNumberCheck 161
    e,8[-\slurShapeBD ( as fss' cs as fss'])  ds,[-\slurShapeBE ( fs! fs' b, fs
      fs']) |
    as,,8[-\slurShapeBF ( fs' e' cs fs, e'])  b,[-\slurShapeBC ( fs' ds' b es,
      ds']) |
    as,8[( fs' ds' as fs as,])  gs![-\slurShapeBG ( es' css' b es, gs,]) |
  }
  \tupletOn \tuplet 3/2 { fs8-\slurShapeBG ( ds' as' } ds) r \tuplet 3/2 {
    gs,,( ds' es } b') r |
  \tupletOff \tuplet 3/2 { 
    as,[-\slurShapeBD ( ds as' fs ds as'])  \stemUp as,,[( as' es' <gs b!> 
    <fs as> <es gs>]) 
  } |
  \stemDown \tuplet 3/2 { ds,8[-\slurShapeBG ( as' fs' ds as' fs']) } ds16 as
    fs gs'  ds as fs fs' |
  e16 cs fs, gs'  e cs fs, fs'  ds b fs gs'  e as, fs fs' |
  ds16 b fs fs'  ds bs fs fs'  e cs fs, gs'  e as, fs fs' |
  
  \barNumberCheck 169
  ds16 b! fs gs'  e cs fs, fs'  ds b fs gs'  e as, fs fs' |
  ds16 b fs fs'  d b fs fs'  cs! b fs fs'  cs as e fs' |
  ds,16[( fs b fs fs'8]) r  cs,16[( fs e' as, fs'8]) r |
  b,,16[( fs' b fs fs'8]) r  e,16[( fss as fss fss'8]) r |
  ds,,16[-\slurShapeBG ( b' fs'! ds <fs b fs'>8]) r cs,16[( fs fs' cs
    <fs as e'>8]) r |
  b,,16[-\slurShapeBG ( fs' fs' ds <fs b ds>8]) r \stemNeutral e,16( as cs e
    g as cs g' |
  % first beat, a in Urtext and fourth beat, cs, in Urtext and Autograph
  <ds, a' bs fs'>8-.) r ds4->-\slurShapeB ( css16 ds fs e  bs cs e ds |
  <bs, bs'>4-.) <gs'' ds' fs>-. <cs,, cs'>-. <b''! cs es>-. |
  
  \barNumberCheck 177
  <fs,, fs'>4-. <fs'' as e'!>-. <b,, b'>-. <fs'' b ds>-. |
  e,8-.-\slurShapeBG (\noBeam e'~ gs_~ ds' <e, gs e'>4) r |
  e,4 ds cs fs |
  <fss, fss'>4-. <ds'' as' cs>-. <gs,, gs'>-. <fs''! gs bs>-. |
  <cs, cs'>4-. < cs' es b'!>-. <fs,, fs'>-. <fs'' cs'>-. |
  <b, a'>8 gs'16 g  fs es a gs  <cs, b'> as' a gs  g b as cs |
  <fs, cs'>16 c' b as  <gs ds' gs>4 \tuplet 3/2 { <es d'>8 r4 r <gs es'>8 } |
  <fs fs'>8\noBeam \clef treble cs''! b cs  b as gs as |
  
  \barNumberCheck 185
  gs8 fs e fs \clef bass e gs, cs fs, |
  \stemDown b,16-\slurShapeBL _( fs' b cs 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead b'16) } \tag midi { s16 } } 
      \new Voice { \oneVoice r4 } 
    >> 
    \staffDown b,,16-\slurShapeBM _( fs' b cs
    << 
      { s8. \tag layout { \staffUp \hideNoteHead ds'16) } \tag midi { s16 } } 
      \new Voice { \oneVoice r4 } 
    >> |
  \staffDown gs,,,16-\slurShapeBN _( ds' gs as
    << 
      { s8. \tag layout { \staffUp \hideNoteHead b'16) } \tag midi { s16 } } 
      \new Voice { \oneVoice r4 } 
    >>
    \staffDown cs,,,16-\slurShapeBO _( gs' cs gs'
    << 
      { s8 \tag layout { \staffUp \hideNoteHead e'16) } \tag midi { s16 } }
      \new Voice { \oneVoice r4 } 
    >> |
  \staffDown fs,,16-\slurShapeBP _( cs' fs gs
    << 
      { s8. \tag layout { \staffUp \hideNoteHead e'16) } \tag midi { s16 } } 
      \new Voice { \oneVoice r4 } 
    >>
    \staffDown fs,,16-\slurShapeBQ _( cs' fs gs
    << 
      { s8. \tag layout { \staffUp \hideNoteHead ds'16) } \tag midi { s16 } } 
      \new Voice { \oneVoice cs4 } 
    >> |
  \staffDown 
    <<
      { 
        \hideNoteHead fs,,16-\slurShapeBR ( s8. \staffUp \hideNoteHead e''4) s2
      }
      \new Voice { \tieToNextNote fs,,16 cs' fs~ cs'~ <fs, cs'>8. fs16~ fs2 }
    >> |
  \staffDown b,16-\slurShapeBS _( fs' b cs 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead b'16) } \tag midi { s16 } } 
      \new Voice { \oneVoice r8 r16 fs,, } 
    >>
    \staffDown fs16-\slurShapeBT _( fs' b cs
    << 
      { s8. \tag layout { \staffUp \hideNoteHead c'16) } \tag midi { s16 } } 
      \new Voice { \oneVoice r4 } 
    >> |
  \staffDown gs,,16-\slurShapeBU _( ds' gs as 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead b'16) } \tag midi { s16 } } 
      \new Voice { \oneVoice r8 r16 cs,,, } 
    >>
    << 
      { 
        \staffDown cs16-\slurShapeBV _( gs' cs gs' s8. 
          \tag layout { \staffUp \hideNoteHead b16) } \tag midi { s16 }
      } 
      \new Voice { \staffDown \voiceThree s8 cs,4.*1/6 gs'4*1/4 s4 } 
    >> |
  \staffDown fs,16-\slurShapeBX _( cs' fs gs
    << 
      { s8. \tag layout { \staffUp \hideNoteHead b'16) } \tag midi { s16 } } 
      \new Voice { \oneVoice r4 } 
    >>
    \staffDown \oneVoice fs,,,16-\slurShapeBY _( fs' cs' fs 
    << 
      { s8. \tag layout { \staffUp \hideNoteHead ds''16) } \tag midi { s16 } } 
      \new Voice { \oneVoice cs,4 } 
    >> |
    
  \barNumberCheck 193
  << 
    { 
      \staffDown fs,,16-\slurShapeBZ \( cs' fs~ cs'~ <fs, cs'>8 r16 fs,,-.
        fs'( cs' fs cs' \clef treble fs cs') r8*1/2 
        \tag layout { \staffUp \hideNoteHead b'16\) } \tag midi { s16 } |
    } 
    \new Voice { 
      \voiceThree s8 \staffDown fs,, s2. | 
      
    } 
  >>
  \staffDown \clef bass \oneVoice b,,8-\slurShapeCC ( fs'16 b \voiceTwo fs' a
    \staffUp ds fs a2) |
  \staffDown \oneVoice b,,,8( b'16 d  gs b d gs  g4) r |
  b,,,16_\< fs' b ds  fs a as b\!  c_\> a fs ds  c b as! a\! |
  gs8 cs,!16 gs'  cs gs' cs, gs  \afterGrace 7/8 fs2\startTrillSpan
    { es16\stopTrillSpan fs } |
  b,16( fs' ds' fs,  b, fs' ds' fs,  b, fs' ds' fs,  b, fs' ds' fs, |
  b,16 fs' ds' fs,  b, fs' ds' fs,  b, fs' ds' fs,  b, fs' ds' fs, |
  b,16 fs' ds' fs,  b, fs' fs' fs,  b, fs' ds' fs,  b, fs' fs' fs, |
  
  \barNumberCheck 201
  b,16 fs' ds' fs,  b, fs' fs' fs,  b, fs' ds' fs,  b, fs' ds' fs, |
  b,4) r4 <gs gs'> <fs fs'> |
  <b fs' b>4 r <fs' fs'>2 |
  <b fs' b>1\fermata |
}

leftHand = {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 s4\f |
  
  \repeat volta 2 {
  s1 |
  s4. s8-\tweak to-barline ##f \< s2 |
  s2\! s |
  s1 * 2 |
  s2 s-\tweak to-barline ##f \< |
  s2\! s |
  s2 s4\sf s\p |
  
  \barNumberCheck 9
  s1 |
  s4. s8-\tweak to-barline ##f \< s2 |
  s2\! s |
  s1 * 2 |
  s2 s8. s16\cresc s4 |
  s1 |
  s2... s16\! |
  
  \barNumberCheck 17
  s1\f |
  s1 |
  s4-\tweak Y-offset -1.5 \sf s2\< s8 s\! |
  s1 * 2 |
  s2.\< s8. s16\! |
  s1\> |
  s4. s8\! s2 |
  
  \barNumberCheck 25
  s1 * 4 |
  s1-\tweak Y-offset 2 \f |
  s1 |
  s4 s2.\cresc |
  s2... s16\! |
  
  \barNumberCheck 33
  s1 * 2 |
  s4..\> s16\! s4..\> s16\! |
  s4..\> s16\! s4..\> s16\! |
  s4..\> s16\! s2\< |
  s2... s16\! |
  s2 s\dim |
  s8. s16\! s2. |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 4 |
  s2..\< s8\! |
  s2...\> s16\! |
  s2\< s\f |
  s4 s2\> s8. s16\! |
  
  \barNumberCheck 57
  s1\p |
  s1 * 2 |
  s4 s2.-\tweak to-barline ##f \<
  s4\! s2. |
  s2 s2\< |
  s1\f |
  s1 |
  
  \barNumberCheck 65
  s1 * 8 |
  
  \barNumberCheck 73
  s2 s4..\< s16\! |
  s1 |
  s2 s^\ritenuto |
  s1^\dolce |
  s1 * 4 |
  
  \barNumberCheck 81
  s1 |
  s4 s16 s8.\< s2 |
  s2... s16\! |
  s1 * 5 |
  
  \barNumberCheck 89
  s1 |
  
  \alternative {
    \volta 1 {
      s1 |
      s2. s8.\> s16\! |
    }
    \volta 2 {
      s1 * 2 |
    }
  }
  } % repeat volta
  
  s1 * 3 |
  
  \barNumberCheck 97
  s1 * 2 |
  s2 s4.\< s8\! |
  s1 * 3 |
  s4 s2\> s4\! |
  s1 |
  
  \barNumberCheck 105
  s2...\< s16\! |
  s2.\f\> s4\! |
  s1 |
  s2\> s\! |
  s1 |
  s4\> s8\! s s2-\tweak to-barline ##f \<
  s4\! s2. |
  s2 s4..\< s16\! |
  
  \barNumberCheck 113
  s1 |
  s4. s8\< s4. s8\! |
  s1 |
  s2 s4..\< s16\! |
  s8\sf s4.\p s2 |
  s1 * 3 |
  
  \barNumberCheck 121
  s1 * 8 |
  
  \barNumberCheck 129
  s1 * 6 |
  \override DynamicTextSpanner.style = #'none
  s2 s8 s4.\cresc |
  s2.\< s4\! |
  
  \barNumberCheck 137
  s1\f |
  s1 * 7 |
  
  \barNumberCheck 145
  s1 |
  s8 s4\> s8\! s4..\> s16\! |
  s4.\> s8\! s2 |
  s1 * 3 |
  s4 s2.\> |
  s4 s\! s s-\tweak to-barline ##f \< |
  
  \barNumberCheck 153
  s1 |
  s4\! s2. |
  s1 * 2 |
  s2...\< s16\! |
  s1 * 3 |
  
  \barNumberCheck 161
  s1 |
  s2 s4..\< s16\! |
  s2 s4..\< s16\! |
  s1\f |
  s2. \grace { s8\< } s4 |
  s8 s\! s2\> s4\p |
  s1 * 2 |
  
  \barNumberCheck 169
  s1 |
  s4. s8\< s4.. s16\! |
  s1 |
  s2 s4..\< s16\! |
  s1\f |
  s1 |
  s4 s\< s4.. s16\! |
  s1 |
  
  \barNumberCheck 177
  s1 * 6 |
  s4 s2.-\tweak to-barline ##f \< |
  s8\! s s2. |
  
  \barNumberCheck 185
  s1 |
  s1^\dolce |
  s1 * 6 |
  
  \barNumberCheck 193
  s4 s2\< s8. s16\! |
  s1 * 3 |
  s2 s4..\< s16\! |
  \revert DynamicTextSpanner.style
  s8\> s\! s4 s2\cresc |
  s1 * 2 |
  
  \barNumberCheck 201
  s2... s16\! |
  s2 s\f |
  s2 s\ff |
  s1 |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro maestoso" 4 = 120
  \partial 4 s4 |
  
  \repeat volta 2 {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 7 |
  \tempo 4 = 113
  s2 \tempo 4 = 107 s2 |
  
  \barNumberCheck 41
  \tempo 4 = 100
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  \tempo 4 = 120
  s1 * 8 |
  
  \barNumberCheck 73
  s1 * 2 |
  \tempo 4 = 109
  s2 \tempo 4 = 99 s2 |
  \tempo 4 = 92
  s1 * 5 |
  
  \barNumberCheck 81
  s1 * 3 |
  \tempo 4 = 120
  s1 * 5 |
  
  \barNumberCheck 89
  s1 | 
  
  \alternative {
    \volta 1 {
      s1 * 2 |
    }
    \volta 2 {
      s1 * 2 |
    }
  }
  } % repeat volta
  
  s1 * 3 |
  
  \barNumberCheck 97
  s1 * 8 |
  
  \barNumberCheck 105
  s1 * 8 |
  
  \barNumberCheck 113
  s1 * 4 |
  \tempo 4 = 100
  s1 * 4 |
  
  \barNumberCheck 121
  s1 * 8 |
  
  \barNumberCheck 129
  s1 * 8 |
  
  \barNumberCheck 137
  \tempo 4 = 120
  s1 * 8 |
  
  \barNumberCheck 145
  s1 * 5 |
  \tempo 4 = 113
  s2 \tempo 4 = 107 s2 |  
  \tempo 4 = 100
  s1 * 2 |
  
  \barNumberCheck 153
  s1 * 8 |
  
  \barNumberCheck 161
  s1 * 8 |
  
  \barNumberCheck 169
  s1 * 6 |
  \tempo 4 = 120
  s1 * 2 |
  
  \barNumberCheck 177
  s1 * 8 |
  
  \barNumberCheck 185
  \tempo 4 = 113
  s2 \tempo 4 = 107 s2 |  
  \tempo 4 = 100
  s1 * 7 |
  
  \barNumberCheck 193
  s1 |
  \tempo 4 = 120
  s1 * 4 |
  \tempo 4 = 144
  s1 * 3 |
  
  \barNumberCheck 201
  s1 |
  \tempo 4 = 120
  s1 |
  s2 \tempo 4 = 100 s2 |
}

pedal = {
  \partial 4 s4 |
  
  \repeat volta 2 {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 5 |
  s2 s8. s16-\tweak Y-offset -2 \sd s8. s16\su |
  s4\sd s8. s16\su s4\sd s8. s16\su |
  s4\sd s8. s16\su s4\sd s8. s16\su |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 4 |
  s2. s8.-\tweak Y-offset -1 \sd s16\su |
  s2 s4..\sd s16\su |
  s1 * 2 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s2-\tweak Y-offset -2 \sd s4..\su\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s2-\tweak Y-offset -2 \sd s4..\su\sd s16\su |
  s2-\tweak Y-offset -2 \sd s4..\su\sd s16\su |
  s2-\tweak Y-offset -2 \sd s4..\su\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s2...-\tweak Y-offset -2 \sd s16\su |
  s2\sd s4..\su\sd s16\su |
  
  \barNumberCheck 49
  s2\sd s4\su\sd s8.\su\sd s16\su |
  s8.\sd s16-\tweak X-offset -1.5\su s4-\tweak Y-offset -1 \sd s\su\sd s8.
    s16\su |
  s2\sd s4..\su\sd s16\su |
  s4..\sd s16\su s4 s8.\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s4\sd s16 s8.\su s4..\sd s16\su |
  s4...\sd s32\su s4..-\tweak Y-offset -2 \sd s16\su |
  s2-\tweak Y-offset -2 \sd s8 s4.\su |
  
  \barNumberCheck 57
  s1 * 4 |
  s4.\sd s8\su s4.\sd s8\su |
  s4.\sd s8\su s4.\sd s8\su |
  s4.\sd s8\su s4.\sd s8\su |
  s4.\sd s8\su s8.\sd s16\su s4 |
  
  \barNumberCheck 65
  s1 |
  s4..\sd s16\su s4..\sd s16\su |
  s2-\tweak Y-offset -1 \sd s4..\su\sd s16\su |
  s4.\sd s8\su s2 |
  s1 |
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..-\tweak Y-offset -2 \sd s16\su |
  s1 |
  
  \barNumberCheck 73
  s1 * 3 |
  s2-\tweak Y-offset -1 \sd s4..\su\sd s16\su |
  s4..\sd s16\su s4..-\tweak Y-offset -1 \sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s2-\tweak Y-offset -1 \sd s8 s4.\su |
  s2\sd s4..\su\sd s16\su |
  
  \barNumberCheck 81
  s4..\sd s16\su s4..-\tweak Y-offset -1 \sd s16\su |
  s4\sd s\su s\sd s\su |
  s4..\sd s16\su s4..\sd s16\su |
  s2...\sd s16\su |
  s4\sd s8. s16\su s2 |
  s4..\sd s16\su s4..\sd s16\su |
  s8.\sd s16\su s2. |
  s1 |
  
  \barNumberCheck 89
  s1 |
  \alternative {
    \volta 1 {
      s1 * 2 |
    }
    \volta 2 {
      s1 * 2 |
    }
  }
  } % repeat volta
  
  s1 * 3 |
  
  \barNumberCheck 97
  s1 * 8 |
  
  \barNumberCheck 105
  s1 * 8 |
  
  \barNumberCheck 113
  s1 * 4 |
  s2.\sd s4\su |
  s1 * 3 |
  
  \barNumberCheck 121
  s1 |
  s8 s\sd s2. |
  \tuplet 3/2 { s8 s4\su } s4 s2\sd |
  \tuplet 3/2 { s8 s4\su } s4 s4..\sd s16\su |
  s4-\tweak Y-offset -1 \sd s8 s\su s2 |
  s1 * 2 |
  s2. s4\sd |
  
  \barNumberCheck 129
  s8 s\su s2.\sd |
  s4 s2.\su |
  s2 s4..\sd s16\su |
  s2 s4..\sd s16-\tweak Y-offset -2 \su |
  s4-\tweak Y-offset -2 \sd s2.\su |
  s1 * 3 |
  
  \barNumberCheck 137
  s1 * 2 |
  s4-\tweak Y-offset -2 \sd s\su s8.\sd s16\su s8.\sd s16\su |
  s4\sd s2.\su |
  s2. s8.-\tweak Y-offset -1 \sd s16\su |
  s1 * 3 |
  
  \barNumberCheck 145
  s1 * 3 |
  s1\sd |
  s1 |
  s4. s8\su s2 |
  s2...-\tweak Y-offset -2 \sd s16\su |
  s2\sd s4..\su\sd s16\su |
  
  \barNumberCheck 153
  s2-\tweak Y-offset -2 \sd s4..\su\sd s16\su |
  s4\sd s4\su s4..\sd s16\su |
  s2-\tweak Y-offset -2 \sd s4..\su\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s2...-\tweak Y-offset -2 \sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s2\sd s4\su\sd s8.\su\sd s16\su |
  s8.\sd s16\su s4-\tweak Y-offset -1.5 \sd s4..\su\sd s16\su |
  
  \barNumberCheck 161
  s2\sd s4..\su\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s4.-\tweak Y-offset -1.5 \sd s8\su s4.\sd s8\su |
  s4..\sd s16-\tweak X-offset -1.5 \su s4..-\tweak Y-offset -1.5\sd s16\su |
  s2-\tweak Y-offset -1.5 \sd s8. s16\su s4 |
  s1 * 2 |
  
  \barNumberCheck 169
  s1 * 2 |
  s4.\sd s8\su s4.\sd s8\su |
  s4.\sd s8\su s4.\sd s8\su |
  s4.-\tweak Y-offset -2 \sd s8\su s4.-\tweak Y-offset -2 \sd s8\su |
  s4.-\tweak Y-offset -2 \sd s8\su s4..\sd s16\su |
  s2\sd s\su |
  s4.-\tweak Y-offset -1 \sd s8\su s4.\sd s8\su |
  
  \barNumberCheck 177
  s4.-\tweak Y-offset -2 \sd s8\su s4.-\tweak Y-offset -1 \sd s8\su |
  s4.\sd s8\su s2 |
  s1 |
  s4.-\tweak Y-offset -2 \sd s8\su s4.-\tweak Y-offset -2 \sd s8\su |
  s4.\sd s8\su s4.-\tweak Y-offset -2 \sd s8\su |
  s1 * 3 |
  
  \barNumberCheck 185
  s1 |
  s2\sd s4..\su\sd s16\su |
  s4..-\tweak extra-offset #'(0 . -0.5) \sd s16\su s4..-\tweak Y-offset -2
    \sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s2\sd s\su |
  s2\sd s4..\su\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s4..-\tweak Y-offset -1 \sd s16\su s4..-\tweak Y-offset -1 \sd s16\su |
  
  \barNumberCheck 193
  s4..\sd s16-\tweak Y-offset -1 \su s4..\sd s16\su |
  s2...\sd s16\su |
  s2.\sd s4\su |
  s1 |
  s4\sd s\su s4..\sd s16\su |
}

forceBreaks = {
  % page 1
  \partial 4 s4 |
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 2
  s1\noBreak s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 3
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 4
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 5
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 6
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  
  % page 7
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 8
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  % page 9
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  % page 10
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 11
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 12
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \grace { s8 } \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 13
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  % page 14
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

sonataAllegroNotes =
\score {
  \header {
    title = "Sonata"
    composer = "Frédéric Chopin"
    opus = "Opus 58, No. 1"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists Span_arpeggio_engraver
    }
  }
}

\include "articulate.ly"

sonataAllegroMidi =
\book {
  \bookOutputName "sonata-op58-allegro"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
