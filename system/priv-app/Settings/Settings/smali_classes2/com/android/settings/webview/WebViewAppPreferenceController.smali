.class public Lcom/android/settings/webview/WebViewAppPreferenceController;
.super Lcom/android/settings/applications/DefaultAppPreferenceController;
.source "WebViewAppPreferenceController.java"


# static fields
.field private static final WEBVIEW_APP_KEY:Ljava/lang/String; = "select_webview_provider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-direct {v0}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/webview/WebViewAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/webview/WebViewUpdateServiceWrapper;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/webview/WebViewUpdateServiceWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webviewUpdateServiceWrapper"    # Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/applications/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/android/settings/webview/WebViewAppPreferenceController;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/settings/webview/WebViewAppPreferenceController;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    .line 42
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/applications/DefaultAppPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "select_webview_provider"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/webview/WebViewAppPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 57
    :cond_0
    return-void
.end method

.method public enablePreference(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public getDefaultAppInfo()Lcom/android/settings/applications/DefaultAppInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v2, p0, Lcom/android/settings/webview/WebViewAppPreferenceController;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-virtual {v2}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 47
    .local v0, "currentPackage":Landroid/content/pm/PackageInfo;
    new-instance v2, Lcom/android/settings/applications/DefaultAppInfo;

    iget-object v3, p0, Lcom/android/settings/webview/WebViewAppPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 48
    if-nez v0, :cond_0

    .line 47
    :goto_0
    invoke-direct {v2, v3, v1}, Lcom/android/settings/applications/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    return-object v2

    .line 48
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "select_webview_provider"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
