module SonarSweep;

import std.stdio;
import std.conv;
import std.algorithm.iteration : map,sum,filter;
import std.range;
import std.string;
import std.file;
import std.range.primitives;
int main()
{

    auto depths = readText("input.txt").splitLines.slide(3).map!(w =>  w.map!(n=>to!int(n)).sum() ).slide(2).filter!(a => a[1] > a[0]).walkLength;
    writeln("\nNum times increased: ", depths);
    readln();
    return 0;
}
