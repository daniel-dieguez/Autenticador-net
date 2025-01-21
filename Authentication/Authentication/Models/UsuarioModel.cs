using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace Authentication.Models;

[Table("autentication")]
public class UsuarioModel
{
    
    [Key]
    [Column("id_usuario")]
    public long id_usuario { get; set; }
    [Column("correo_usuario")]
    public string correo_usuario { get; set; }
    
}