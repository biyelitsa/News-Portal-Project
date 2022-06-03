using Microsoft.AspNetCore.Identity;
using NewsPortalApi_Data.Abstract;
using NewsPortalApi_Data.Concrete;
using NewsPortalApi_Data.UnitOfWork.Abstract;
using NewsPortalApi_Entities.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Data.UnitOfWork.Concrete
{
    public class UOW : IUOW
    {
        Context _db;

        public UOW(Context db, UserManager<IdentityUser> userManager, RoleManager<IdentityRole> roleManager, INewsDal newsDal)
        {
            _db = db;
            _userManager = userManager;
            _roleManager = roleManager;
            _newsDal = newsDal;
        }

        public UserManager<IdentityUser> _userManager { get; set; }
        public RoleManager<IdentityRole> _roleManager { get; set; }
        public INewsDal _newsDal { get; set; }

        public void Commit()
        {
            _db.SaveChanges();
        }

        public void Dispose()
        {
            _db.Dispose();
        }
    }
}
