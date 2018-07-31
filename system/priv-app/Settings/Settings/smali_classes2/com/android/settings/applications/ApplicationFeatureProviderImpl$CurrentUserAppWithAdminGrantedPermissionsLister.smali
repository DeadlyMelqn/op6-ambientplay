.class Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;
.super Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentUserAppWithAdminGrantedPermissionsLister"
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;


# direct methods
.method constructor <init>([Ljava/lang/String;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Landroid/os/UserManager;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "packageManager"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p3, "packageManagerService"    # Lcom/android/settings/applications/IPackageManagerWrapper;
    .param p4, "devicePolicyManager"    # Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;
    .param p5, "userManager"    # Landroid/os/UserManager;
    .param p6, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .prologue
    .line 200
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;-><init>([Ljava/lang/String;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Landroid/os/UserManager;)V

    .line 202
    iput-object p6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .line 203
    return-void
.end method


# virtual methods
.method protected onAppListBuilt(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    invoke-interface {v0, p1}, Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;->onListOfAppsResult(Ljava/util/List;)V

    .line 208
    return-void
.end method
