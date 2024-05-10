%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "force-initial-clef.ily"

% Supress cyclic dependency warnings two times
#(ly:expect-warning-times 2 "cyclic dependency: calculation-in-progress")

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 3) (0 . -6) (0 . -6) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -1) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeC = \shape #'(
                        ((0 . 3) (2 . 3) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeD = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 3)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 3)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0.5) (-0.5 . 2))
                        ) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -2)) \etc
slurShapeH = \shape #'(
                        ((0 . -9) (0 . 0) (0 . 2) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeI = \shape #'((0 . -3) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 3) (0 . 5) (0 . 5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeK = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -3))
                        ) \etc
slurShapeM = \shape #'((0 . 1) (3 . 0) (-3 . 0) (0 . 0)) \etc
slurShapeN = \shape #'((0 . -3) (0 . 0) (-3 . -1) (0 . 0)) \etc
slurShapeO = \shape #'((0 . 2) (6 . 3) (-6 . -6) (0 . 3)) \etc
slurShapeP = \shape #'((0 . -6) (0 . 0) (-3 . 0) (0 . 0)) \etc
slurShapeQ = \shape #'((0 . 0) (0 . -0.5) (0 . 1) (0 . 2)) \etc
slurShapeR = \shape #'(
                        ((0 . 0) (0 . 1.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeS = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((1 . 0) (-1 . 0) (-7 . 4) (0 . 3))
                        ) \etc
slurShapeT = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) \etc

tieShapeA = \shape #'((0 . -1) (0 . -1) (0 . 0) (0 . 0)) \etc
tieShapeB = \shape #'((-0.5 . -1.5) (2 . -2) (0 . 0) (0 . 0)) \etc

forceHShiftA = \tweak NoteColumn.force-hshift -1.5 \etc
forceHShiftB = \tweak NoteColumn.force-hshift 0.5 \etc

moveTextA = \tweak TextScript.X-offset -3 \etc

%%% Music %%%

global = {
  \time 4/4
  \key b \major
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \trebleToBass
  \partial 2.*25/24 
  % first note, 32nd not 16th, Urtext and Autograph
  \clef bass <ds ds'>32( cs'8..) <ds, ds'>32( b'8..) <ds, ds'>32( as'8.. 
    <b, b'>32 |
  gs'8.. <e e'>32 q2.~ |
  <g c e>4 <f g d'>8. <e g c>16 \clef treble <b' f'>4 <b fs'>8. 
    <as as'>16 |
  \clef treble <as e' cs'>2 <b ds b'>4) fs'8.(-\moveTextA _\cantabile ds'16 |
  ds2 b8.[ cs16 ds8. e16] | 
  \omit TupletBracket ds4 cs8.) ds16( e8 \tuplet 3/2 { fs16 e ds } e8. fs16 |
  ds2 cs4 ds8. as16 |
  b4 as8. b16 cs4 fs,8. ds'16 |
  ds2 b8.[ cs16 ds8. \slashedGrace { fs8 } e16] |
  
  \barNumberCheck 9
  ds4 cs8. ds16 e8 \tuplet 3/2 { fs16 e ds } e8. fs16 |
  ds2~ ds16 cs fs gs  b! as fs ds |
  b2 as) |
  gs4( gs'~ gs8.[ cs,16 ds8. e16] |
  fs8.[ bs,16 cs8. ds16] e4 g, | 
  fs4 fs'~ fs8.[ b,16 cs8. ds16] |
  e8.[as,16 b8. cs16] ds4 gs,) |
  \voiceOne ds'2-\slurShapeB (\arpeggio b8.[\arpeggio cs16 ds8. e16] |
  
  \barNumberCheck 17
  ds4 cs8. ds16 e8 \tuplet 3/2 { fs16 e ds } e8. fs16 |
  \oneVoice <ds, a' ds>2) \voiceOne ds'8[(\arpeggio cs b8. b'16] |
  \oneVoice b4) <gs,, b cs>2-\slurShapeC ^( <fs b ds>4 |
  b8. e16 e8) r ds'8[( cs b8. b'16] |
  b4) <b,, e>2( <fs b d fs>4 |
  <gs b d gs>4) gs''-\slurShapeD ( gs,) \voiceOne \afterGrace 
    as\startTrillSpan { gss16\stopTrillSpan as } |
  b4 \oneVoice e4-\slurShapeE ( e,) \voiceOne \afterGrace fss\startTrillSpan
    { fs16\stopTrillSpan fss } |
  gs2. <gs, e' gs>4 |
  
  \barNumberCheck 25
  gs'4 as8. b16 <as, e' gs ds'>4\arpeggio <e' fs as cs> |
  b'1 |
  <b, e gs b>2 <b ds a' b> |
  \key e \major
  \scaleDurations 2/3 {
    b'8[( gs fs e b gs']  b[ gs fs e b gs'] |
    b8[ gs fs e b gs']  cs[ gs fs e cs a']_~ |
    a8[ gs fs e b gs'])  gs[( e ds cs gs e'] |
    gs8[ e ds cs gs e']  \clef bass e[ cs b a e cs']) |
    e8[( b a gs e b']  ds[ b a gs e b'] |
    
    \barNumberCheck 33
    cs8[ a gs fs ds a']  b[ gs fs e d gs]) |
    b8[-\slurShapeG ( gs fs e cs gs']  a[ fs e ds! c fs] |
    gs8[ b, e gs a cs]  \clef treble b[ e gs b b' cs,] |
  }
  \oneVoice <a ds>4. <a gs'>8 <a fs'>4) r |
  \scaleDurations 2/3 {
    \staffDown \voiceTwo e,,8[-\slurShapeH ^\( b' e gs] \voiceOne a[ cs]
      \staffUp b[ e gs b b' cs,] |
  }
  % third beat, as in Urtext
  \oneVoice <gs ds'>4. <fss e'>8_( <as ds>2)\) |
  \scaleDurations 2/3 {
    \staffDown \voiceTwo gs,,8[-\slurShapeI ^( ds' gs as] \voiceOne \staffUp
      b[ e] ds[ gs b ds gs gs,]) |
  }
  gs2( gs4. as8) |
  
  \barNumberCheck 41
  gs2( gs4. as8) |
  \scaleDurations 2/3 {
    b8[( as gs ds b gs']  b[ as gs ds b gs'] |
    \oneVoice b8[ gs e' ds b gs]  cs,[ ds as b gs gs'] |
    % like 28 (14 bars)
    \voiceOne b8[ gs fs e b gs']  b[ gs fs e b gs'] |
    b8[ gs fs e b gs']  cs[ gs fs e cs a'_~] |
    a8[ gs fs e b gs'])  gs[-\slurShapeK ( e ds cs gs e'] |
    gs8[ e ds cs gs e']  \clef bass e[ cs b a e cs']) |
    e8[( b a gs e b']  ds[ b a gs e b'] |
    
    \barNumberCheck 49
    cs8[ a gs fs ds a']  b[ gs fs e d gs]) |
    b8[-\slurShapeL ( gs fs e cs gs']  a[ fs e ds! c fs] |
    gs8[ b, e gs a cs]  \clef treble b[ e gs b b' cs,] |
  }
  \oneVoice <a ds>4. <a gs'>8 <a fs'>4) r |
  \scaleDurations 2/3 {
    \staffDown \voiceTwo e,,8[-\slurShapeM ^\( b' e gs] \voiceOne a[ cs]
      \staffUp b[ e gs b b' cs,] |
  }
  % third beat, as in Urtext
  \oneVoice <gs ds'>4. <fss e'>8_( <as ds>2)\) |
  \scaleDurations 2/3 {
    \staffDown \voiceTwo gs,,8[-\slurShapeN ^( ds' gs as] \voiceOne \staffUp
      b[ e] ds[ gs b ds gs gs,]) |
  }
  gs2( gs4. as8) |
  
  \barNumberCheck 57
  gs2( gs4. as8) |
  \scaleDurations 2/3 {
    b8[( as gs ds b gs']  b[ as gs ds b gs'] |
    b8[ as gs ds b gs']  b[ as gs ds b gs'] |
    b8[ gs fs cs b fs']  b[ gs fs cs b fs'] |
    b8[ gs fs cs b fs']  a[ fs es cs b gs'] |
    a8[ fs e! b a e']  a[ fs e b a e'] |
    a8[ fs e b a e']  gs[ e ds a gs ds'] |
    \clef bass e8[ ds cs gs e cs']  fs[ ds cs b fs ds'] |
    
    \barNumberCheck 65
    fs8[ ds cs b fs ds']  gs[ ds cs b gs cs] |
    ds8[ b as gs ds b']  ds[ as gs fss ds as'] |
    ds8[ bs as fs ds gs]  \clef treble bs[ ds gs bs ds es,] |
  }
  \oneVoice <cs fss>4. <cs bs'>8 <cs as'>4) r |
  \scaleDurations 2/3 {
    \staffDown \voiceTwo gs,,8[-\slurShapeO ^( gs' ds' gs as cs] \staffUp
      \voiceOne bs[ ds gs bs ds es,] |
  }
  \key f \minor 
  \oneVoice <e g>4. <e df'>8 <e c'>4) r4 |
  \scaleDurations 2/3 {
    \staffDown \voiceTwo f,,8[-\slurShapeP ^( c' f g af df]  c\noBeam \staffUp
      \voiceOne f[ af c f f,]) |
  }
  f2( f4. g8) |
  
  \barNumberCheck 73
  f2( f4. g8) |
  \scaleDurations 2/3 {
    af8[( g f c af f']  af[ g f c af df] |
    af'8[ g f c g af]  af'[g f c g af] |
    \key e \major
    gs'8[ ds bs cs fss, gs]  fss'[ ds bs cs gss as] |
    << 
      { as'8[ gs! g fs f e]  b'[ a ds, cs! b fss']) } 
      \new Voice { \voiceFour s2 s8 \hideNoteHead e_~ \forceHShiftB e4 s2 } 
    >> |
    % like 28 (seven bars)
    b'8[( gs fs e b gs']  b[ gs fs e b gs'] |
    b8[ gs fs e b gs']  cs[ gs fs e cs a']_~ |
    a8[ gs fs e b gs'])  gs[( e ds cs gs e'] |
    
    \barNumberCheck 81
    gs8[ e ds cs gs e']  \clef bass e[ cs b a e cs']) |
    e8[( b a gs e b']  ds[ b a gs e b'] |
    cs8[ a gs fs ds a']  b[ gs fs e d gs]) |
    b8[( gs fs e cs gs']  a[ fs e ds! c fs] |
    a8[ fs e ds c fs]  a[ fs e ds c fs] |
    \oneVoice a8[ fs e ds c fs]  \clef treble a[ c ds fs a c] |
    gs'8[ fs ds c a fs]  gs[ fs ds c a fs] |
    \staffDown \stemUp gs8[ fs c ds fs a] \staffUp \stemNeutral
  }
  fs'[ e ds8. ds'16] |
  
  \barNumberCheck 89
  ds4) <a, ds>2^( <a e'>4 |
  <a fs'>4) r fs'8[( e ds8. ds'16] |
  ds4) <fs,, a ds>2^( <fs as ds>4 |
  <fs bs ds>4) bs'-\slurShapeQ \( bs, \afterGrace <ass css>(\startTrillSpan 
    { bss16\stopTrillSpan css } |
  % fourth beat, trill, upper note is ass, Urtext and Autograph
  <bs ds>4)\) gs'-\slurShapeR \( gs, \clef bass \trillSpanUnderSlur 
    \afterGrace <es ass>\startTrillSpan { gss16\stopTrillSpan ass } |
  <fs bs>2( <g c>4) <as_( cs> |
  <f bf) d>4 \clef treble <a c f> <bf f' bf> \afterGrace <df\=1( f\=2( af\=3^(>
    { <cs!\=1) es\=2) gs!\=3)> } |
  \voiceOne <e! cs'>2 e' |
  
  \barNumberCheck 97
  \oneVoice <as, e' cs'>2\) r4 fs8.(^\dolciss ds'16 |
  \key b \major 
  ds2 b8.[ cs16 ds8. e16] |
  ds4 cs8. ds16 e8[ \tuplet 3/2 { fs16 e ds } e8. fs16] |
  ds2 cs4 ds |
  b4 as8. b16 cs4 \magnifyMusic #2/3 { \scaleDurations 2/15 {
    fs,8[ gs fs es fs gs as b cs ds e! fs as gs e]
  } } |
  \voiceOne ds2 b8.[ cs16 ds8. \slashedGrace { fs8 } e16] |
  ds4 cs8. ds16 \strictSpacingOn e4 \grace { e8 e[fs e ds] } e8. fs16 |
  \strictSpacingOff ds2) ds8[( cs b8. b'16] |
  
  \barNumberCheck 105
  \oneVoice b4) <gs,, b cs>2-\slurShapeT ^( <fs b ds>4 |
  b8. e16 e8) r ds'[( cs b8. b'16] |
  b4) \clef bass <e,,, b' e>2( <fs b d fs>4 |
  <gs b cs gs'>4) \clef treble gs''( gs, \afterGrace <cs, fs as>\startTrillSpan
    { gs'16\stopTrillSpan as } |
  <b, fs' b>4) e'( e, \afterGrace <as, ds fss>\startTrillSpan
    { es'16\stopTrillSpan fss } |
  <gs, ds' gs>4 \voiceOne as'8. gs16 \oneVoice <fs,! cs' fs!>4 <fs c' ds> |
  <g c e!>4 \clef bass <es b' css> <fs b ds> <e as> |
  <ds b'>2) \clef treble <fs ds' gs>^( |
  
  \barNumberCheck 113
  \voiceOne gs'2 as |
  as4 b \scaleDurations 2/10 { ds,4 s8 \magnifyMusic #2/3 { 
    ds8 ds[ e ds css ds] \slashFlag ds8 } } as'8. gs16 |
  gs2 fs4 as8. b16 |
  bs4 cs2 ds8. e16 |
  e2~ e4.. ds16 |
  \oneVoice <ds, b' ds>4) r \clef bass <ds, g b ds>2 |
  <ds fs b ds>1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \partial 2.*25/24 s32 s2. |
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 7 |
  \voiceFour fs'4\arpeggio gs fs2\arpeggio |
  
  \barNumberCheck 17
  fs4 gs fs gs |
  s2 <e gs>4.\arpeggio s8 |
  s1 |
  b4. s8 s2 |
  s1 |
  s2. fss'4 |
  gs!4 s2 cs,4 |
  css2 <bs ds>4 s |
  
  \barNumberCheck 25
  <b es>2 s |
  ds2 <cs e>4. <b fs'>8 |
  s1 |
  \key e \major
  \scaleDurations 2/3 {
    b'2*1/4 gs4.*2/3 e4*1/2 b4  b'2*1/4 gs4.*2/3 e4*1/2 b4 |
    b'2*1/4 gs4.*2/3 e4*1/2 b4  cs'2*1/4 gs4.*2/3 e4*1/2 cs4 |
    b'4*1/2 gs4.*2/3 e4*1/2 b4  gs'2*1/4 e4.*2/3 cs4*1/2 gs4 |
    gs'4.*1/3 e4.*2/3 cs4*1/2 gs4  \clef bass e'4.*1/3 cs4.*2/3 a4*1/2 e4 |
    e'2*1/4 b4.*2/3 gs4*1/2 e4  ds'2*1/4 b4.*2/3 gs4*1/2 e4 |
    
    \barNumberCheck 33
    cs'2*1/4 a4.*2/3 fs4*1/2 ds4  b'2*1/4 gs4.*2/3 e4*1/2 d4 |
    b'2*1/4 gs4.*2/3 e4*1/2 cs4  a'2*1/4 fs4.*2/3 ds4*1/2 c4 |
  }
  s1 * 5 |
  \clef treble cs'4 \voiceThree b2. |
  
  \barNumberCheck 41
  \voiceFour cs4 \voiceThree b2. \voiceFour |
  \scaleDurations 2/3 {
    b'2*1/2 gs4.*1/3 ds4*1/2 b4  b'2*1/2 gs4.*1/3 ds4*1/2 b4 |
    s1. |
    % like 28 (14 bars)
    b'2*1/4 gs4.*2/3 e4*1/2 b4  b'2*1/4 gs4.*2/3 e4*1/2 b4 |
    b'2*1/4 gs4.*2/3 e4*1/2 b4  cs'2*1/4 gs4.*2/3 e4*1/2 cs4 |
    b'4*1/2 gs4.*2/3 e4*1/2 b4  gs'2*1/4 e4.*2/3 cs4*1/2 gs4 |
    gs'4.*1/3 e4.*2/3 cs4*1/2 gs4  \clef bass e'4.*1/3 cs4.*2/3 a4*1/2 e4 |
    e'2*1/4 b4.*2/3 gs4*1/2 e4  ds'2*1/4 b4.*2/3 gs4*1/2 e4 |
    
    \barNumberCheck 49
    cs'2*1/4 a4.*2/3 fs4*1/2 ds4  b'2*1/4 gs4.*2/3 e4*1/2 d4 |
    b'2*1/4 gs4.*2/3 e4*1/2 cs4  a'2*1/4 fs4.*2/3 ds4*1/2 c4 |
  }
  s1 * 5 |
  \clef treble cs'4 \voiceThree b2. |
  
  \barNumberCheck 57
  \clef treble \voiceFour cs4 \voiceThree b2. \voiceFour |
  \scaleDurations 2/3 {
    b'2*1/2 gs4.*1/3 ds4*1/2 b4  b'2*1/2 gs4.*1/3 ds4*1/2 b4 |
    b'2*1/2 gs4.*1/3 ds4*1/2 b4  b'2*1/2 gs4.*1/3 ds4*1/2 b4 |
    b'2*1/2 fs4 b,  b'2*1/2 fs4 b, |
    b'2*1/2 fs4 b,  a'4.*2/3 es4*1/2 cs b4 |
    a'2*1/2 e4 a,  a'2*1/2 e4 a, |
    a'2*1/2 e4 a,  gs'4.*2/3 ds4 gs, |
    e'2*1/2 cs4 e,  fs'2*1/4 ds4 b4*1/2 fs4 |
    
    \barNumberCheck 65
    fs'2*1/4 ds4 b4*1/2 fs4  gs'4.*1/3 ds4 b s8 |
    ds2*1/4 b4 gs4*1/2 ds4  ds'2*1/4 as4 fss4*1/2 ds4 |
  }
  s1 * 3 |
  \key f \minor
  s1 * 2 |
  bf'4 \staffDown \voiceThree af2. \staffUp \voiceFour |
  
  \barNumberCheck 73
  bf4 \staffDown \voiceThree af2. \staffUp \voiceFour  |
  \scaleDurations 2/3 {
    af'2 af,4 af'2 \tieToNextNote af,4*1/2~ \hideNoteHead df8~ |
    <af df>4 s4. af s af4*1/2 |
    \key e \major 
    gs'2 s4 fss2 s4 |
    as2 s4 b2*1/4 a4*1/2 ds,4 b |
    % like 28 (seven bars)
    b'2*1/4 gs4.*2/3 e4*1/2 b4  b'2*1/4 gs4.*2/3 e4*1/2 b4 |
    b'2*1/4 gs4.*2/3 e4*1/2 b4  cs'2*1/4 gs4.*2/3 e4*1/2 cs4 |
    b'4*1/2 gs4.*2/3 e4*1/2 b4  gs'2*1/4 e4.*2/3 cs4*1/2 gs4 |
    
    \barNumberCheck 81
    gs'4.*1/3 e4.*2/3 cs4*1/2 gs4  \clef bass e'4.*1/3 cs4.*2/3 a4*1/2 e4 |
    e'2*1/4 b4.*2/3 gs4*1/2 e4  ds'2*1/4 b4.*2/3 gs4*1/2 e4 |
    cs'2*1/4 a4.*2/3 fs4*1/2 ds4  b'2*1/4 gs4.*2/3 e4*1/2 d4 |
    b'2*1/4 gs4.*2/3 e4*1/2 cs4  a'2*1/4 fs4.*2/3 ds4*1/2 c4 |
    a'2*3/4 ds,4*1/2 c4  a'2*3/4 ds,4*1/2 c4 |
  }
  s1 * 3 |
  
  \barNumberCheck 89
  s1 * 7 |
  fs'4 b!2*1/2 cs4 <as as'> |
  
  \barNumberCheck 97
  s1 * 5 |
  r4 gs fs2 |
  fs4 gs fs gs |
  <ds a'>2 <e gs>4 s |
  
  \barNumberCheck 105
  s1 * 5 |
  s4 <cs es> s2 |
  s1 * 2 |
  
  \barNumberCheck 113
  <as e'>1 |
  <b ds>1 |
  <as e'>1 |
  q2. r4 |
  << { cs2~ cs4.. ds16 } \new Voice { \shiftOff as'1 } >> |
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
  \partial 2.*25/24 s2.*25/24 |
  s1 * 2 |
  \voiceThree fs,2 s |
  s1 * 5 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 6
  s2. as'4~ |
  as4 b s2 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 7 |
  \scaleDurations 2/3 { \voiceTwo e,8[ fs e \staffUp b' \staffDown gs cs,] }
    \voiceThree ds2 |
    
  \barNumberCheck 41
  \scaleDurations 2/3 { \voiceTwo e8[ fs e \staffUp b' \staffDown gs cs,] }
    \voiceThree ds2~ |
  \hideNoteHead ds2 s2 |
  s1 |
  % the measure below is from the Urtext
  d2\rest b |
  s1 * 4 |
  
  \barNumberCheck 49
  s1 * 7 |
  \scaleDurations 2/3 { \voiceTwo e8[ fs e \staffUp b' \staffDown gs cs,] }
    \voiceThree ds2 |
    
  \barNumberCheck 57
  \scaleDurations 2/3 { \voiceTwo e8[ fs e \staffUp b' \staffDown gs cs,] }
    \voiceThree ds2~ |
  % beats 3 and 4, Urtext
  ds2 css8 ds fs e |
  ds1 |
  s1 * 5 |
  
  \barNumberCheck 65
  s1 * 5 |
  \key f \minor
  s1 * 2 |
  \scaleDurations 2/3 { \voiceTwo df8[^( ef df af' f bf,] }
    \voiceThree c2) |
  
  \barNumberCheck 73
  \scaleDurations 2/3 { \voiceTwo df8[^( ef df af' f bf,] }
    \voiceThree c2)~ |
  \hideNoteHead c2 s |
  s1  |
  \key e \major 
  s1 |
  s2 fs4.(\arpeggio b,8) |
  s1 * 3 |
  
  \barNumberCheck 81
  s1 * 8 |
  
  \barNumberCheck 89
  s1 * 4 |
  s2. css4~ |
  css4 ds e2 |
  s1 * 2 |
  
  \barNumberCheck 97
  s1 |
  \key b \major 
  s1 * 2 |
  s2 \voiceTwo as,,4 \voiceThree s |
  s1 * 3 |
  \omit TupletBracket
  \tuplet 3/2 { s4 b'4*1/2 fs'8 cs'8. b16 } s2 |
  
  \barNumberCheck 105
  s1 * 8 |
  
  \barNumberCheck 113
  fs1 |
  fs1 |
  fs1 |
}

leftHandLower = \relative {
  \partial 2.*25/24
  ds,32 <cs cs'>8.. ds32 <b b'>8.. ds32 <as as'>8.. b32 |
  <gs gs'>8.. e'32 e2. |
  <g, g'>2 <g' d'>4 <fs! ds'>8. <fs e'>16 |
  \voiceTwo r4 fs, \oneVoice <b fs'> r |
  b8-. r16 <fs'' b ds>16([ q8)] r16 fs,([ b,8-.)] r16 <fs'' b ds>([ q8)] r16
    fs,([ |
  as,8-.)] r16 <fs'' cs' e>16[( q8]) r16 fs,[( cs8-.)] r16 <fs' as e'>[( q8])
    r16 fs,[( |
  b,8-.]) r16 <fs'' b ds>16[( q8]) r16 es,[( as,8-.]) r16 <es'' as cs>[( 
    <ds fss cs'>8]) r16 ds,[( | % last ds, Urtext, Autograph agree, 16th note
  % first gs, Urtext, Autograph agree, 8th note
  gs,8-.]) r16 <d'' fs b>[( <cs es b'>8]) r16 cs,([ fs,8-.]) r16 <g'' b e!>[(
    <fs as e'>8]) r16 fs,[( | 
  b,8-.]) r16 <fs'' b ds>[( q8]) r16 fs,[( b,8-.]) r16 <fs'' b ds>[( q8]) r16
    fs,[( |
    
  \barNumberCheck 9
  as,8-.]) r16 <fs'' cs' e>[( q8]) r16 fs,16[( cs8-.]) r16 <fs' as e'>[( q8])
    r16 fs,16[( |
  bs,8-.]) r16 <gs'' ds' fs>[( q8]) r16 bs,,[( cs8-.]) r16 <as'' cs fs>[( q8])
    r16 cs,,,[( |
  cs'8-.]) r16 <gs'' cs es>[( q8]) r16 cs,,[( fs8-.]) r16 <as' cs fs>[( q8]) 
    r16 fs,,[( |
  fs'8-.]) r16 <fs' gs bs ds>[( q8]) r16 fs,[( e!8-.]) r16 <e' gs cs e>[( q8])
    r16 e,[( |
  ds8-.]) r16 <ds' gs bs fs'>[( q8]) r16 ds,[( cs8-.]) r16 <e' b' e>[( q8])
    r16 ds,[( |
  e8-.]) r16 <e' fs as cs>[( q8]) r16 e,[( ds8-.]) r16 <ds' fs b fs'>[( q8])
    r16 ds,[( |
  cs8-.]) r16 <fss' as e' fss>[( q8]) r16 cs,16[( b8-.]) r16 <gs'' ds' gs>[(
    <gs ds'>8]) r16 b,,-.[ |
  b8-.] r16 <fs'' b ds>16[( q8]) r16 b,,-.[ b8-.] r16 <fs'' b ds>[( q8]) r16
    b,,-.[
    
  \barNumberCheck 17
  b8-.] r16 <fs'' as e'>[( q8]) r16 b,,-.[ b8-.] r16 <fs'' as e'>[( q8)] r16
    b,,-.[ |
  b8-.] r r4 <e b' e b'>4.\arpeggio r8 |
  r4 e2 fs4 |
  <gs e'>4. r8 r2 |
  r4 <gs e'>2 fs4 |
  e4 r r <e' cs'>_~ |
  <e d'>4 r r \voiceTwo e~ |
  e4 \voiceThree e,-\slurShapeF _( \oneVoice ds d |
  
  \barNumberCheck 25
  cs2 fs, |
  \omit TupletBracket 
  \tuplet 6/4 { \stemDown b8-.[)-\slurShapeA ^( cs'' b fs b gs] } \tupletOff
    \tuplet 3/2 { a8[ b a cs, fs ds] } |
  \tuplet 3/2 { \stemNeutral e8[ fs e b cs gs]  b[ cs es, fs gs b,]) } |
  <e b'>1( |
  gs'4.\> fs8 \after 4 \! <a, e'>2 |
  <e e'>2) <cs gs' e'>~\arpeggio |
  q2 <a a' e'>2\arpeggio |
  <e' b'>1 |
  
  \barNumberCheck 33
  <e, e'>1-> |
  q1~ |
  q2 r |
  \oneVoice <b''' fs'>4. <b cs>8 <b ds>4 r |
  s1 |
  <ds, b'>4. <ds as'>8 <ds cs'>2 |
  s1 |
  \voiceFour \forceHShiftA gs,1 |
  
  \barNumberCheck 41
  \forceHShiftA gs1~ |
  \oneVoice <gs ds'>2 <ds ds'> |
  <gs ds'>2 r |
  % like 28 (14 bars)
  % e, not <e b'>: Urtext
  \voiceTwo e1-\slurShapeJ ^( |
  \oneVoice gs'4.\> fs8 \after 4 \! <a, e'>2 |
  <e e'>2) <cs gs' e'>2~\arpeggio |
  q2 <a a' e'>2\arpeggio |
  <e' b'>1 |
  
  \barNumberCheck 49
  <e, e'>1-> |
  q1~ |
  q2 r |
  \oneVoice <b''' fs'>4. <b cs>8 <b ds>4 r |
  s1 |
  <ds, b'>4. <ds as'>8 <ds cs'>2 |
  s1 |
  \voiceFour \forceHShiftA gs,1 |
  
  \barNumberCheck 57
  \forceHShiftA gs1-\tieShapeA ~ |
  gs1~ |
  gs1 |
  \oneVoice 
  <ds ds'>1( |
  <d d'>2 <cs cs'>~ |
  q2 <c c'>~ |
  q2 <bs bs'>2 |
  <cs cs'>2 <b! b'!> |
  
  \barNumberCheck 65
  q2 <e, e'> |
  <ds ds'>1 |
  <gs ds'>2) r |
  <ds'' as'>4. <ds es>8 <ds fss>4 r |
  s1 |
  \key f \minor
  <c bf'>4. q8 q4 r |
  s1 |
  \forceHShiftA f,1 |
  
  \barNumberCheck 73
  \forceHShiftA f1-\tieShapeB ~ |
  <f c'>2 <c c'> |
  <f c'>1 |
  \key e \major
  <e cs'>2( <ds ds'> |
  <cs e'>4)\arpeggio r8 \voiceTwo c( b4)\arpeggio s |
  % like 28 (seven bars)
  \oneVoice <e b'>1( |
  gs'4.\> fs8 \after 4 \! <a, e'>2 |
  <e e'>2) <cs gs' e'>~\arpeggio |
    
  \barNumberCheck 81
  q2 <a a' e'>2\arpeggio |
  <e' b'>1 |
  <e, e'>1-> |
  q1 |
  q1~ |
  q1 |
  R1 |
  \tweak MultiMeasureRest.Y-offset -2 R1 |
  
  \barNumberCheck 89
  r4 <c'' fs>2 <c e>4 |
  <c ds>4 r r2 |
  r4 bs2 as4 |
  gs4 r r <gs es'> |
  <gs fs'>4 r r \voiceTwo gs |
  gs2\( g |
  \oneVoice f4 ef df \afterGrace cf( { b) } |
  as4 gs g2 |
  
  \barNumberCheck 97
  fs2\) r |
  \key b \major
  \undo \omit TupletNumber \stemDown
  \tuplet 3/2 4 { b8( fs' fs'  <ds b' ds>[) r fs,]( } \scaleDurations 2/3 {
      b, fs' fs'  <ds b' ds>[) r fs,]( |
    b,8 fs' e' <fs as e'>[) r fs,](  b, fs' cs' <fs as e'>[) r fs,]( |
    b,8 fs' fs' <ds b' ds>[) r fs,](~ \voiceThree fs es as \oneVoice  
      \stemDown <ds fss cs'>[) r ds,]( |
    gs,8 gs' d' <cs es b'>[) r cs,](  fs, fs' fs' <as e'!>[) r fs,]( |
    b,8 fs' fs' <ds b' ds>[) r fs,](  b, fs' fs' <ds b' ds>[) r fs,]( |
    b,8 fs' fs' <as e'>[) r fs,](  b, fs' cs' <fs as e'>[) r 
      fs,]-\slurShapeS ( |
  }
  \tuplet 3/2 4 { \voiceTwo b, fs' b~ } b4 <e b'>) \oneVoice r |
  
  \barNumberCheck 105  
  r4 e,2 fs4 |
  <gs ds'>4. r8 r2 |
  r4 gs2 fs4 |
  es4 r r <e'! fs>( |
  <ds fs>4 <cs gs' b>) r <cs ds> |
  bs4_( b as a |
  g2 fs |
  \scaleDurations 2/3 {
    b,8[ fs' b as gs fs]  b[ as b as gs fs] |
    
    \barNumberCheck 113
    \voiceTwo cs'8[ bs ds cs gs fs]  cs'[ bs ds cs gs fs] |
    b!8[ as b as gs fs]  b[ as b as gs fs] |
    cs'8[ bs ds cs gs fs]  cs'[ bs ds cs gs fs] |
    \oneVoice fs'8[ gs fs es fs cs]  e[ fs e gs, cs as] |
    g8[ fs gs fs g fs]  gs[ fs g fs ds' fs,] |
  }
  b,4) r <b g' b>2 |
  <b fs' b>1_\fermata |
}

leftHand = {
  \global
  \clef bass
  \override Beam.breakable = ##t
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 2.*25/24 s32\ff s2. |
  s2..\< s8\! |
  s4\p s8. s16\< s4 s8. s16\! |
  s2\> s4\! s\< |
  s8 s\! s2. |
  s1 * 2 |
  s2. s4\< |
  s8. s16\! s2. |
  
  \barNumberCheck 9
  s1 |
  s2\< s\f|
  s2...\> s16\! |
  s2\p s8. s16\< s8. s16\! |
  s2. s4-\tweak to-barline ##f \> |
  s4\! s s2\cresc |
  s2. s16 s8\dim s16\! |
  s1\pp |
  
  \barNumberCheck 17
  s1 |
  s2 s4..\< s16\! |
  s1 |
  s2 s4..\< s16\! |
  s1 * 3 |
  s2 s\< |
  
  \barNumberCheck 25
  s2.. s8\! |
  s2...\> s16\!
  s1 |
  % key of e major
  s1 * 4 |
  s1\< |
  
  \barNumberCheck 33
  s1 |
  s2 s\! |
  s1 * 3 |
  s2..\< s8\! |
  s1 * 2 |
  
  \barNumberCheck 41
  s1 |
  s2...\< s16\! |
  s2...\> s16\! |
  s1 * 4 |
  s1\< |
  
  \barNumberCheck 49
  s1 |
  s2 s\! |
  s2\> s\! |
  s2.\> s4\! |
  s1 |
  s2..\< s8\! |
  s1 * 2 |
  
  \barNumberCheck 57
  s1 |
  s2...\< s16\! |
  s2...\> s16\! |
  s1 * 4 |
  s1\< |
  
  \barNumberCheck 65
  s2... s16\! |
  s2.\f s4\> |
  s2... s16\! |
  s2\p\> s8 s4.\! |
  s1 * 4 |
  
  \barNumberCheck 73
  s1 * 4 |
  s2...\< s16\! |
  s1 * 3 |
  
  \barNumberCheck 81
  s1 |
  s1\< |
  s1 |
  s2 s\! |
  s4 s2.\> |
  s4.. s16\! s2\pp |
  s1 * 2 |
  
  \barNumberCheck 89
  s1 |
  s2 s-\tweak to-barline ##f \< |
  \override DynamicTextSpanner.style = #'none
  s4\! s2.\cresc |
  s1 * 4 |
  \revert DynamicTextSpanner.style
  s4 s2.\dim |
  
  \barNumberCheck 97
  s2\! s4 s-\tweak to-barline ##f \< |
  s4\p s2. |
  s1 * 4 |
  s2...\dim s16\! |
  s2 s4..\< s16\! |
  
  \barNumberCheck 105
  s1 * 5 |
  s4 s2.\dim |
  s2.. s8\! |
  s1\pp |
  
  \barNumberCheck 113
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Largo" 4 = 50
  \partial 2.*25/24 s32 s2. |
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 |
  \tempo 4 = 69
  s1 * 7 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 * 8 |
  
  \barNumberCheck 73
  s1 * 8 |
  
  \barNumberCheck 81
  s1 * 8 |
  
  \barNumberCheck 89
  s1 * 8 |
  
  \barNumberCheck 97
  s2. \tempo 4 = 50 s4 |
  
}

pedal = {
  \partial 2.*25/24 s32 s2. |
  s1 * 3 |
  s2\sd s4..\su\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s2\sd s8.\su\sd s16\su s8.\sd s16\su |
  s8.-\tweak Y-offset -1 \sd s16\su s4\sd s4\su-\tweak Y-offset -1 \sd 
    s8.\su\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  
  \barNumberCheck 9
  s2\sd s4..\su\sd s16\su |
  s2\sd s4..\su\sd s16-\tweak Y-offset -2 \su |
  s4..-\tweak Y-offset -2 \sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s2...\sd s16\su |
  
  \barNumberCheck 17
  s2...\sd s16\su |
  s2\sd s4\su\sd s8\su s\sd |
  s2 s8 s4.\su |
  s2. s4\sd |
  s2 s8 s4.\su |
  s2. s4\sd |
  s2.\su s4\sd |
  s1\su |
  
  \barNumberCheck 25
  s2 s4.\sd s8\su |
  s4\sd s2.\su |
  s1 |
  % key of e major
  s2. s4\sd |
  s4 s2.\su |
  s2 s\sd |
  s4 s\su s4..-\tweak Y-offset -3 \sd s16\su |
  s1 |
  
  \barNumberCheck 33
  s1 * 2 |
  s4.-\tweak Y-offset -3 \sd s8\su s4..\sd s16\su |
  s1 |
  s4.-\tweak Y-offset -1 \sd s8\su s4..\sd s16\su |
  s1 |
  s4-\tweak Y-offset -1 \sd s\su s4..\sd s16\su |
  s1 |
  
  \barNumberCheck 41
  s1 * 3 |
  s2. s4\sd |
  s4 s2.\su |
  s2 s\sd |
  s4 s\su s4..-\tweak Y-offset -1 \sd s16\su |
  s1 |
  
  \barNumberCheck 49
  s1 * 2 |
  s4.-\tweak Y-offset -3 \sd s8\su s4..\sd s16\su |
  s1 |
  s4-\tweak Y-offset -1 \sd s\su s4..\sd s16\su |
  s1 |
  s4-\tweak Y-offset -1 \sd s\su s4..\sd s16\su |
  s1 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 * 2 |
  s4 s2\sd s4\su |
  s1 |
  s2-\tweak Y-offset -3 \sd s4..\su\sd s16\su |
  s1 |
  s4-\tweak Y-offset -1 \sd s\su s4..\sd s16\su |
  s1 |
  
  \barNumberCheck 73
  s1 * 4 |
  s4\sd s\su s4..-\tweak Y-offset -1 \sd s16\su |
  % like 28 
  s2. s4\sd |
  s4 s2.\su |
  s2 s\sd |
  
  \barNumberCheck 81
  s4 s\su s4..\sd s16\su |
  s1 * 4 |
  s4 s2.\sd |
  s1 * 2 |
    
  \barNumberCheck 89
  s2 s\su  |
  s2. s4\sd |
  s2 s\su |
  s1 * 4 |
  s2 s4-\tweak Y-offset -3 \sd s-\tweak Y-offset -3 \su |
  
  \barNumberCheck 97
  s2-\tweak Y-offset -0.5 \sd s4-\tweak Y-offset 2 \su s-\tweak Y-offset 2
    \sd |
  % key of b major
  \scaleDurations 2/3 {
    s2. s4. s4 s8\su |
    s4.\sd s4 s8\su s4.\sd s4 s8\su |
    s4.\sd s4 s8\su s4\sd s8\su s4\sd s8\su |
    s4-\tweak Y-offset -1.5 \sd s8\su s4\sd s8\su s4.-\tweak Y-offset -1.5
      \sd s4 s8\su |
    s2.\sd s4.\su\sd s4 s8\su |
    s4.\sd s4 s8\su s4.\sd s4 s8\su |
    s4.-\tweak Y-offset -3 \sd s8 s4\su 
  }
  s8\sd s\su s4\sd |
  
  \barNumberCheck 105
  s2 s\su |
}

forceBreaks = {
  % page 1
  \partial 2.*25/24 s32\noBreak s2.\noBreak |
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 3
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  
  % page 4
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  
  % page 5
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\pageBreak
  
  % page 6
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
}

sonataLargoNotes =
\score {
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

sonataLargoMidi =
\book {
  \bookOutputName "sonata-op58-largo"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
