
// Synths
SynthDef(\beep, {|out=0, amp=0.4, midinote=60, noteDur=0.1, pan=0.0|
    var sig, env, freq;

    freq = midinote.midicps;  // Convert MIDI to frequency

    sig = Pan2.ar(Pulse.ar(freq, 0.9) * amp, pan);
    env = EnvGen.ar(
        Env([0.2, 1, 0.01, 0], [0.01, noteDur-0.02, 0.01]),
        doneAction: 2
    );
    sig = sig * env;
    Out.ar(out, sig);
}).add;

// Test it
//Synth(\beep, [\freq, 500, \dur, 0.03]);

// Drums
SynthDef(\kick, { |out=0, amp=0.8, bassFreq=30, decay=1.0, click=0.002|
    var sig, env, clickEnv, pitchEnv;

    // Main envelope - gentler for sub kick
    env = EnvGen.kr(Env.perc(0.01, decay, curve: -2), doneAction: 2);

    // Click envelope - very short
    clickEnv = EnvGen.kr(Env.perc(0.01, click));

    // MUCH gentler pitch envelope for sub kick
    pitchEnv = EnvGen.kr(Env([0.5, 1], [0.05], \exp));

    // Sine wave with subtle pitch envelope
    sig = SinOsc.ar(bassFreq * pitchEnv);

    // Shape and output
    sig = sig * env * amp;
    Out.ar(out, sig ! 2);
}).add;

SynthDef(\kickSample, { |out = 0, bufnum = 0, rate = 1, amp = 0.1|
    var sig;
    sig = PlayBuf.ar(2, bufnum, rate, 1, 0, doneAction: 2);
    Out.ar(out, sig * amp);
}).add;


// For testing
//Synth(\kickSample);

// Sample player
// This is a generic sample player and will work with any sample given to is in the correct format (be careful of length of samples)
SynthDef(\samplePlayer, {
    |buf, rate=1, amp=0.7, pan=0, attack=0.01, release=0.1,
     cutoff=20000, resonance=0.1, room=0, roomsize=0.5, out=0|

    var sig, env, filtered, reverbed;

    sig = PlayBuf.ar(2, buf, rate * BufRateScale.kr(buf), doneAction: 2);

    // Commented out envelope but leaving here as an example
/*    env = EnvGen.kr(Env.perc(attack, release));
    sig = sig * env;*/

    filtered = LPF.ar(sig, cutoff, resonance);
    reverbed = Select.ar(room > 0, [
        filtered,  // when room <= 0, use dry signal
        FreeVerb.ar(filtered, room, roomsize, 0.5)  // when room > 0, use reverb
    ]);

    Out.ar(out, Pan2.ar(reverbed * amp, pan));
}).add;
