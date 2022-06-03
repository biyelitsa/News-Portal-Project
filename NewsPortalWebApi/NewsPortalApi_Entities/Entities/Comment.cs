using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Entities.Entities
{
    public class Comment : Base
    {
        public string? GuestName { get; set; }
        public string? Body { get; set; }
        public int NewsId { get; set; }
        [ForeignKey("NewsId")]
        public News? News { get; set; }
    }
}
