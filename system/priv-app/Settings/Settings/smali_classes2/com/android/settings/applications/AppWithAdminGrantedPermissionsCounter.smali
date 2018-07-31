.class public abstract Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;
.super Lcom/android/settings/applications/AppCounter;
.source "AppWithAdminGrantedPermissionsCounter.java"


# instance fields
.field private final mDevicePolicyManager:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

.field private final mPackageManagerService:Lcom/android/settings/applications/IPackageManagerWrapper;

.field private final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "packageManager"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p4, "packageManagerService"    # Lcom/android/settings/applications/IPackageManagerWrapper;
    .param p5, "devicePolicyManager"    # Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .prologue
    .line 40
    invoke-direct {p0, p1, p3}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPermissions:[Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPackageManagerService:Lcom/android/settings/applications/IPackageManagerWrapper;

    .line 43
    iput-object p5, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mDevicePolicyManager:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .line 44
    return-void
.end method

.method public static includeInCount([Ljava/lang/String;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p0, "permissions"    # [Ljava/lang/String;
    .param p1, "devicePolicyManager"    # Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;
    .param p2, "packageManager"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p3, "packageManagerService"    # Lcom/android/settings/applications/IPackageManagerWrapper;
    .param p4, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 55
    iget v2, p4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_2

    .line 58
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p0, v2

    .line 59
    .local v1, "permission":Ljava/lang/String;
    iget-object v5, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 61
    return v7

    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    return v3

    .line 69
    :cond_2
    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 70
    new-instance v4, Landroid/os/UserHandle;

    iget v5, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 69
    invoke-interface {p2, v2, v4}, Lcom/android/settings/applications/PackageManagerWrapper;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 72
    return v3

    .line 75
    :cond_3
    :try_start_0
    array-length v4, p0

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v1, p0, v2

    .line 76
    .restart local v1    # "permission":Ljava/lang/String;
    iget v5, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p3, v1, v5}, Lcom/android/settings/applications/IPackageManagerWrapper;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_4

    .line 78
    return v7

    .line 75
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "permission":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    :cond_5
    return v3
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPermissions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mDevicePolicyManager:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    iget-object v2, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPackageManagerService:Lcom/android/settings/applications/IPackageManagerWrapper;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->includeInCount([Ljava/lang/String;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
