using System;
using System.IO;
using YamlDotNet.Serialization;
using System.Json;

namespace GartnerCodingQuestion
{
    class Program
    {
        static void Main(string[] args)
        {
            // Setup the input
            Console.WriteLine("Enter the File Name with Extension");
            var fileName = Console.ReadLine();
            string  extension = CheckExtension(fileName);
            if (extension == "yaml")
            {
                try
                {
                    var fileNameInstance = new StreamReader(".\\" + fileName);
                    var deserializer = new DeserializerBuilder().Build();
                    var yamlObject = deserializer.Deserialize(fileNameInstance);

                    var serializer = new SerializerBuilder()
                        .JsonCompatible()
                        .Build();

                    var json = serializer.Serialize(yamlObject);

                    var jsonArray = JsonArray.Parse(json);
                    foreach (var item in jsonArray)
                    {
                        Console.WriteLine("importing : " + item.ToString());
                    }
                }
                catch
                {
                    Console.WriteLine("Either is File not Found Or Something went wrong");
                }
            }
            else if (extension == "json")
            {
                try
                {
                    var json = File.ReadAllText(".\\" + fileName);
                    var jsonArray = JsonArray.Parse(json);
                    foreach (var item in jsonArray)
                    {
                        Console.WriteLine("importing : " + item.ToString());
                    }
                }

                catch
                {
                    Console.WriteLine("Either is File not Found Or Something went wrong");
                }
            }

            else
            {
                Console.WriteLine("The " + extension + " File Extension is Not Designed as of now");
            }
        }

       public static string CheckExtension(string fileName){
            string extension = System.IO.Path.GetExtension(fileName).Replace(".", "").ToLower();
            return extension;
        }
    }
}


