using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Entities.Entities
{
    public class News : Base
    {
        public News()
        {
            Categories = new HashSet<Category>();
            Comments = new HashSet<Comment>();
        }
        public string? Title { get; set; }
        public string? Body { get; set; }
        public int AuthorId { get; set; }
        public string? Picture { get; set; }
        public string? Video { get; set; }
        public int CategoryId { get; set; }

        [ForeignKey("CategoryId")]
        public Category? Category { get; set; }
        [ForeignKey("AuthorId")]
        public Author? Author { get; set; }

        public ICollection<Category>? Categories { get; set; }
        public ICollection<Comment> Comments { get; set; }
    }
}
