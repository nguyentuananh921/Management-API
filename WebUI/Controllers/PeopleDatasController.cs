using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebUI.Data;
using WebUI.Models;
using Newtonsoft.Json;
using System.Text;
using Microsoft.Extensions.Configuration;
using System.Net.Http.Json;

namespace WebUI.Controllers
{
    public class PeopleDatasController : Controller
    {
        private readonly ApplicationDbContext _context;

        private readonly ClientAPI _api = new ClientAPI();

        //public PeopleDatasController(ApplicationDbContext context, IConfiguration configuration)
        //https://www.c-sharpcorner.com/article/consuming-web-api-in-net-core-3-1-mvc/
        public PeopleDatasController(ApplicationDbContext context)        
        {            
            _context = context;
            //_Configure = configuration;
            //apiBaseUrl = _Configure.GetValue<string>("WebAPIBaseUrl");
            _api.Initial();
        }

        // GET: PeopleDatas
        public async Task<IActionResult> Index()
        {
            List<PeopleData> peopleDatas = new List<PeopleData>();
            //var apiResponse =_api
            //https://www.youtube.com/watch?v=bgsROO8kDh0&t=917s

            using (var httpClient = _api.Initial())
            {
                using (var response = await httpClient.GetAsync("api/Peoples"))
                {
                    string apiResonse = await response.Content.ReadAsStringAsync();
                    peopleDatas = JsonConvert.DeserializeObject<List<PeopleData>>(apiResonse);
                }
            }
            //return View(await _context.PeopleData.ToListAsync());
            return View(peopleDatas);
        }

        // GET: PeopleDatas/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            var peopleDetail = new PeopleData();
            if (id == null)
            {
                return NotFound();
            }

            using (var httpClient = _api.Initial())
            {
                using (var response = await httpClient.GetAsync("api/Peoples/" + id))
                {
                    if (response.StatusCode == System.Net.HttpStatusCode.OK)
                    {
                        string apiResonse = await response.Content.ReadAsStringAsync();
                        peopleDetail = JsonConvert.DeserializeObject<PeopleData>(apiResonse);
                    }
                    else
                    {
                        ViewBag.StatusCode = response.StatusCode;
                    }
                }
            }
            return View(peopleDetail);
        }
        // GET: PeopleDatas/Create
        public IActionResult Create()
        {
            return View();
        }
        // POST: PeopleDatas/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(PeopleData peopleData)
        {
            HttpClient client = _api.Initial();
            //HTTP POST
            PeopleData newAdded = new PeopleData();
            using (var response = await client.PostAsJsonAsync<PeopleData>("api/Peoples", peopleData)) 
            {
                string apiResponse = await response.Content.ReadAsStringAsync();
                newAdded = JsonConvert.DeserializeObject<PeopleData>(apiResponse);

            }   
            return View("Edit",newAdded);
        }

        //// POST: PeopleDatas/Create
        //// To protect from overposting attacks, enable the specific properties you want to bind to.
        //// For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public async Task<IActionResult> Create([Bind("PeopleID,PeopleName,PeopleFrom,PeopleGende,PeopleDateOfBirth,PeopleAddress,PeoplePIDNumber,PeoplePIDDate,PeoplePIDPlace,PeoplePIDValidUntil,JoinDate,PeopleImagePath")] PeopleData peopleData)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        _context.Add(peopleData);
        //        await _context.SaveChangesAsync();
        //        return RedirectToAction(nameof(Index));
        //    }
        //    return View(peopleData);
        //}

        // GET: PeopleDatas/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            var peopleData = new PeopleData();
            if (id == null)
            {
                return NotFound();
            }
            using (var httpClient = _api.Initial())
            {
                using (var response = await httpClient.GetAsync("api/Peoples/" + id))
                {
                    if (response.StatusCode == System.Net.HttpStatusCode.OK)
                    {
                        string apiResonse = await response.Content.ReadAsStringAsync();
                        peopleData = JsonConvert.DeserializeObject<PeopleData>(apiResonse);
                    }
                    else
                    {
                        ViewBag.StatusCode = response.StatusCode;
                    }
                }
            }
            return View(peopleData);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("PeopleID,PeopleName,PeopleFrom,PeopleGende,PeopleDateOfBirth,PeopleAddress,PeoplePIDNumber,PeoplePIDDate,PeoplePIDPlace,PeoplePIDValidUntil,JoinDate,PeopleImagePath")] PeopleData peopleData)
        {
            if (id != peopleData.PeopleID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                using (var httpClient = _api.Initial())
                {
                    StringContent content = new StringContent(JsonConvert.SerializeObject(peopleData), Encoding.UTF8, "application/json");
                    //string endpoint = apiBaseUrl + "/login";

                    using (var response = await httpClient.PutAsync("api/Peoples/" + id, content))
                    {

                        if (response.StatusCode == System.Net.HttpStatusCode.OK)
                        {
                            string apiResonse = await response.Content.ReadAsStringAsync();
                            peopleData = JsonConvert.DeserializeObject<PeopleData>(apiResonse);
                        }
                        else
                        {
                            ViewBag.StatusCode = response.StatusCode;
                        }
                    }
                }
            }
            //return View(peopleData);
            return View(); //Index
        }

        // POST: PeopleDatas/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public async Task<IActionResult> Edit(int id, [Bind("PeopleID,PeopleName,PeopleFrom,PeopleGende,PeopleDateOfBirth,PeopleAddress,PeoplePIDNumber,PeoplePIDDate,PeoplePIDPlace,PeoplePIDValidUntil,JoinDate,PeopleImagePath")] PeopleData peopleData)
        //{
        //    if (id != peopleData.PeopleID)
        //    {
        //        return NotFound();
        //    }

        //    if (ModelState.IsValid)
        //    {
        //        try
        //        {
        //            _context.Update(peopleData);
        //            await _context.SaveChangesAsync();
        //        }
        //        catch (DbUpdateConcurrencyException)
        //        {
        //            if (!PeopleDataExists(peopleData.PeopleID))
        //            {
        //                return NotFound();
        //            }
        //            else
        //            {
        //                throw;
        //            }
        //        }
        //        return RedirectToAction(nameof(Index));
        //    }
        //    return View(peopleData);
        //}

        //POST: PeopleDatas/Delete/5
        //[HttpPost, ActionName("Delete")]

        //Only Need HTTP GET Method of Delete no need httpPost
        public async Task<IActionResult> Delete(int? id)
        {
            //var peopleData = new PeopleData();
            if (id == null)
            {
                return NotFound();
            }
            var httpClient = _api.Initial();
            var response = await httpClient.DeleteAsync("api/Peoples/" + id);
            //return View("Index");

            return RedirectToAction("Index");
            //using (var httpClient = _api.Initial())
            //{
            //    using (var response = await httpClient.DeleteAsync("api/Peoples/" + id))
            //    {
            //        if (response.StatusCode == System.Net.HttpStatusCode.OK)
            //        {
            //            //string apiResonse = await response.Content.ReadAsStringAsync();
            //            //peopleData = JsonConvert.DeserializeObject<PeopleData>(apiResonse);
            //        }
            //        else
            //        {
            //            ViewBag.StatusCode = response.StatusCode;
            //        }
            //    }
            //}
            
        }

        // GET: PeopleDatas/Delete/5
        //public async Task<IActionResult> Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return NotFound();
        //    }

        //    var peopleData = await _context.PeopleData
        //        .FirstOrDefaultAsync(m => m.PeopleID == id);
        //    if (peopleData == null)
        //    {
        //        return NotFound();
        //    }

        //    return View(peopleData);
        //}

        // POST: PeopleDatas/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public async Task<IActionResult> DeleteConfirmed(int id)
        //{
        //    var peopleData = await _context.PeopleData.FindAsync(id);
        //    _context.PeopleData.Remove(peopleData);
        //    await _context.SaveChangesAsync();
        //    return RedirectToAction(nameof(Index));
        //}

        //private bool PeopleDataExists(int id)
        //{
        //    return _context.PeopleData.Any(e => e.PeopleID == id);
        //}
    }
}
