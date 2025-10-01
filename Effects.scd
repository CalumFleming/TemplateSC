
SynthDef(\delay, {|in=0, out=0, delaytime=1, feedback=0.4, mix=0.3|
    var input, delayed, feedbackSig;

    input = In.ar(in, 2); // read from input bus

    // Feedback delay
    feedbackSig = LocalIn.ar(2);
    delayed = DelayN.ar(input + (feedbackSig * feedback), 2.0, delaytime);
    LocalOut.ar(delayed);

    // Mix dry and wet
    Out.ar(out, input + (delayed * mix));
}).add;

// Create a bus for effects
~effectsBus = Bus.audio(s, 2);

// Create the delay effect (reads from effects bus, outputs to speakers). This is the potentially problematic code as it often tried to create the delay effect before the synth \delay has finished being defined. You can run them here seperately rather than on the play file to be cautions
~delayFX = Synth(\delay, [\in, ~effectsBus, \out, 0]);
