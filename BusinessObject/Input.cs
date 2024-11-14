using System;
using System.Collections.Generic;

namespace BusinessObject;

public partial class Input
{
    public int InputId { get; set; }

    public DateOnly InputDate { get; set; } = DateOnly.FromDateTime(DateTime.Now);

	public virtual ICollection<InputInfo> InputInfos { get; set; } = new List<InputInfo>();
}
