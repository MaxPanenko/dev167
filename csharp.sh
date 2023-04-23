using System;
using MongoDB.Driver;
using System.Linq;
using MongoDB.Bson;


namespace Metanit
{
    public class Program
    {
        static void Main(string[] args)
        {
            MongoClient dbClient = new MongoClient("mongodb://localhost:27017");

            var database = dbClient.GetDatabase("sample_training");
            var collection = database.GetCollection<BsonDocument>("grades");
            var document = new BsonDocument
            {
                { "student_id", 5000 },
                { "scores", new BsonArray
                    {
                    new BsonDocument{ {"type", "exam"}, {"score", 55.12334193287023 } },
                    new BsonDocument{ {"type", "quiz"}, {"score", 23.92381029342834 } },
                    new BsonDocument{ {"type", "homework"}, {"score", 99.97929384290324 } },
                    new BsonDocument{ {"type", "homework"}, {"score", 82.12931030513218 } }
                    }
                },
                { "class_id", 720}
            };
            var test = Builders<BsonDocument>.Filter.Eq("student_id",5000);
            var documentStudent = collection.Find(test).FirstOrDefault();
            Console.WriteLine(documentStudent.ToString());



        }
    }
}


