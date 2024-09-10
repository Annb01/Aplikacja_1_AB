namespace TestProject3
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestHashing()
        {
            string password = "Test123!";
            string hashed = BCrypt.Net.BCrypt.HashPassword(password);
            bool result = BCrypt.Net.BCrypt.Verify(password, hashed);

            Console.WriteLine("Hashed: " + hashed);
            Console.WriteLine("Verification result: " + result);
        }
    }
}