.class public Lcom/android/settings/webview/WebViewAppPicker;
.super Lcom/android/settings/applications/DefaultAppPickerFragment;
.source "WebViewAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;
    }
.end annotation


# instance fields
.field private mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private createDefaultWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-direct {v0}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;-><init>()V

    return-object v0
.end method

.method private getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->createDefaultWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/webview/WebViewAppPicker;->setWebViewUpdateServiceWrapper(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    return-object v0
.end method


# virtual methods
.method createDefaultAppInfo(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;)Lcom/android/settings/applications/DefaultAppInfo;
    .locals 2
    .param p1, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "disabledReason"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;

    .line 136
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 135
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/DefaultAppInfo;>;"
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getValidWebViewApplicationInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 65
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/settings/webview/WebViewAppPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v5

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/settings/webview/WebViewAppPicker;->getDisabledReason(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {p0, v4, v0, v5}, Lcom/android/settings/webview/WebViewAppPicker;->createDefaultAppInfo(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;)Lcom/android/settings/applications/DefaultAppInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 75
    .local v0, "currentPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method getDisabledReason(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "webviewUpdateServiceWrapper"    # Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 148
    .local v2, "userPackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/webview/UserPackageWrapper;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "userPackage$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/webview/UserPackageWrapper;

    .line 151
    .local v0, "userPackage":Lcom/android/settings/webview/UserPackageWrapper;
    invoke-interface {v0}, Lcom/android/settings/webview/UserPackageWrapper;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-eq v3, v4, :cond_0

    .line 155
    invoke-interface {v0}, Lcom/android/settings/webview/UserPackageWrapper;->isInstalledPackage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    new-array v3, v6, [Ljava/lang/Object;

    .line 158
    invoke-interface {v0}, Lcom/android/settings/webview/UserPackageWrapper;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f0f12a1

    .line 157
    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 159
    :cond_1
    invoke-interface {v0}, Lcom/android/settings/webview/UserPackageWrapper;->isEnabledPackage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    new-array v3, v6, [Ljava/lang/Object;

    .line 162
    invoke-interface {v0}, Lcom/android/settings/webview/UserPackageWrapper;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f0f12a2

    .line 161
    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 165
    .end local v0    # "userPackage":Lcom/android/settings/webview/UserPackageWrapper;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x195

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/applications/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 87
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 88
    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v2, "android.settings.WEBVIEW_SETTINGS"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 97
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_1
    return-void

    .line 87
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 94
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->showInvalidChoiceToast(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->updateCandidates()V

    goto :goto_1
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->setWebViewProvider(Ljava/lang/String;)Z

    move-result v0

    .line 80
    .local v0, "success":Z
    return v0
.end method

.method setWebViewUpdateServiceWrapper(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;)V
    .locals 0
    .param p1, "wvusWrapper"    # Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/webview/WebViewAppPicker;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    .line 106
    return-void
.end method
