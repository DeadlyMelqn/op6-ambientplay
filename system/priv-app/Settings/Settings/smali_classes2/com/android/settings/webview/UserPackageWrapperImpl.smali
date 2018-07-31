.class Lcom/android/settings/webview/UserPackageWrapperImpl;
.super Ljava/lang/Object;
.source "UserPackageWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/webview/UserPackageWrapper;


# instance fields
.field private final mUserPackage:Landroid/webkit/UserPackage;


# direct methods
.method constructor <init>(Landroid/webkit/UserPackage;)V
    .locals 0
    .param p1, "userPackage"    # Landroid/webkit/UserPackage;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/webview/UserPackageWrapperImpl;->mUserPackage:Landroid/webkit/UserPackage;

    .line 33
    return-void
.end method


# virtual methods
.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/webview/UserPackageWrapperImpl;->mUserPackage:Landroid/webkit/UserPackage;

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Landroid/content/pm/UserInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/webview/UserPackageWrapperImpl;->mUserPackage:Landroid/webkit/UserPackage;

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public isEnabledPackage()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/webview/UserPackageWrapperImpl;->mUserPackage:Landroid/webkit/UserPackage;

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    return v0
.end method

.method public isInstalledPackage()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/webview/UserPackageWrapperImpl;->mUserPackage:Landroid/webkit/UserPackage;

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v0

    return v0
.end method
