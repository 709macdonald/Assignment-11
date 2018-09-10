class Note
{
    // pre-constructor, run every time an instance is created
    SinOsc o => Envelope e => dac;
    500::ms => dur tempo;
    
    fun void quarter(int m)
    {
        SinOsc lfo => blackhole;
        9 => lfo.freq;
        
        Std.mtof(m) => o.freq;
        e.keyOn();
        tempo => now;
        (lfo.last() * 10) + m => o.freq;        
        e.keyOff();
    }
}





for ( 0 => int foo; foo < 4 ; foo++){

Note n;
n.quarter(57);

n.quarter(61);

n.quarter(57);

n.quarter(64);

n.quarter(62);

n.quarter(61);

n.quarter(59);

n.quarter(57);


}




 