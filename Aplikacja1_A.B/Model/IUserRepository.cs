using System.Net;

namespace Aplikacja1_A.B.Model;

public interface IUserRepository
{

    bool AuthenticateUser(NetworkCredential credential, out UserModel user);

    void Add(UserModel userModel);
    void Edit(UserModel userModel);
    void Remove(int id);
    UserModel GetById(int id);
    UserModel GetByUsername(string username);
    IEnumerable<UserModel> GetAll();
    bool UserExists(string username);

}
