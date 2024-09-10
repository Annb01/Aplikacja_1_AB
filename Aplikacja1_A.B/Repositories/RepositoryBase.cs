using System.Data.SqlClient;

namespace Aplikacja1_A.B.Repositories;

public abstract class RepositoryBase
{
    private readonly string _connectionString;
    public RepositoryBase()
    {
        _connectionString = "Server=localhost;Database=Proj_AB;Integrated Security=True;";
    }
    protected SqlConnection GetConnection()
    {
        return new SqlConnection( _connectionString );
    }
}
