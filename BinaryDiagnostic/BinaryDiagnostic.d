module BinaryDiagnostic;

import std.stdio;
import std.string;
import std.file;
import std.conv;
import std.range;
import std.format;
import std.algorithm.iteration;
void problemOne()
{
    auto input = readText("input.txt").splitLines();
    //writeln(1 << 2);
    
    uint gammaRate = 0;
    uint epsilon = 0;
    foreach(i; 12.iota)
	{
        auto bits = frontTransversal(input.map!(s => s.drop(i)));
       
        int greatest = (count(bits,'1') > count(bits,'0')) ? 1 : 0;
        
        gammaRate <<= 1;
        gammaRate |= greatest;
        epsilon <<=1;
        epsilon |= !greatest;

	}
    writeln("Gamma rate: ", gammaRate);
    writeln("Epsilon rate: ", epsilon);
    writeln("Answer:", gammaRate * epsilon);

}


int main()
{
    writeln("Hello D World!\n");
    problemOne();
    readln();
    return 0;
}
