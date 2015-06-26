using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(bubble.webApp.Startup))]
namespace bubble.webApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
