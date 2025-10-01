// These file paths are all placeholders, change them to the location of the samples you want the buffers to read


// Drum Samples
~kickSamplePath = "/Users/cal/Splice/sounds/packs/RARE - Tape Jams 3/One_shots/Drum_one_shots/Kicks/RKU_RTJ3_kick_one_shot_spirit.wav";
~snareSamplePath = "/Users/cal/Splice/sounds/packs/UK Funky Producer/WAV_REX2_UK_Funky_Producer/Single_Hits__WAV_/Snares/Bh_Hit_Snr_0005_PL.wav";
~hihatSamplePath = "/Users/cal/Splice/sounds/packs/UK Funky Producer/WAV_REX2_UK_Funky_Producer/Single_Hits__WAV_/Hi_Hats/Bh_Hit_Hihat_0014_PL.wav";

// Effect Samples
~popScratchSamplePath = "/Users/cal/Splice/sounds/packs/DUST AND ASH/Dust_and_Ash/One_shots/FX/Textures/RKU_DNA_TEXTURE_ONE_SHOT_CRACKLE_WARPED.wav";
~selectaSamplePath = "/Users/cal/Splice/sounds/packs/Garage, M8/Garage_M8_NITELIFE_Audio/Melodic_Oneshots/Vocals/GM8_vocal_male_MC_shout_selecta.wav";

// Drum Buffers
~kickSampleBuffer = Buffer.read(s, ~kickSamplePath);
~snareSampleBuffer = Buffer.read(s, ~snareSamplePath);
~hihatSampleBuffer = Buffer.read(s, ~hihatSamplePath);

// Effect Buffers
~popScratchSampleBuffer = Buffer.read(s, ~popScratchSamplePath);
~selectaSampleBuffer = Buffer.read(s, ~selectaSamplePath);