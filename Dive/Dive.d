module Dive;

import std.stdio;

int main()
{
    File input = File("input.txt");
    auto commands = input.byRecord!(string,int)("%s %d");
    int hPos = 0;
    int depth = 0;
    int aim;
    foreach(command ; commands)
    {
        switch(command[0])
		{
            case "forward":
                hPos += command[1];
                depth += aim * command[1];
                break;
            case "down":
                aim += command[1];
                break;
            case "up":
                aim -= command[1];
                break;
            default:
                writeln("Unknown command");
                break;
		}
	}
    writeln(hPos * depth);
    readln();
    return 0;
}
