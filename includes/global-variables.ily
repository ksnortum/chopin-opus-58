\version "2.24.0"

%
% Scheme functions
%

% Expect a LilyPond warning a certain number of times
#(define ly:expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = {
  \undo \omit TupletNumber
  \undo \omit TupletBracket
}

strictSpacingOn = {
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \newSpacingSection
}
strictSpacingOff = {
  \override Score.SpacingSpanner.strict-note-spacing = ##f
  \newSpacingSection
}

slashFlag = \once \override Flag.stroke-style = #"grace"

pastBarLine = \tweak to-barline ##f \etc

tieToNextNote = \set tieWaitForNote = ##t
untieToNextNote = \set tieWaitForNote = ##f

dimMarkup = \markup \large dim.
mockDim = \override TextSpanner.bound-details.left.text = \dimMarkup

underSlur =
  \tweak avoid-slur #'inside
  \tweak outside-staff-priority ##f 
  \etc
underSlurOne = \tweak avoid-slur #'inside \etc
underSlurTwo = \tweak outside-staff-priority ##f \etc
trillSpanUnderSlur = \once \override TrillSpanner.outside-staff-priority = ##f
ottavaUnderSlur = \tweak OttavaBracket.outside-staff-priority ##f \etc

fermataOverBarUpper = {
  \override Score.TextMark.self-alignment-X = #CENTER
  \textEndMark \markup { \musicglyph "scripts.ufermata" }
}
fermataOverBarLower = {
  \tweak direction #DOWN
  \textEndMark \markup { \musicglyph "scripts.dfermata" }
}

%
% Markup
%

ten = \markup \large \italic ten.
sostenuto = \markup \large \italic sostenuto
cantabile = \markup \large \italic cantabile
leggiero = \markup \large \italic leggiero
leggieroWO = \markup \whiteout \pad-markup #0.5 \large \italic leggiero
pocoRitenuto = 
  \markup \whiteout \pad-markup #0.5 \large \italic "poco ritenuto"
tenutoMarkup = \markup \large \italic tenuto
ritenuto = \markup \large \italic ritenuto
agitato = \markup \large \italic agitato
dolce = \markup \large \italic dolce
dolciss = \markup \large \italic dolciss.
aTempo = \markup \large \italic "a tempo"
sempreF = \markup { \large \italic sempre \dynamic f }
pLegato = 
  \markup \whiteout \pad-markup #0.5 { \dynamic p \large \italic legato }
prallFlat = \markup \teeny \concat { " " \flat }
