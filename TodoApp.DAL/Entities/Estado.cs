using System;
using System.Collections.Generic;

namespace TodoApp.DAL.Entities;

public partial class Estado
{
    public int Id { get; set; }

    public string NombreEstado { get; set; } = null!;
}
