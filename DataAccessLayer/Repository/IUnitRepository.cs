using BusinessObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Repository
{
	public interface IUnitRepository
	{
		IEnumerable<Unit> GetAllUnits();
		Unit GetUnitById(int unitId);
		Unit GetByName(string name);
		void AddUnit(Unit unit);
		void UpdateUnit(Unit unit);
		void DeleteUnit(int unitId);
	}
}
