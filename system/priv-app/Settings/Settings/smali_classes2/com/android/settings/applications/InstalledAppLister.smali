.class public abstract Lcom/android/settings/applications/InstalledAppLister;
.super Lcom/android/settings/applications/AppLister;
.source "InstalledAppLister.java"


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/os/UserManager;)V
    .locals 0
    .param p1, "packageManager"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppLister;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/os/UserManager;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppLister;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/android/settings/applications/InstalledAppCounter;->includeInCount(ILcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
