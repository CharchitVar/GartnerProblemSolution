
using GartnerCodingQuestion;
using Xunit;

public class testClass{

    [Fact]
    public void PassingExtension() {
        Assert.Equal("yaml", Program.CheckExtension("abc.yaml"));
    }

    [Fact]
    public void PassingExtensionForJson() {
        Assert.Equal("json", Program.CheckExtension("abc.json"));
    }
}