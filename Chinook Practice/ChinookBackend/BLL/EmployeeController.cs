using ChinookBackend.DAL;
using ChinookBackend.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChinookBackend.BLL
{
    [DataObject]
    public class EmployeeController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Employee> ListAllEmployees()
        {
            using(var context = new ChinookContext())
            {
                return context
                    .Employees
                    .ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AddEmployee(Employee info)
        {
            using(var context = new ChinookContext())
            {
                context.Employees.Add(info);
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public void UpdateEmployee(Employee info)
        {
            using(var context = new ChinookContext())
            {
                DbEntityEntry<Employee> existing = context.Entry(info);
                existing.State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void DeleteEmployee(Employee info)
        {
            using(var context = new ChinookContext())
            {
                var existing = context.Employees.Find(info.EmployeeId);
                context.Employees.Remove(existing);
                context.SaveChanges();
            }
        }
    }
}
