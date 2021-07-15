﻿// <auto-generated />
using Emmares4.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using System;

namespace Emmares4.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    partial class ApplicationDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.2-rtm-10011")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Emmares4.Models.ApplicationUser", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AccessFailedCount");

                    b.Property<double>("Balance");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<DateTime>("DateAdded");

                    b.Property<DateTime>("DateModified");

                    b.Property<string>("Email")
                        .HasMaxLength(256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<string>("FirstName");

                    b.Property<string>("LastName");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<string>("UserName")
                        .HasMaxLength(256);

                    b.Property<string>("WalletAddress");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("Emmares4.Models.Campaign", b =>
                {
                    b.Property<Guid>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<double>("Budget");

                    b.Property<int>("ContentTypeID");

                    b.Property<DateTime>("DateAdded");

                    b.Property<DateTime>("DateModified");

                    b.Property<int>("GenreID");

                    b.Property<string>("Name");

                    b.Property<int?>("PublisherID");

                    b.Property<int>("Recipients");

                    b.Property<int>("RegionID");

                    b.Property<string>("Snippet");

                    b.HasKey("ID");

                    b.HasIndex("ContentTypeID");

                    b.HasIndex("GenreID");

                    b.HasIndex("PublisherID");

                    b.HasIndex("RegionID");

                    b.ToTable("Campaigns");
                });

            modelBuilder.Entity("Emmares4.Models.ContentType", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("DateAdded");

                    b.Property<DateTime>("DateModified");

                    b.Property<string>("Name");

                    b.HasKey("ID");

                    b.ToTable("ContentTypes");
                });

            modelBuilder.Entity("Emmares4.Models.Genre", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("DateAdded");

                    b.Property<DateTime>("DateModified");

                    b.Property<string>("Name");

                    b.HasKey("ID");

                    b.ToTable("Genres");
                });

            modelBuilder.Entity("Emmares4.Models.Provider", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("DateAdded");

                    b.Property<DateTime>("DateModified");

                    b.Property<string>("Name");

                    b.Property<string>("OwnerId");

                    b.HasKey("ID");

                    b.HasIndex("OwnerId")
                        .IsUnique()
                        .HasFilter("[OwnerId] IS NOT NULL");

                    b.ToTable("Providers");
                });

            modelBuilder.Entity("Emmares4.Models.Region", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Code");

                    b.Property<DateTime>("DateAdded");

                    b.Property<DateTime>("DateModified");

                    b.Property<string>("Name");

                    b.HasKey("ID");

                    b.ToTable("Regions");
                });

            modelBuilder.Entity("Emmares4.Models.Statistic", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<Guid?>("CampaignID");

                    b.Property<DateTime>("DateAdded");

                    b.Property<DateTime>("DateModified");

                    b.Property<int>("Rating");

                    b.Property<int>("Reward");

                    b.Property<string>("UserId");

                    b.HasKey("ID");

                    b.HasIndex("CampaignID");

                    b.HasIndex("UserId");

                    b.ToTable("Statistics");
                });

            modelBuilder.Entity("Emmares4.Models.Subscription", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("ContentTypeID");

                    b.Property<DateTime>("DateAdded");

                    b.Property<DateTime>("DateModified");

                    b.Property<int?>("GenreID");

                    b.Property<int?>("ProviderID");

                    b.Property<int?>("RegionID");

                    b.Property<string>("SubscriberId");

                    b.HasKey("ID");

                    b.HasIndex("ContentTypeID");

                    b.HasIndex("GenreID");

                    b.HasIndex("ProviderID");

                    b.HasIndex("RegionID");

                    b.HasIndex("SubscriberId");

                    b.ToTable("Subscriptions");
                });

            modelBuilder.Entity("Emmares4.Models.UserInterest", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("ContentTypeID");

                    b.Property<DateTime>("DateAdded");

                    b.Property<DateTime>("DateModified");

                    b.Property<string>("UserId");

                    b.HasKey("ID");

                    b.HasIndex("ContentTypeID");

                    b.HasIndex("UserId");

                    b.ToTable("UserInterests");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Name")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("RoleId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider");

                    b.Property<string>("ProviderKey");

                    b.Property<string>("ProviderDisplayName");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("RoleId");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("LoginProvider");

                    b.Property<string>("Name");

                    b.Property<string>("Value");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("Emmares4.Models.Campaign", b =>
                {
                    b.HasOne("Emmares4.Models.ContentType", "ContentType")
                        .WithMany("Compaigns")
                        .HasForeignKey("ContentTypeID")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Emmares4.Models.Genre", "Genre")
                        .WithMany("Compaigns")
                        .HasForeignKey("GenreID")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Emmares4.Models.Provider", "Publisher")
                        .WithMany("Campaigns")
                        .HasForeignKey("PublisherID");

                    b.HasOne("Emmares4.Models.Region", "Region")
                        .WithMany("Compaigns")
                        .HasForeignKey("RegionID")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Emmares4.Models.Provider", b =>
                {
                    b.HasOne("Emmares4.Models.ApplicationUser", "Owner")
                        .WithOne("Publisher")
                        .HasForeignKey("Emmares4.Models.Provider", "OwnerId");
                });

            modelBuilder.Entity("Emmares4.Models.Statistic", b =>
                {
                    b.HasOne("Emmares4.Models.Campaign", "Campaign")
                        .WithMany("Statistics")
                        .HasForeignKey("CampaignID");

                    b.HasOne("Emmares4.Models.ApplicationUser", "User")
                        .WithMany("Statistics")
                        .HasForeignKey("UserId");
                });

            modelBuilder.Entity("Emmares4.Models.Subscription", b =>
                {
                    b.HasOne("Emmares4.Models.ContentType", "ContentType")
                        .WithMany()
                        .HasForeignKey("ContentTypeID");

                    b.HasOne("Emmares4.Models.Genre", "Genre")
                        .WithMany()
                        .HasForeignKey("GenreID");

                    b.HasOne("Emmares4.Models.Provider", "Provider")
                        .WithMany("Subscribers")
                        .HasForeignKey("ProviderID");

                    b.HasOne("Emmares4.Models.Region", "Region")
                        .WithMany()
                        .HasForeignKey("RegionID");

                    b.HasOne("Emmares4.Models.ApplicationUser", "Subscriber")
                        .WithMany("Subscriptions")
                        .HasForeignKey("SubscriberId");
                });

            modelBuilder.Entity("Emmares4.Models.UserInterest", b =>
                {
                    b.HasOne("Emmares4.Models.ContentType", "ContentType")
                        .WithMany()
                        .HasForeignKey("ContentTypeID");

                    b.HasOne("Emmares4.Models.ApplicationUser", "User")
                        .WithMany("Interests")
                        .HasForeignKey("UserId");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("Emmares4.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("Emmares4.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Emmares4.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("Emmares4.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
