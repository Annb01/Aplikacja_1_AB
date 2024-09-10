using Aplikacja1_A.B.Model;
using System.Data.SqlClient;
using System.Net;

namespace Aplikacja1_A.B.Repositories;

public class UserRepository : RepositoryBase, IUserRepository
{
    public void Add(UserModel userModel)
    {
        using (var connection = GetConnection())
        {
            connection.Open();
            using (var command = new SqlCommand("INSERT INTO [User] (Username, Password, Name, LastName, Email) VALUES (@Username, @Password, @Name, @LastName, @Email)", connection))
            {
                command.Parameters.AddWithValue("@Username", userModel.UserName);
                var hashedPassword = BCrypt.Net.BCrypt.HashPassword(userModel.Password);
                command.Parameters.AddWithValue("@Password", hashedPassword);
                command.Parameters.AddWithValue("@Name", userModel.Name);
                command.Parameters.AddWithValue("@LastName", userModel.LastName);
                command.Parameters.AddWithValue("@Email", userModel.Email);
                command.ExecuteNonQuery();
            }
        }

    }

    public bool AuthenticateUser(NetworkCredential credential, out UserModel user)
    {
        user = null;
        using (var connection = GetConnection())
        {
            connection.Open();
            using (var command = new SqlCommand("SELECT * FROM [User] WHERE username = @username", connection))
            {
                command.Parameters.AddWithValue("@username", credential.UserName);

                using (var reader = command.ExecuteReader())
                {
                    if (reader.Read()) //if true
                    {
                        bool isValidPassword = BCrypt.Net.BCrypt.Verify(credential.Password, reader["Password"].ToString());
                        if (isValidPassword)
                        {
                            user = new UserModel
                            {
                                Id = reader["Id"].ToString(),
                                UserName = reader["Username"].ToString(),
                                Email = reader["Email"].ToString(),
                                Name = reader["Name"].ToString(),
                                LastName = reader["LastName"].ToString()
                            };
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public bool UserExists(string username) //signup
    {
        using (var connection = GetConnection())
        {
            connection.Open();
            using (var command = new SqlCommand("SELECT COUNT(1) FROM [User] WHERE username = @username", connection))
            {
                command.Parameters.AddWithValue("@username", username);
                int userCount = (int)command.ExecuteScalar();
                return userCount > 0;
            }
        }
    }
    public void Edit(UserModel userModel)
    {
        throw new NotImplementedException();
    }

    public IEnumerable<UserModel> GetAll()
    {
        throw new NotImplementedException();
    }

    public UserModel GetById(int id)
    {
        throw new NotImplementedException();
    }

    public UserModel GetByUsername(string username)
    {
        throw new NotImplementedException();
    }

    public void Remove(int id)
    {
        throw new NotImplementedException();
    }
}
