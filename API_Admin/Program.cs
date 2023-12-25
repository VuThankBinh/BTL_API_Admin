using BUS;
using BUS.Interfaces;
using DAL;
using DAL.Helper.Interfaces;
using DAL.Interfaces;
using DAL.Helper;
using DataModel;
using System.IO;
//using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using API_Admin.Controllers;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll", builder => builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());
});
// Add services to the container.
builder.Services.AddTransient<IDatabaseHelper, DatabaseHelper>();
builder.Services.AddTransient<ISanPhamRepository, SanPhamRepository>();
builder.Services.AddTransient<ISanPhamBus, SanPhamBus>();
builder.Services.AddTransient<ILoaiSanPhamBus, LoaiSanPhamBus>();
builder.Services.AddTransient<ILoaiSanPhamRepository, LoaiSanPhamRepository>();
builder.Services.AddTransient<IThuongHieuBus, ThuongHieuBus>();
builder.Services.AddTransient<IThuongHieuRepository, ThuongHieuRepository>();
builder.Services.AddTransient<IThongKeBus, ThongKeBus>();
builder.Services.AddTransient<IThongKeRepository, ThongKeRepository>();
builder.Services.AddTransient<IBanHangBus, BanHangBus>();
builder.Services.AddTransient<IBanHangRepository, BanHangRepository>();
builder.Services.AddTransient<INhaCungCapBus, NhanCungCapBus>();
builder.Services.AddTransient<INhaCungCapRepository, NhaCungCapRepository>();
builder.Services.AddTransient<INhapHangBus, NhapHangBus>();
builder.Services.AddTransient<INhanHangRepository, NhapHangRepository>();
builder.Services.AddTransient<ITools,Tools>();
// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll", builder => builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
app.UseRouting();
app.UseCors(x => x
    .AllowAnyOrigin()
    .AllowAnyMethod()
    .AllowAnyHeader());
app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
