using Microsoft.EntityFrameworkCore;
using NewsPortalApi_Entities.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Data.Concrete
{
    public class Context : DbContext
    {
        public Context(DbContextOptions<Context> options) : base(options)
        {
            
        }

        public DbSet<News>? News { get; set; }
        public DbSet<Author>? Authors { get; set; }
        public DbSet<Category>? Categories { get; set; }
        public DbSet<Comment>? Comments { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<News>()
              .HasOne(x => x.Category)
              .WithMany(x => x.News)
              .HasForeignKey(x => x.CategoryId);

            modelBuilder.Entity<News>()
              .HasOne(x => x.Author)
              .WithMany(x => x.News)
              .HasForeignKey(x => x.AuthorId);

            modelBuilder.Entity<Comment>()
              .HasOne(x => x.News)
              .WithMany(x => x.Comments)
              .HasForeignKey(x => x.NewsId);
        }
    }
}
