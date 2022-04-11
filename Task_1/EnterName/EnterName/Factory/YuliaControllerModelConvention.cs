using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.ApplicationModels;

namespace EnterName.Factory
{
    public class YuliaControllerModelConvention : IControllerModelConvention
    {
        public void Apply(ControllerModel controller)
        {
            controller.ControllerName = controller.ControllerName.Replace("ControllerYulia", "");
        }
    }
}
