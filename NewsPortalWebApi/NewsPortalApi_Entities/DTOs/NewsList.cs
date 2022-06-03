using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Entities.DTOs
{
    public class NewsList
    {
        public int Id { get; set; }
        public string? Title { get; set; }
        public string? Body { get; set; }
        public string? Picture { get; set; }
        public int CategoryId { get; set; }
    }
}
