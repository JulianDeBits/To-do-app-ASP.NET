using System;
using System.Collections.Generic;

namespace TodoApp.DAL.Entities;

public partial class Usuario
{
    public int Id { get; set; }

    public string NombreUsuario { get; set; } = null!;

    public string ContrasenaHash { get; set; } = null!;

    public string Correo { get; set; } = null!;

    public DateTime FechaCreacion { get; set; }

    public virtual ICollection<Tarea> Tareas { get; set; } = new List<Tarea>();
}
