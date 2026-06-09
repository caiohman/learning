namespace NString;

interface IPatternString
{
    string Hello { get; set; }
    string Bye { get; set; }
}


class UsString : IPatternString
{
    public string Hello { get; set; } = "hello";
    public string Bye { get; set; } = "bye";
}


class BrString(string text, string message) : IPatternString
{
    public string Hello { get; set; } = text;
    public string Bye { get; set; } = message;
}

class App
{
    public static void Main() {
        var brString = new BrString("oi", "tchau");
        var usString = new UsString();
        Console.WriteLine(brString.Hello);
        Console.WriteLine(brString.Bye);
        Console.WriteLine(usString.Hello);
        Console.WriteLine(usString.Bye);
    }
}
