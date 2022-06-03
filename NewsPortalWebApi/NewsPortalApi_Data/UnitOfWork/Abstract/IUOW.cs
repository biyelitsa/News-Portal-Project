using Microsoft.AspNetCore.Identity;
using NewsPortalApi_Data.Abstract;
using NewsPortalApi_Data.Concrete;
using NewsPortalApi_Entities.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsPortalApi_Data.UnitOfWork.Abstract
{
    public interface IUOW
    {
        UserManager<IdentityUser> _userManager { get; set; }
        RoleManager<IdentityRole> _roleManager { get; set; }
        INewsDal _newsDal { get; set; }

        void Commit();
        void Dispose();

    }
}
