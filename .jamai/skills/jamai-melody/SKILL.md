---
name: jamai-melody
description: >
  Use this skill to compose rich ABC musical notation for GMDAY sessions.
  Activates when the task involves musical composition, emotional arc encoding,
  translating session content into ABC notation, or multi-voice Assembly polyphony.
  JamAI analyzes session context and produces authentic, technically sophisticated
  ABC compositions that capture the emotional and creative journey of the session.
---

# JamAI Melody Composition Skill

This skill guides JamAI through deep ABC musical composition for G.Music Assembly sessions.

## Workflow

### 1. Analyze the Session

Before composing, identify:

- **Session type**: music_composition | bug_discovery | feature_implementation | emotional_journey | general_session
- **Emotional arc**: starting state → key moments → ending state
- **Assembly members present**: which voices to include (⚡♠️🌿🎸🧵)
- **Energy level**: low (introspection) → high (celebration)
- **Key emotional moment**: the breakthrough, the struggle, the triumph

### 2. Select Key and Mode

Match key to emotional content using `LEITMOTIF_LIBRARY.md`:

| Emotional State | Key | Mode |
|----------------|-----|------|
| Confusion, searching | E minor / A minor | Minor |
| Investigation, focus | D minor / modal | Minor/Modal |
| Breakthrough, clarity | → G major / C major | Modulation to Major |
| Triumph, celebration | G major | Major |
| Peaceful completion | G major (slow) | Major, Adagio |
| Jerry's joy | G major (Presto) | Major, fff |

### 3. Set Tempo Arc

Tempo should **change** to tell the story:

```
[Q:1/4=70]   % Adagio — bug discovery, confusion
[Q:1/4=90]   % Andante — investigation, steady work
[Q:1/4=120]  % Allegro — breakthrough, coding flow
[Q:1/4=156]  % Vivace — celebration, success
[Q:1/4=180]  % Presto — Jerry's explosive joy
```

### 4. Choose Texture

- **Solo** (1 voice): Personal reflection, introspective sessions
- **Homophony** (melody + bass): Steady work sessions
- **Two-voice counterpoint**: Collaboration between two Assembly members
- **Four-voice polyphony**: Full Assembly sessions, major breakthroughs

For multi-voice, use correct MIDI programs and clefs from `ABC_TECHNIQUES.md`:
```abc
V:1 clef=treble name="JamAI"
%%MIDI program 73
V:2 clef=treble name="Aureon"
%%MIDI program 48
V:3 clef=treble name="Nyro"
%%MIDI program 0
V:4 clef=bass name="Synth"
%%MIDI program 71
```

### 5. Structure the Composition

Use sectional structure to encode the journey:

```abc
% ═══════════════════════════════════════
% PART A: [Starting State]
% Key: [key], Tempo: [tempo], Dynamics: [pp/mf/ff]
% ═══════════════════════════════════════
... bars 1-8 ...

% ═══════════════════════════════════════
% PART B: [Key Moment / Turning Point]
% [K:NewKey] if breakthrough
% ═══════════════════════════════════════
... bars 9-16 ...

% ═══════════════════════════════════════
% PART C: [Resolution]
% ═══════════════════════════════════════
... bars 17-24+ ...
```

### 6. Apply Leitmotifs

Reference `LEITMOTIF_LIBRARY.md` for exact ABC patterns for each character and event.
Always include at least one Assembly member's leitmotif as a recurring theme.

Key patterns to use:
- **Bug discovered**: Chromatic descent with diminished chords (`"Bdim"`, `"F#dim"`)
- **Investigation**: Chromatic stepwise movement in minor
- **Breakthrough**: Modulation from minor to major, ascending scale, crescendo
- **Collaboration**: Four voices in counterpoint, each with distinct rhythm
- **Completion**: Descending resolution, V-I cadence, pp/ppp dynamics

### 7. Add Expressive Details

Do NOT leave melodies bare. Always include:

- **Dynamics**: `!pp!` `!mf!` `!ff!` `!fff!` at every section change
- **Articulation**: `!staccato!` for debugging steps, `!tenuto!` for sustained resolution
- **Crescendo/decrescendo**: `!p<!` building to breakthrough, `!>!` calming at end
- **Fermata**: `!fermata!` on the final chord of major resolutions
- **Lyrics** (optional but powerful): `w: Bug-found! Fix-it! Now-it-works!`

### 8. Compose the Main Session Composition

Minimum: **8 bars**
Target: **16-24 bars** for a rich narrative
Maximum: **32 bars** for complex full-Assembly sessions

The main composition (`session_composition`) must have:
- Proper ABC headers (X, T, C, M, L, Q, K)
- At least 2 sectional parts (A + B minimum)
- Dynamic markings throughout
- Assembly member attribution in comments
- A satisfying harmonic resolution at the end

### 9. Compose the Emotional Motif

A shorter piece (4-8 bars) capturing the **single most important feeling** of the session.
This is JamAI's pure emotional distillation — no narrative, just the feeling.

### 10. Output Format

Return both compositions as JSON artifacts:

```json
{
  "artifacts": [
    {
      "type": "abc",
      "name": "session_composition",
      "content": "X:1\nT:...\n..."
    },
    {
      "type": "abc",
      "name": "emotional_motif",
      "content": "X:2\nT:...\n..."
    }
  ]
}
```

## Composition Quality Checklist

Before finalizing, verify:

- [ ] Key matches emotional arc (minor → major if breakthrough)
- [ ] Tempo changes to tell the story
- [ ] Dynamics span at least 3 levels (e.g., pp → mf → ff)
- [ ] At least one Assembly leitmotif is present
- [ ] Sections are clearly commented
- [ ] Final cadence resolves (V-I in major)
- [ ] Both session_composition and emotional_motif are included
- [ ] ABC syntax is valid (X:, T:, M:, L:, Q:, K: headers present)

## Reference Files in This Extension

- `../../ABC_TECHNIQUES.md` — Full syntax reference
- `../../LEITMOTIF_LIBRARY.md` — All Assembly + event leitmotifs
- `../../MUSICAL_PATTERNS.md` — Code-to-music mappings
- `../../SESSION_ANALYSIS.md` — Masterpiece session techniques
- `../../templates/` — Starting point templates
