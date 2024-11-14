using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace BusinessObject;

public partial class QuanLiKhoContext : DbContext
{
    public QuanLiKhoContext()
    {
    }

    public QuanLiKhoContext(DbContextOptions<QuanLiKhoContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<Input> Inputs { get; set; }

    public virtual DbSet<InputInfo> InputInfos { get; set; }

    public virtual DbSet<Objectss> Objectsses { get; set; }

    public virtual DbSet<Output> Outputs { get; set; }

    public virtual DbSet<OutputInfo> OutputInfos { get; set; }

    public virtual DbSet<Supplier> Suppliers { get; set; }

    public virtual DbSet<Unit> Units { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=LAPTOP-ESUKRNUC; Initial Catalog=QuanLiKho;User ID=sa;Password=123;TrustServerCertificate=true;Trusted_Connection=SSPI;Encrypt=false");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.CustomerId).HasName("PK__Customer__A4AE64D8FF95E8C2");

            entity.Property(e => e.Address)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.CustomerName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Phone)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Input>(entity =>
        {
            entity.HasKey(e => e.InputId).HasName("PK__Inputs__BA6C6489DFBD9027");
        });

        modelBuilder.Entity<InputInfo>(entity =>
        {
            entity.HasKey(e => e.InputInfoId).HasName("PK__InputInf__A1D955BF65D98F09");

            entity.Property(e => e.Status)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Input).WithMany(p => p.InputInfos)
                .HasForeignKey(d => d.InputId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__InputInfo__Input__534D60F1");

            entity.HasOne(d => d.Object).WithMany(p => p.InputInfos)
                .HasForeignKey(d => d.ObjectId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__InputInfo__Objec__5441852A");
        });

        modelBuilder.Entity<Objectss>(entity =>
        {
            entity.HasKey(e => e.ObjectId).HasName("PK__Objectss__9A6192917995EF86");

            entity.ToTable("Objectss");

            entity.Property(e => e.ObjectName)
                .HasMaxLength(255)
                .IsUnicode(false);

            entity.HasOne(d => d.Supplier).WithMany(p => p.Objectsses)
                .HasForeignKey(d => d.SupplierId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Objectss__Suppli__4E88ABD4");

            entity.HasOne(d => d.Unit).WithMany(p => p.Objectsses)
                .HasForeignKey(d => d.UnitId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Objectss__UnitId__4D94879B");
        });

        modelBuilder.Entity<Output>(entity =>
        {
            entity.HasKey(e => e.OutputId).HasName("PK__Outputs__CE7609666F874491");
        });

        modelBuilder.Entity<OutputInfo>(entity =>
        {
            entity.HasKey(e => e.OutputInfoId).HasName("PK__OutputIn__3DDF6BF6A711BEB7");

            entity.Property(e => e.Status)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Customer).WithMany(p => p.OutputInfos)
                .HasForeignKey(d => d.CustomerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__OutputInf__Custo__5BE2A6F2");

            entity.HasOne(d => d.InputInfo).WithMany(p => p.OutputInfos)
                .HasForeignKey(d => d.InputInfoId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__OutputInf__Input__5DCAEF64");

            entity.HasOne(d => d.Object).WithMany(p => p.OutputInfos)
                .HasForeignKey(d => d.ObjectId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__OutputInf__Objec__5CD6CB2B");

            entity.HasOne(d => d.Output).WithMany(p => p.OutputInfos)
                .HasForeignKey(d => d.OutputId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__OutputInf__Outpu__5AEE82B9");
        });

        modelBuilder.Entity<Supplier>(entity =>
        {
            entity.HasKey(e => e.SupplierId).HasName("PK__Supplier__4BE666B4CAE02633");

            entity.Property(e => e.Address)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Phone)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.SupplierName)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Unit>(entity =>
        {
            entity.HasKey(e => e.UnitId).HasName("PK__Units__44F5ECB5A016D691");

            entity.Property(e => e.UnitName)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
