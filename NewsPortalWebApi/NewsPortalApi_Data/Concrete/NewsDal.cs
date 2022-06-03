using NewsPortalApi_Data.Abstract;
using NewsPortalApi_Entities.DTOs;
using NewsPortalApi_Entities.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Data.Concrete
{
    public class NewsDal : INewsDal
    {
        Context _db;
        public NewsDal(Context db)
        {
            _db = db;
        }

        public News Find(int id)
        {
            return _db.Set<News>().Find(id);
        }
        public bool Create(News ent)
        {
            _db.Set<News>().Add(ent);
            return true;
        }

        
        public bool Delete(News ent)
        {
            try
            {
                _db.Set<News>().Remove(ent);
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public List<NewsList> GetNewsList()
        {
            return _db.Set<News>().Select(x => new NewsList
            {
                Title= x.Title,
                Body= x.Body,
                Picture= x.Picture

            }).ToList();
        }

        

        public bool Update(News ent)
        {
            try
            {
                _db.Set<News>().Update(ent);
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public IQueryable<NewsList> GetNewsListByCatId(int id)
        {
            return _db.Set<News>().Select(x => new NewsList
            {
                Title = x.Title,
                Body = x.Body,
                Picture = x.Picture,
                CategoryId = x.CategoryId

            }).Where(p => p.CategoryId == id);
        }
    }
}
