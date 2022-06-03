using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Entities.Entities
{
    public class Category : Base
    {
        public Category()
        {
            News = new HashSet<News>();
        }
        public string? CategoryName { get; set; }
        public ICollection<News>? News { get; set; }
    }
}
