.class public abstract Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;
.super Lcom/android/settings/applications/AppLister;
.source "AppWithAdminGrantedPermissionsLister.java"


# instance fields
.field private final mDevicePolicyManager:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

.field private final mPackageManagerService:Lcom/android/settings/applications/IPackageManagerWrapper;

.field private final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Landroid/os/UserManager;)V
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "packageManager"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p3, "packageManagerService"    # Lcom/android/settings/applications/IPackageManagerWrapper;
    .param p4, "devicePolicyManager"    # Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;
    .param p5, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 35
    invoke-direct {p0, p2, p5}, Lcom/android/settings/applications/AppLister;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/os/UserManager;)V

    .line 36
    iput-object p1, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPermissions:[Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPackageManagerService:Lcom/android/settings/applications/IPackageManagerWrapper;

    .line 38
    iput-object p4, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mDevicePolicyManager:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .line 39
    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPermissions:[Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mDevicePolicyManager:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    iget-object v2, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPackageManagerService:Lcom/android/settings/applications/IPackageManagerWrapper;

    .line 43
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->includeInCount([Ljava/lang/String;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
