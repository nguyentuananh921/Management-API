using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebAPI.Data;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CarDriversController : ControllerBase
    {
        private readonly WebAPIContext _context;

        public CarDriversController(WebAPIContext context)
        {
            _context = context;
        }

        // GET: api/CarDrivers
        [HttpGet]
        public async Task<ActionResult<IEnumerable<CarDriver>>> GetCarDrivers()
        {
            //return await _context.CarDrivers.ToListAsync();
            
            return await _context.CarDrivers.Include(c => c.CarInfor).Include(c => c.PIDInfor).ToListAsync();
        }

        // GET: api/CarDrivers/5
        [HttpGet("{id}")]
        public async Task<ActionResult<CarDriver>> GetCarDriver(int id)
        {
            var carDriver = await _context.CarDrivers.FindAsync(id);

            if (carDriver == null)
            {
                return NotFound();
            }

            return carDriver;
        }

        // PUT: api/CarDrivers/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCarDriver(int id, CarDriver carDriver)
        {
            if (id != carDriver.PeopleID)
            {
                return BadRequest();
            }

            _context.Entry(carDriver).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CarDriverExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/CarDrivers
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CarDriver>> PostCarDriver(CarDriver carDriver)
        {
            _context.CarDrivers.Add(carDriver);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CarDriverExists(carDriver.PeopleID))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetCarDriver", new { id = carDriver.PeopleID }, carDriver);
        }

        // DELETE: api/CarDrivers/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCarDriver(int id)
        {
            var carDriver = await _context.CarDrivers.FindAsync(id);
            if (carDriver == null)
            {
                return NotFound();
            }

            _context.CarDrivers.Remove(carDriver);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CarDriverExists(int id)
        {
            return _context.CarDrivers.Any(e => e.PeopleID == id);
        }
    }
}
