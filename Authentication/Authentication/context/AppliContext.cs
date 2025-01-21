using Authentication.Models;
using Microsoft.EntityFrameworkCore;

namespace Authentication.context;

public class AppliContext: DbContext
{
    protected AppliContext()
    {
    }

    public AppliContext(DbContextOptions options) : base(options)
    {
    }

    public DbSet<UsuarioModel> UsuarioModels { get; set; } = null!;
    
}