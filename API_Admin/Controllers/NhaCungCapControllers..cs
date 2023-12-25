using BUS.Interfaces;
using DataModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API_Admin.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NhaCungCapControllers : ControllerBase
    {
        private INhaCungCapBus _bus;

        public NhaCungCapControllers(INhaCungCapBus bus)
        {
            _bus = bus;
        }
        [Route("Get-NhaCungCap")]
        [HttpGet]
        public List<NhaCungCapModels> getDSncc()
        {
            return _bus.getNCC();
        }
        [Route("Get-NhaCungCap-by-id/{id}")]
        [HttpGet]
        public List<NhaCungCapModels> getNCCbyID(int id)
        {
            return _bus.getNCC();
        }
        [Route("Delete-NhaCungCap/{id}")]
        [HttpPost]
        public bool DelNCC(int id)
        {
            return _bus.DeleteNhaCungCap(id);
        }
        [Route("Create-NhaCungCap")]
        [HttpPost]
        public bool CreateNCC([FromBody] NhaCungCapModels model)
        {
            return _bus.CreateNhaCungCap(model);
        }
        [Route("Update-NhaCungCap")]
        [HttpPost]
        public bool UpdateNCC([FromBody] NhaCungCapModels model)
        {
            return _bus.UpdateNhaCungCap(model);
        }
    }
}
