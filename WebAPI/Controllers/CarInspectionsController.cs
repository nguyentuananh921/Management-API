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
    public class CarInspectionsController : ControllerBase
    {
        private readonly WebAPIContext _context;

        public CarInspectionsController(WebAPIContext context)
        {
            _context = context;
        }

        // GET: api/CarInspections
        [HttpGet]
        public async Task<ActionResult<IEnumerable<CarInspection>>> GetCarInspections()
        {
            return await _context.CarInspections.ToListAsync();
        }

        // GET: api/CarInspections/5
        [HttpGet("{id}")]
        public async Task<ActionResult<CarInspection>> GetCarInspection(int id)
        {
            var carInspection = await _context.CarInspections.FindAsync(id);

            if (carInspection == null)
            {
                return NotFound();
            }

            return carInspection;
        }

        // PUT: api/CarInspections/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCarInspection(int id, CarInspection carInspection)
        {
            if (id != carInspection.CarInspectionID)
            {
                return BadRequest();
            }

            _context.Entry(carInspection).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CarInspectionExists(id))
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

        // POST: api/CarInspections
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CarInspection>> PostCarInspection(CarInspection carInspection)
        {
            _context.CarInspections.Add(carInspection);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCarInspection", new { id = carInspection.CarInspectionID }, carInspection);
        }

        // DELETE: api/CarInspections/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCarInspection(int id)
        {
            var carInspection = await _context.CarInspections.FindAsync(id);
            if (carInspection == null)
            {
                return NotFound();
            }

            _context.CarInspections.Remove(carInspection);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CarInspectionExists(int id)
        {
            return _context.CarInspections.Any(e => e.CarInspectionID == id);
        }
    }
}
