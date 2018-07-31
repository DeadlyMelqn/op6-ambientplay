.class public Lcom/android/settings/applications/AppStateInstallAppsBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateInstallAppsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateInstallAppsBridge$1;,
        Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    }
.end annotation


# static fields
.field static final FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mIpm:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    .line 183
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 54
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 55
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    .line 56
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 57
    return-void
.end method

.method private getAppOpMode(IILjava/lang/String;)I
    .locals 1
    .param p1, "appOpCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private hasPermission(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 86
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    .local v1, "result":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 88
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "PackageManager dead. Cannot get permission info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2
.end method

.method private hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "packages":[Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 78
    .end local v1    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "exc":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PackageManager dead. Cannot get permission info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x0

    return v2
.end method

.method private isSystemApp(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 102
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v5, 0x49

    .line 108
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;-><init>()V

    .line 110
    .local v0, "appState":Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    const-string/jumbo v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 109
    invoke-direct {p0, v3, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->permissionRequested:Z

    .line 111
    const-string/jumbo v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-direct {p0, v3, p2}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->hasPermission(Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->permissionGranted:Z

    .line 113
    invoke-direct {p0, v5, p2, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    .line 117
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 119
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 118
    const/16 v4, 0x3e7

    invoke-static {v4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 120
    .local v2, "parellelAppUId":I
    invoke-direct {p0, v5, v2, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result v1

    .line 122
    .local v1, "parellelAppMode":I
    iget v3, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    if-eq v3, v1, :cond_0

    .line 123
    iget v3, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 124
    iget-object v3, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5, p2, p1, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 126
    invoke-direct {p0, v5, p2, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    .line 137
    .end local v1    # "parellelAppMode":I
    .end local v2    # "parellelAppUId":I
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->isSystemApp(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isSystemApp:Z

    .line 140
    return-object v0

    .line 129
    .restart local v1    # "parellelAppMode":I
    .restart local v2    # "parellelAppUId":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 130
    iget v4, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    .line 129
    invoke-virtual {v3, v5, v2, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method protected loadAllExtraInfo()V
    .locals 5

    .prologue
    .line 67
    iget-object v3, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 70
    .local v1, "currentEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "currentEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 62
    return-void
.end method
