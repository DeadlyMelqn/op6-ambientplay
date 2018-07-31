.class public Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# static fields
.field private static final MULTIPROCESS_SETTING_OFF_VALUE:I = -0x80000000

.field private static final MULTIPROCESS_SETTING_ON_VALUE:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 82
    new-instance v0, Lcom/android/server/webkit/WebViewUpdater;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-direct {v0, v1, v2}, Lcom/android/server/webkit/WebViewUpdater;-><init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    .line 83
    return-void
.end method

.method private existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z
    .locals 7
    .param p1, "providers"    # [Landroid/webkit/WebViewProviderInfo;

    .prologue
    const/4 v4, 0x0

    .line 100
    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p1, v3

    .line 101
    .local v0, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v2, v0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v2, v6, v0}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    .line 110
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/UserPackage;

    invoke-virtual {v2}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 109
    invoke-virtual {v6, v0, v2}, Lcom/android/server/webkit/WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    .line 105
    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x1

    return v2

    .line 100
    .end local v1    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 115
    .end local v0    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_1
    return v4
.end method

.method private static getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;
    .locals 4
    .param p0, "webviewPackages"    # [Landroid/webkit/WebViewProviderInfo;

    .prologue
    .line 227
    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 228
    .local v0, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v3, v0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v3, :cond_0

    .line 229
    return-object v0

    .line 227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleUserChange()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/webkit/WebViewUpdater;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 141
    return-void
.end method

.method private static isDisabledForAllUsers(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/webkit/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "userPackage$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UserPackage;

    .line 267
    .local v0, "userPackage":Landroid/webkit/UserPackage;
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const/4 v2, 0x0

    return v2

    .line 271
    .end local v0    # "userPackage":Landroid/webkit/UserPackage;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private updateFallbackState([Landroid/webkit/WebViewProviderInfo;)V
    .locals 7
    .param p1, "webviewProviders"    # [Landroid/webkit/WebViewProviderInfo;

    .prologue
    .line 206
    invoke-static {p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    .line 207
    .local v1, "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    if-nez v1, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z

    move-result v0

    .line 211
    .local v0, "existsValidNonFallbackProvider":Z
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, v1}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v2

    .line 212
    .local v2, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isDisabledForAllUsers(Ljava/util/List;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 213
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 214
    iget-object v5, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 213
    invoke-interface {v3, v4, v5}, Lcom/android/server/webkit/SystemInterface;->uninstallAndDisablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    if-nez v0, :cond_1

    .line 216
    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 215
    if-eqz v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 219
    iget-object v5, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    .line 218
    invoke-interface {v3, v4, v5, v6}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateFallbackStateOnBoot()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 175
    .local v0, "webviewProviders":[Landroid/webkit/WebViewProviderInfo;
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;)V

    .line 176
    return-void
.end method

.method private updateFallbackStateOnPackageChange(Ljava/lang/String;I)V
    .locals 6
    .param p1, "changedPackage"    # Ljava/lang/String;
    .param p2, "changedState"    # I

    .prologue
    .line 184
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    .line 190
    .local v2, "webviewProviders":[Landroid/webkit/WebViewProviderInfo;
    const/4 v0, 0x0

    .line 191
    .local v0, "changedPackageAvailableByDefault":Z
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 192
    .local v1, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v5, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    iget-boolean v3, v1, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v3, :cond_1

    .line 194
    const/4 v0, 0x1

    .line 199
    .end local v1    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_1
    if-nez v0, :cond_3

    return-void

    .line 191
    .restart local v1    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;)V

    .line 201
    return-void
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "newProvider"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdater;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dumpState(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 278
    const-string/jumbo v0, "Current WebView Update Service state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "  Fallback logic enabled: %b"

    new-array v1, v4, [Ljava/lang/Object;

    .line 280
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    .line 279
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v0, "  Multiprocess enabled: %b"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdater;->dumpState(Ljava/io/PrintWriter;)V

    .line 283
    return-void
.end method

.method enableFallbackLogic(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0, p1}, Lcom/android/server/webkit/SystemInterface;->enableFallbackLogic(Z)V

    .line 169
    return-void
.end method

.method enableMultiProcess(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 257
    .local v0, "current":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 258
    if-eqz p1, :cond_1

    const v1, 0x7fffffff

    .line 257
    :goto_0
    invoke-interface {v2, v3, v1}, Lcom/android/server/webkit/SystemInterface;->setMultiProcessSetting(Landroid/content/Context;I)V

    .line 259
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    .line 260
    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void

    .line 258
    :cond_1
    const/high16 v1, -0x80000000

    goto :goto_0
.end method

.method getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method handleNewUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 122
    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserChange()V

    .line 124
    return-void
.end method

.method handleUserRemoved(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserChange()V

    .line 128
    return-void
.end method

.method isFallbackPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 236
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    return v2

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    .line 239
    .local v1, "webviewPackages":[Landroid/webkit/WebViewProviderInfo;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 240
    .local v0, "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    if-eqz v0, :cond_2

    .line 241
    iget-object v2, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 240
    :cond_2
    return v2
.end method

.method isMultiProcessEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getMultiProcessSetting(Landroid/content/Context;)I

    move-result v0

    .line 246
    .local v0, "settingValue":I
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->isMultiProcessDefaultEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    const/high16 v3, -0x80000000

    if-le v0, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 251
    :cond_1
    const v3, 0x7fffffff

    if-lt v0, v3, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method notifyRelroCreationCompleted()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->notifyRelroCreationCompleted()V

    .line 145
    return-void
.end method

.method packageStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedState"    # I
    .param p3, "userId"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackStateOnPackageChange(Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/webkit/WebViewUpdater;->packageStateChanged(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method prepareWebViewInSystemServer()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackStateOnBoot()V

    .line 95
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->prepareWebViewInSystemServer()V

    .line 96
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    .line 97
    return-void
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    return-object v0
.end method
