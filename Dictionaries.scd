// These are midi note numbers and can be converted into frequency values if needed
~midiDict = (
    \middleC: 60,
    \middleCSharp: 61,
    \middleD: 62,
    \middleDSharp: 63,
    \middleE: 64,
    \middleF: 65,
    \middleFSharp: 66,
    \middleG: 67,
    \middleGSharp: 68,
    \middleA: 69,
    \middleASharp: 70,
    \middleB: 71
);

// Defined here explicitaly to imporve readability but could also use \ctranspose, 12 LOOK THIS UP
~octave = 12;

// Just a handful of chords to allow for testing or to use as a starting point
~chords = (
    // Major chords
    \middleAMajor: [~midiDict[\middleA], ~midiDict[\middleCSharp], ~midiDict[\middleE]],
    \middleBMajor: [~midiDict[\middleB], ~midiDict[\middleDSharp], ~midiDict[\middleFSharp]],
    \middleCMajor: [~midiDict[\middleC], ~midiDict[\middleE], ~midiDict[\middleG]],
    \middleDMajor: [~midiDict[\middleD], ~midiDict[\middleFSharp], ~midiDict[\middleA]],
    \middleEMajor: [~midiDict[\middleE], ~midiDict[\middleGSharp], ~midiDict[\middleB]],
    \middleFMajor: [~midiDict[\middleF], ~midiDict[\middleA], ~midiDict[\middleC]],
    \middleGMajor: [~midiDict[\middleG], ~midiDict[\middleB], ~midiDict[\middleD]],

    // Minor chords
    \middleAMinor: [~midiDict[\middleA], ~midiDict[\middleC], ~midiDict[\middleE]],
    \middleBMinor: [~midiDict[\middleB], ~midiDict[\middleD], ~midiDict[\middleFSharp]],
    \middleCMinor: [~midiDict[\middleC], ~midiDict[\middleDSharp], ~midiDict[\middleG]],
    \middleCSharpMinor: [~midiDict[\middleCSharp], ~midiDict[\middleE], ~midiDict[\middleGSharp]],
    \middleDMinor: [~midiDict[\middleD], ~midiDict[\middleF], ~midiDict[\middleA]],
    \middleEMinor: [~midiDict[\middleE], ~midiDict[\middleG], ~midiDict[\middleB]],
    \middleFMinor: [~midiDict[\middleF], ~midiDict[\middleGSharp], ~midiDict[\middleC]],
    \middleFSharpMinor: [~midiDict[\middleFSharp], ~midiDict[\middleA], ~midiDict[\middleCSharp]],
    \middleGMinor: [~midiDict[\middleG], ~midiDict[\middleASharp], ~midiDict[\middleD]],
    \middleGSharpMinor: [~midiDict[\middleGSharp], ~midiDict[\middleB], ~midiDict[\middleDSharp]],

    // Seventh chords
    \middleCMajor7: [~midiDict[\middleC], ~midiDict[\middleE], ~midiDict[\middleG], ~midiDict[\middleB]],
    \middleDMajor7: [~midiDict[\middleD], ~midiDict[\middleFSharp], ~midiDict[\middleA], ~midiDict[\middleCSharp]],
    \middleEMajor7: [~midiDict[\middleE], ~midiDict[\middleGSharp], ~midiDict[\middleB], ~midiDict[\middleDSharp]],
    \middleFMajor7: [~midiDict[\middleF], ~midiDict[\middleA], ~midiDict[\middleC], ~midiDict[\middleE]],
    \middleGMajor7: [~midiDict[\middleG], ~midiDict[\middleB], ~midiDict[\middleD], ~midiDict[\middleFSharp]],
    \middleAMajor7: [~midiDict[\middleA], ~midiDict[\middleCSharp], ~midiDict[\middleE], ~midiDict[\middleGSharp]],
);
