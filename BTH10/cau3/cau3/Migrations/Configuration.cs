namespace cau3.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<cau3.PostManager>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            ContextKey = "cau3.PostManager";
        }

        protected override void Seed(cau3.PostManager context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data.
        }
    }
}
