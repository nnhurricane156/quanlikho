using BusinessObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.DAO
{
	public class SupplierDAO
	{
		private static SupplierDAO _instance;
		private static readonly object _lock = new object();
		private readonly QuanLiKhoContext _context = new QuanLiKhoContext();

		public static SupplierDAO Instance
		{
			get
			{
				lock (_lock)
				{
					if (_instance == null)
					{
						_instance = new SupplierDAO();
					}
					return _instance;
				}
			}
		}

		public IEnumerable<Supplier> GetAll()
		{
			return _context.Suppliers.ToList();
		}

		public Supplier GetById(int id)
		{
			if (_context.Suppliers.FirstOrDefault(s => s.SupplierId == id) == null)
			{
				return _context.Suppliers.First();
			}
			else
			{
				return _context.Suppliers.FirstOrDefault(s => s.SupplierId == id);
			}
		}

		public Supplier GetByName(string name)
		{
				var supplier = _context.Suppliers.FirstOrDefault(s => s.SupplierName == name);
			if (supplier == null)
			{
				return null;
			}
			return supplier;
		}

		public void Add(Supplier item)
		{
			_context.Suppliers.Add(item);
			_context.SaveChanges();
		}

		public void Update(Supplier item)
		{
			_context.Suppliers.Update(item);
			_context.SaveChanges();
		}

        public void Delete(int supplierId)
        {
            var supplier = _context.Suppliers.Find(supplierId);
            if (supplier != null)
            {
                var relatedObjects = _context.Objectsses.Where(o => o.SupplierId == supplierId).ToList();

                foreach (var obj in relatedObjects)
                {
                    var relatedInputInfos = _context.InputInfos.Where(i => i.ObjectId == obj.ObjectId).ToList();

                    foreach (var inputInfo in relatedInputInfos)
                    {
                        var relatedOutputInfos = _context.OutputInfos.Where(o => o.InputInfoId == inputInfo.InputInfoId).ToList();
                        _context.OutputInfos.RemoveRange(relatedOutputInfos);
                    }

                    _context.InputInfos.RemoveRange(relatedInputInfos);
                }
                _context.Objectsses.RemoveRange(relatedObjects);
                _context.Suppliers.Remove(supplier);

                _context.SaveChanges();
            }
        }
    }
}
