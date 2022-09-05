using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {


            var player = new Player()
            {
                Name = "Mario",
                Level = 1,
                HealthPoints = 100,
                Statistics = new List<Statistic>()
                {
                    new Statistic()
                    {
                        Name = "Strength",
                        Points = 10
                    },

                    new Statistic()
                    {
                        Name = "Intelligence",
                        Points = 10
                    }
                }



            };

            player.Level++;

            //string playerSerialized = JsonConvert.SerializeObject(player);

            string playerSerialized = JsonSerializer.Serialize(player);
            File.WriteAllText(@"D:\JSON\playerSterialized1.json", playerSerialized);

            var playerDeserialize = JsonSerializer.Deserialize<Player>(playerSerialized);

            Console.WriteLine(player.Name );
            Console.WriteLine(player.Level );
            Console.WriteLine(player.HealthPoints );
            Console.WriteLine(player.Statistics);

        }
    }
}
