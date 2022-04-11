using Microsoft.AspNetCore.Mvc.Razor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EnterName.Factory
{
    public class MyViewLocationExpander : IViewLocationExpander
    {
        public IEnumerable<string> ExpandViewLocations(ViewLocationExpanderContext context,
               IEnumerable<string> viewLocations)
        {
            return new [] {
                "/Views/Emoh/{0}.cshtml",
                "/Views/Shared/{0}.cshtml"
            };            
        }
        public void PopulateValues(ViewLocationExpanderContext context)
        {
            //nothing to do here.  
        }
    }
}
