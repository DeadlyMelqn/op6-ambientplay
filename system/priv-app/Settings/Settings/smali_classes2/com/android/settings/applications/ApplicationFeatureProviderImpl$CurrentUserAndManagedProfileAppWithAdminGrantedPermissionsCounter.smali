.class Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;
.super Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter"
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "packageManager"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p4, "packageManagerService"    # Lcom/android/settings/applications/IPackageManagerWrapper;
    .param p5, "devicePolicyManager"    # Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;
    .param p6, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    .prologue
    .line 167
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;)V

    .line 168
    iput-object p6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    .line 169
    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    invoke-interface {v0, p1}, Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;->onNumberOfAppsResult(I)V

    .line 174
    return-void
.end method
