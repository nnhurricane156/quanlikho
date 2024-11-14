using System;
using System.Collections.Generic;

namespace BusinessObject;

public partial class Output
{
    public int OutputId { get; set; }

    public DateOnly OutputDate { get; set; } = DateOnly.FromDateTime(DateTime.Now);

	public virtual ICollection<OutputInfo> OutputInfos { get; set; } = new List<OutputInfo>();
}
