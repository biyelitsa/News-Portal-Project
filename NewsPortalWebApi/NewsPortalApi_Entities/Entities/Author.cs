using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Entities.Entities
{
    public class Author : Base
    {
        public Author()
        {
            News = new HashSet<News>();
        }
        public string? AuthorFirstName { get; set; }
        public string? AuthorLastName { get; set; }
        public ICollection<News>? News { get; set; }
    }
}
