﻿using System;
using System.Collections.Generic;

namespace TodoApp.DAL.Entities;

public partial class Categoria
{
    public int Id { get; set; }

    public string Nombre { get; set; } = null!;

    public string? Descripcion { get; set; }

    public DateTime FechaCreacion { get; set; }
}
