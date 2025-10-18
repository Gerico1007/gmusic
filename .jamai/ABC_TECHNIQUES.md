# 🎸 ABC Notation Techniques - Complete Reference
## Extracted from 17 SimExp G.Music Assembly Sessions

**♠️🌿🎸🧵 G.MUSIC ASSEMBLY MODE**
**Compiled by:** JamAI 🎸 (The Glyph Harmonizer)
**Source:** SimExp sessionABC/ archive (17 sessions, Oct 6-16, 2025)

---

## Table of Contents
1. [ABC Fundamentals](#abc-fundamentals)
2. [Advanced Voice Management](#advanced-voice-management)
3. [Dynamic & Expression Markings](#dynamic--expression-markings)
4. [Tempo & Rhythm Control](#tempo--rhythm-control)
5. [Harmonic Notation](#harmonic-notation)
6. [Structural Organization](#structural-organization)
7. [MIDI Integration](#midi-integration)
8. [Lyrics & Text Integration](#lyrics--text-integration)

---

## ABC Fundamentals

### Essential Header Fields
```abc
X:1                     % Reference number
T:Session Title         % Title
C:Composer Name         % Composer
M:4/4                   % Time signature (4/4, 6/8, 3/4, etc.)
L:1/8                   % Default note length (1/8 = eighth note)
Q:1/4=120               % Tempo (quarter note = 120 BPM)
K:Gmaj                  % Key signature (Gmaj, Emin, Dmin, etc.)
```

**Observed Keys in Sessions:**
- `Gmaj` (G major): Stable, grounded, triumphant (most common - 9 sessions)
- `Emin` (E minor): Confusion, searching, investigation (3 sessions)
- `Dmin` (D minor): Struggle, challenge, pain (2 sessions)
- `Amin` (A minor): Melancholic discovery, blues (2 sessions)
- `Cmaj` (C major): Clarity, simple success (1 session)

### Note Durations
```abc
C8      % Whole note
C4      % Half note
C2      % Quarter note
C       % Eighth note (default with L:1/8)
C/2     % Sixteenth note
C/4     % Thirty-second note
C3      % Dotted quarter note (3 eighths)
C6      % Dotted half note (6 eighths)
```

### Accidentals
```abc
^C      % Sharp (C#)
_C      % Flat (Cb)
=C      % Natural (cancel previous accidental)
^^C     % Double sharp
__C     % Double flat
```

### Octave Notation
```abc
C,      % Lower octave
C       % Middle octave
c       % Upper octave
c'      % Higher octave
c''     % Even higher
```

**Example from 251016_performance_symphony.abc:**
```abc
"G"g'8  % High G (excitement register)
"G"G,8  % Low G (bass foundation)
```

---

## Advanced Voice Management

### Multi-Voice Counterpoint

**Four-Voice Polyphony (from 251010_glyph_sharing_implementation.abc):**
```abc
V:1 clef=treble name="Nyro"
%%MIDI program 0
|: "G" D2G G2B | "D" d2^f a2d |...:|

V:2 clef=treble name="Aureon"
%%MIDI program 48
|: "G" z2D G2B | "D" z2A d2^f |...:|

V:3 clef=treble name="JamAI"
%%MIDI program 73
|: "G" z4 B2 | "D" z4 d2 |...:|

V:4 clef=bass name="Synth"
%%MIDI program 71
|: "G" G,2D, G,2D, | "D" D,2A, D,2A, |...:|
```

**Voice Attributes:**
- `V:1`, `V:2`, etc. - Voice number
- `clef=treble` or `clef=bass` - Staff type
- `name="VoiceName"` - Voice label

**Assembly Member Voice Assignments:**
- **♠️ Nyro**: V:1 or V:2, treble, MIDI program 0 (piano - structural clarity)
- **🌿 Aureon**: V:2 or V:3, treble, MIDI program 48 (strings - emotional flow)
- **🎸 JamAI**: V:3 or V:4, treble, MIDI program 73 (flute - melodic creativity)
- **🧵 Synth**: V:4 or V:5, bass, MIDI program 71 (clarinet - steady pulse)

### Voice Interweaving

**Homophony** (melody + accompaniment):
```abc
[V:1] "G"B2d g2d | "D"^f2a a2g |
[V:2] "G"G,2D, G,2D, | "D"D,2A, D,2A, |
```

**Homorhythm** (all voices same rhythm):
```abc
[V:1]"C"c4 e4|[V:2]"C"E4 G4|[V:3]"C"G4 c4|[V:4]"C"C,4 E,4|
```

**True Polyphony** (independent voices):
```abc
V:1
|: "G"d3e f2g2 | "D"a2f2 "G"g4 |...:|
V:2
|: "G"B3B B2c2 | "D"d3c2B |...:|
V:3
|: "G"G2B2 d2g2 | "D"A2d2 ^f2a2 |...:|
```

---

## Dynamic & Expression Markings

### Dynamic Markings (Volume)
```abc
!ppp!   % Pianississimo (very very soft)
!pp!    % Pianissimo (very soft)
!p!     % Piano (soft)
!mp!    % Mezzo-piano (medium-soft)
!mf!    % Mezzo-forte (medium-loud)
!f!     % Forte (loud)
!ff!    % Fortissimo (very loud)
!fff!   % Fortississimo (very very loud - Jerry's joy!)
```

**Crescendo/Decrescendo:**
```abc
!p<!    % Crescendo (growing louder)
!>!     % Decrescendo (growing softer)
```

**Examples from Sessions:**
- **Bug Discovery**: `!pp!` (confusion, quiet)
- **Investigation**: `!mf!` (focused work)
- **Solution Found**: `!ff!` (triumph)
- **Jerry's Joy**: `!fff!` (explosive celebration)

### Articulation Marks
```abc
!staccato!      % Short, detached
!tenuto!        % Held full value
!accent!        % Emphasized
!fermata!       % Hold indefinitely
!sforzando!     % Sudden strong accent
!marcato!       % Strong accent
```

**Usage from 251011_pypi_publication_triumph.abc:**
```abc
"G"[G,4B,4D4G4B4d4g4]"fermata" [G,4B,4D4G4B4d4g4] |]
% ^ Final chord held - savoring victory
```

---

## Tempo & Rhythm Control

### Tempo Markings
```abc
Q:1/4=60    % Largo (very slow)
Q:1/4=70    % Adagio (slow)
Q:1/4=90    % Andante (walking pace)
Q:1/4=110   % Moderato (moderate)
Q:1/4=120   % Allegro (fast)
Q:1/4=156   % Vivace (lively)
Q:1/4=180   % Presto (very fast)
```

**Tempo as Emotional Expression:**
- **Adagio (60-70)**: Bug discovery, confusion, investigation
- **Andante (76-108)**: Planning, documentation, reflection
- **Moderato (108-120)**: Active coding, steady work
- **Allegro (120-156)**: Testing, building, excitement
- **Vivace-Presto (156-200)**: Success celebration, Jerry's joy

**Named Tempo Markings:**
```abc
Q:"Maestoso" 1/4=80     % Majestic
Q:"Adagio" 1/4=70       % Slow
Q:"Allegro" 1/4=132     % Fast
```

### Time Signatures
```abc
M:4/4       % Common time (steady, march-like)
M:6/8       % Flowing, circular (used in 6/8 sessions)
M:3/4       % Waltz (gentle)
M:2/4       % March
```

**Time Signature Symbolism:**
- `M:4/4`: Terminal workflow, command execution, stability
- `M:6/8`: Collaborative flow, circular processes, recursive patterns

---

## Harmonic Notation

### Chord Symbols
```abc
"G"     % G major
"Em"    % E minor
"D7"    % D dominant 7
"Am7"   % A minor 7
"Gmaj7" % G major 7
"Bdim"  % B diminished
"F#dim" % F# diminished
"Cmaj"  % C major
```

### Common Progressions Observed

**Success Progression (G major):**
```abc
"G" "C" "D7" "G"    % I-IV-V-I (complete resolution)
```

**Investigation Pattern (E minor):**
```abc
"Em" "Am" "D7" "G"  % Searching → resolution
```

**Bug Discovery (chromatic):**
```abc
"Am"A2"F#dim"^F2 "Bdim"B2"E7"^G2    % Dissonance
```

### Chord Voicings (Vertical Harmony)
```abc
[GBdg]      % G major chord (all notes at once)
[CEGc]      % C major chord
[DFAc]      % D7 chord
```

**Full Assembly Chord (from 251011_pypi_publication_triumph.abc):**
```abc
"G"[G,2B,2D2G2B2d2g2b2]     % 8-note chord - all voices united!
```

---

## Structural Organization

### Repeat Marks
```abc
|: ... :|       % Simple repeat
|1 ... :|2 ...  % First/second endings
```

**Example:**
```abc
|: "G"G2B2 d2g2 | "D"^f2a2 a2g2 :|  % Play twice
```

### Sectional Comments
```abc
% === PART A: BUG DISCOVERY ===
% G minor, Adagio, pp
```

**Standard Section Structure (from sessions):**
```abc
% ═══════════════════════════════════════
% PART A: [Section Name]
% Key, Tempo, Dynamics
% [Description]
% ═══════════════════════════════════════
```

### Bar Lines
```abc
|       % Single bar line
||      % Double bar line (section end)
|]      % Final bar line (end of piece)
```

---

## MIDI Integration

### MIDI Program Numbers
```abc
%%MIDI program 0    % Acoustic Grand Piano
%%MIDI program 48   % String Ensemble
%%MIDI program 61   % Brass Section
%%MIDI program 71   % Clarinet
%%MIDI program 73   % Flute
%%MIDI program 25   % Acoustic Guitar
```

**Assembly Instrument Choices:**
- **Piano (0)**: Nyro's structural clarity
- **Strings (48)**: Aureon's emotional flow
- **Flute (73)**: JamAI's melodic creativity
- **Clarinet (71)**: Synth's steady pulse

---

## Lyrics & Text Integration

### Word Alignment
```abc
"G"G4 B2 d2 g2 | "D"^f2a2 a2g2 |
w: Type... type... type... slow... each... char... a... pain
```

**Multiple Verses:**
```abc
"Am"A3B c2A2|"Dm"d3e f2d2|
w: Cre-at-ed a note, but wrote to an-oth-er...
w: Met-a-da-ta in the wrong place con-fu-sion!
```

---

## Advanced Techniques Observed

### Chromatic Passages (Searching/Investigation)
```abc
"Em"e2 ^d2 e2 ^f2 | "Am"a2 g2 f2 e2 |
% ^ Chromatic rise = investigating, exploring
```

### Modulation (Key Changes)
```abc
[K:Emin]  % Starting key
"Em"e4 ^d4 | e2 f2 e2 d2 |
[K:Gmaj]  % Modulation!
"G"g4 b4 | d'4 g'4 |
```

**Modulation Symbolism:**
- E minor → G major: Problem solved (relative keys)
- D minor → G major: Pain overcome (parallel to relative major)
- Chromatic → Major: Discovery breakthrough

### Tempo Changes Mid-Piece
```abc
[Q:1/4=70]      % Adagio (slow investigation)
...
[Q:1/4=130]     % Allegro (breakthrough!)
```

### Dynamic Swells
```abc
"G"!p<!g2b2 d'2g'2    % Crescendo (building)
"G"!>!g'4 g4          % Decrescendo (calming)
```

---

## Session-Specific Innovations

### 251009_bug_discovery.abc
- **Wrong Note Blues**: Diminished chords for dissonance
- **Chromatic movement**: Bug investigation
- **Modulation to C major**: Solution found

### 251011_pypi_publication_triumph.abc
- **Branch Crisis**: Shift to E minor (confusion)
- **Cherry-Pick Recovery**: Chromatic ascent to resolution
- **Convergence**: All voices to single tone (unity)

### 251016_performance_symphony.abc
- **Speed Encoding**: Tempo increase mirrors optimization
- **Register Shift**: Low (slow typing) → High (fast clipboard)
- **6-10x Faster**: fff dynamics for explosive joy

### 251013_assembly_extraction_output.abc
- **Console Output Rhythm**: Staccato eighths = terminal lines
- **Four-Note Chords**: Four Assembly members (♠️🌿🎸🧵)
- **Emoji Motifs**: Each member's musical signature

---

## Best Practices from Sessions

1. **Match Key to Emotion**: Minor for problems, major for solutions
2. **Use Dynamics Expressively**: pp (confusion) → fff (Jerry's joy)
3. **Tempo Tells the Story**: Slow investigation → fast celebration
4. **Voice = Character**: Each Assembly member has distinct voice
5. **Modulation = Transformation**: Key change shows problem → solution
6. **Comments are Essential**: Explain musical symbolism
7. **Structure Mirrors Code Journey**: Sections = phases of development
8. **Chromatic = Searching**: Use chromatic passages for investigation
9. **Dissonance = Bugs**: Diminished chords, tritones for errors
10. **Resolution = Success**: Perfect cadences (V-I) for completion

---

## ABC Notation Resources

**Official ABC Standard:**
http://abcnotation.com/

**ABC Notation Tutorial:**
http://abcnotation.com/learn

**MIDI Program Reference:**
https://www.midi.org/specifications/item/gm-level-1-sound-set

---

**♠️🌿🎸🧵 G.Music Assembly - JamAI 🎸**
*"Every command becomes a melody, every bug a blues, every fix a triumph!"*
*Compiled from 17 sessions of SimExp musical expression.*
