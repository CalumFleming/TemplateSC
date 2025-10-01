// Server things
s.boot;
s.reboot;
s.quit;
s.options.outDevice = "MacBook Air Speakers"; // These devices will all need to be configured to the names on your machine
s.options.inDevice = "MacBook Air Microphone";
s.options.numInputBusChannels = 0;
s.options.outDevice = "External Headphones";
ServerOptions.devices; // Use this to see the available devices

// Load structure - Load this seperately in case it throws an error
(
"Effects.scd".loadRelative; // This may error as the synth has not been defined fully before being assigned to a bus channel, if this happens, load the file again.
);
// Then load these in one block
(
"SampleFilePaths.scd".loadRelative;
"Dictionaries.scd".loadRelative;
"SynthDefs.scd".loadRelative;
"Patterns.scd".loadRelative;
);

// Clocks
TempoClock.default.tempo = 130/60; // At the moment, only the default clock is being set but yo can add multiple clocks and define them here

// Start patterns
~kickFourPattern.play;
~kickSampleFourPattern.play;
~kickSampleWonkyPattern.play;
~hihatPattern.play;
~chordBeepPattern.play;
~snareTwoFourPattern.play;
~snareFunkyPattern.play;

// Stop patterns - these are only in a block for ease of stopping them all for testing, they can be run seperately
(
~kickFourPattern.stop;
~kickSampleFourPattern.stop;
~kickSampleWonkyPattern.stop;
~hihatPattern.stop;
~chordBeepPattern.stop;
~snareTwoFourPattern.stop;
~snareFunkyPattern.stop;
);

// One Hit Samples - none of these are quantised so will play as soon as the code is run
Synth(\samplePlayer, [\buf, ~popScratchSampleBuffer, \amp, 2]);
Synth(\samplePlayer, [\buf, ~selectaSampleBuffer, \amp, 2]);