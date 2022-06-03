using NewsPortalApi_Entities.DTOs;
using NewsPortalApi_Entities.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Data.Abstract
{
    public interface INewsDal
    {
        List<NewsList> GetNewsList();
        IQueryable<NewsList> GetNewsListByCatId(int id);
        bool Create(News ent);
        bool Delete(News ent);
        bool Update(News ent);
        News Find(int id);
    }
}
