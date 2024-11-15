﻿using BusinessObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.DAO
{
	public class CustomerDAO
	{
		private static CustomerDAO _instance;
		private static readonly object _lock = new object();
		private readonly QuanLiKhoContext _context = new QuanLiKhoContext();

		public static CustomerDAO Instance
		{
			get
			{
				lock (_lock)
				{
					if (_instance == null)
					{
						_instance = new CustomerDAO();
					}
					return _instance;
				}
			}
		}

		public IEnumerable<Customer> GetAll()
		{
			return _context.Customers.ToList();
		}

		public Customer GetById(int id)
		{
			if (_context.Customers.FirstOrDefault(s => s.CustomerId == id) == null)
			{
				return _context.Customers.First();
			}
			else
			{
				return _context.Customers.FirstOrDefault(s => s.CustomerId == id);
			}
		}

		public void Add(Customer item)
		{
			_context.Customers.Add(item);
			_context.SaveChanges();
		}

		public void Update(Customer item)
		{
			_context.Customers.Update(item);
			_context.SaveChanges();
		}

		public void Delete(int id)
		{
			var item = _context.Customers.Find(id);
			if (item != null && item.CustomerName.Equals("(no supplier)"))
			{
				return;
			}
			if (item != null)
			{
				item.CustomerName = "(no supplier)";
				_context.Customers.Update(item);
				_context.SaveChanges();
			}
		}
	}
}
