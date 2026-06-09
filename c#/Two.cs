namespace NString;

interface IPatternString<T>
{
    string Hello { get; set; }
    string Bye { get; set; }
    string BasePhrase(T obj, string body); // it has to be obj, why ??
}


class UsString : IPatternString<UsString>
{
    public string Hello { get; set; } = "hello";
    public string Bye { get; set; } = "bye";

    public string BasePhrase(UsString us, string body) {
        return us.Hello + " " + body + " " + us.Bye;
    }
}


class BrString(string text, string message) : IPatternString<BrString>
{
    public string Hello { get; set; } = text;
    public string Bye { get; set; } = message;

    public string BasePhrase(BrString br, string body) {
        return br.Hello + " " + body + br.Bye;
    }
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
