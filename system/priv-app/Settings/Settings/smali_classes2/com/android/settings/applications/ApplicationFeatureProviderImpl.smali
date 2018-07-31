.class public Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ApplicationFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;,
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;,
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;,
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

.field private final mPm:Lcom/android/settings/applications/PackageManagerWrapper;

.field private final mPms:Lcom/android/settings/applications/IPackageManagerWrapper;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p3, "pms"    # Lcom/android/settings/applications/IPackageManagerWrapper;
    .param p4, "dpm"    # Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 51
    iput-object p3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Lcom/android/settings/applications/IPackageManagerWrapper;

    .line 52
    iput-object p4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    .line 54
    return-void
.end method


# virtual methods
.method public calculateNumberOfAppsWithAdminGrantedPermissions([Ljava/lang/String;ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 7
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "async"    # Z
    .param p3, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    .prologue
    .line 89
    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 90
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Lcom/android/settings/applications/IPackageManagerWrapper;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    move-object v2, p1

    move-object v6, p3

    .line 89
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 91
    .local v0, "counter":Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;
    if-eqz p2, :cond_0

    .line 92
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->executeInForeground()V

    goto :goto_0
.end method

.method public calculateNumberOfPolicyInstalledApps(ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 3
    .param p1, "async"    # Z
    .param p2, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    .prologue
    .line 70
    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 71
    .local v0, "counter":Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;
    if-eqz p1, :cond_0

    .line 72
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->executeInForeground()V

    goto :goto_0
.end method

.method public findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;
    .locals 11
    .param p1, "userId"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v4, "preferredActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 111
    .local v6, "uniqueApps":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings/applications/UserAppInfo;>;"
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 112
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v8, 0x0

    array-length v9, p2

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v3, p2, v8

    .line 115
    .local v3, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Lcom/android/settings/applications/IPackageManagerWrapper;

    invoke-interface {v10, v3, p1}, Lcom/android/settings/applications/IPackageManagerWrapper;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 116
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "componentInfo":Landroid/content/pm/ComponentInfo;
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_2

    .line 119
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 125
    .end local v0    # "componentInfo":Landroid/content/pm/ComponentInfo;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 126
    new-instance v2, Lcom/android/settings/applications/UserAppInfo;

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v7, v10}, Lcom/android/settings/applications/UserAppInfo;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 127
    .local v2, "info":Lcom/android/settings/applications/UserAppInfo;
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 128
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v2    # "info":Lcom/android/settings/applications/UserAppInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 120
    .restart local v0    # "componentInfo":Landroid/content/pm/ComponentInfo;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_3

    .line 121
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .local v0, "componentInfo":Landroid/content/pm/ComponentInfo;
    goto :goto_1

    .line 122
    .local v0, "componentInfo":Landroid/content/pm/ComponentInfo;
    :cond_3
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v10, :cond_0

    .line 123
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "componentInfo":Landroid/content/pm/ComponentInfo;
    goto :goto_1

    .line 135
    .end local v0    # "componentInfo":Landroid/content/pm/ComponentInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-object v4

    .line 132
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "exception":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public getKeepEnabledPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method public listAppsWithAdminGrantedPermissions([Ljava/lang/String;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 7
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .prologue
    .line 102
    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Lcom/android/settings/applications/IPackageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .line 103
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    move-object v1, p1

    move-object v6, p2

    .line 102
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;-><init>([Ljava/lang/String;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Landroid/os/UserManager;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    .line 104
    .local v0, "lister":Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method

.method public listPolicyInstalledApps(Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .prologue
    .line 81
    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/os/UserManager;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    .line 82
    .local v0, "lister":Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method

.method public newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "appHeader"    # Landroid/view/View;

    .prologue
    .line 58
    new-instance v0, Lcom/android/settings/applications/AppHeaderController;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/applications/AppHeaderController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method

.method public newInstantAppButtonsController(Landroid/app/Fragment;Landroid/view/View;Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;)Lcom/android/settings/applications/instantapps/InstantAppButtonsController;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "showDialogDelegate"    # Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;

    .prologue
    .line 64
    new-instance v0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/view/View;Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;)V

    return-object v0
.end method
