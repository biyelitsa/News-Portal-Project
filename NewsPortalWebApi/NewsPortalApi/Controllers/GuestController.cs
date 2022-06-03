using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using NewsPortalApi.Models;
using NewsPortalApi_Data.UnitOfWork.Abstract;
using NewsPortalApi_Entities.DTOs;
using NewsPortalApi_Entities.Entities;

namespace NewsPortalApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GuestController : ControllerBase
    {
        IUOW _uow;
        Response _response;
        public GuestController(IUOW uow, Response response)
        {
            _uow = uow;
            _response = response;
        }

        [HttpGet]
        [Route("newslist")]
        public List<NewsList> List()
        {
            var plist = _uow._newsDal.GetNewsList();

            return plist;
        }

        [HttpGet]
        [Route("newslistbycatid")]
        public IQueryable<NewsList> ListByCatId(int id)
        {
            var plist = _uow._newsDal.GetNewsListByCatId(id);

            return plist;
        }

        [HttpGet]
        [Route("newsbyid")]
        public News NewsById(int id)
        {
            var plist = _uow._newsDal.Find(id);

            return plist;
        }

        [HttpPost]
        [Route("addnews")]
        public Response CreateNews(News news)
        {
            try
            {
                _uow._newsDal.Create(news);
                _uow.Commit();
                _uow.Dispose();
                _response.Message = "The news has created successfully.";
            }
            catch (Exception ex)
            {
                _response.Message = "News cannot be created!";
            }
            return _response;
        }

        [HttpDelete]
        [Route("deletenews")]
        public News DeleteNews(int id)
        {
            News news = _uow._newsDal.Find(id);
            _uow._newsDal.Delete(news);
            _uow.Commit();
            _uow.Dispose();
            return news;
        }

        [HttpPut]
        public Response UpdateNews(News news)
        {
            try
            {
                _uow._newsDal.Update(news);
                _uow.Commit();
                _uow.Dispose();
                _response.Message = "The product has updated successfully.";
            }
            catch (Exception ex)
            {
                _response.Message = "Product cannot updated!";
            }
            return _response;
        }

    }
}
