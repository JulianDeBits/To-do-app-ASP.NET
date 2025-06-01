using System;
using System.Collections.Generic;

namespace TodoApp.DAL.Entities;

public partial class Tarea
{
    public int Id { get; set; }

    public string Titulo { get; set; } = null!;

    public string? Descripcion { get; set; }

    public int? CategoriaId { get; set; }

    public int? UsuarioId { get; set; }

    public int? EstadoId { get; set; }

    public DateTime FechaCreacion { get; set; }

    public DateTime? FechaVencimiento { get; set; }

    public virtual Usuario? Usuario { get; set; }
}
