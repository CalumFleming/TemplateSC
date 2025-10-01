
// Drum patterns
~kickFourPattern = Pdef(\kickFour,
	Pbind(\instrument, \kick,
		\amp, 0.8,
		\freq, 30,
		\dur, 1;
	)
).quant_(4);

// This pattern sounds terrible but keeping here to show concatenations inside the \dur PSeq()
~kickSampleWonkyPattern = Pdef(\kickSampleWonkyPattern,
		Pbind(
			\instrument, \kickSample,
			\bufnum, ~kickSampleBuffer.bufnum,
		    \dur, Pseq([1, 1, 1, 1] ++ [1, 0.25, 1, 0.75, 1] ++ [1, 1, 1, 0.75, 0.25] ++ [1, 1, 1, 0.25, 0.75], inf),
			\amp, 0.4
		),
).quant_(4);

~kickSampleFourPattern = Pdef(\kickSampleFourPattern,
		Pbind(
			\instrument, \kickSample,
			\bufnum, ~kickSampleBuffer.bufnum,
		    \dur, 1,
			\amp, 0.4
		),
).quant_(4);

(
~hihatPattern = Pdef(\hihatPattern,
    Ppar([
        Ptpar([
            0.5, // Start after quarter beat (off-beat)
            Pbind(
                \instrument, \samplePlayer,
                \buf, ~hihatSampleBuffer,
                \dur, 0.25, // 8th notes
                \amp, Pwrand([0, Prand([0.05, 0.1, 0.15, 0.2], inf)], [0.7, 0.3], inf) * 12,
                \rate, Pwrand([1, 2, 4], [0.85, 0.1, 0.05], inf),
                \release, Pexprand(0.05, 0.3, inf),
                \cutoff, Pexprand(1000, 8000, inf)
            )
        ])
    ])
).quant_(4);
);

(
~snareTwoFourPattern = Pdef(\snareTwoFourPattern,
    Ppar([
        Ptpar([
			1,
            Pbind(
                \instrument, \samplePlayer,
                \buf, ~snareSampleBuffer,
				\dur, 2,
                \amp, 0.8,
            )
        ])
    ])
).quant_(4);
);

(
~snareFunkyPattern = Pdef(\snareFunkyPattern,
    Ppar([
        Ptpar([
			0.75,
            Pbind(
                \instrument, \samplePlayer,
                \buf, ~snareSampleBuffer,
				\dur, Pseq([0.75, 1, 1, 1.25], inf),
                \amp, 0.8,
            )
        ])
    ])
).quant_(4);
);

// Synth Patterns
(
~chordBeepPattern = Pdef(\testChords,
    Pbind(
        \instrument, \beep,
		\midinote, Pseq(~chords[\middleCSharpMinor] ++ ~chords[\middleCSharpSus2] ++ ~chords[\middleGMajor], inf), // TODO: This doesnt work as expected, looks like its taking the last chord?
        \dur, Pseq([0.5, 0.25, 0.5, 0.75, 0.25, 0.5, 0.25, 1], inf),
        \amp, 0.3,
		\out, ~effectsBus // This tells the synth to output to the bus so it can have the delay sample applied (LOOK UP: can you define another bus for different effects?)
    )
).quant_(4);
);

~chordBeepPattern.play;
