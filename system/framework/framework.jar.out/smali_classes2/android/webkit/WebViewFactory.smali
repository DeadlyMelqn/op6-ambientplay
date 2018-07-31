.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProviderForOMR1"

.field private static final CHROMIUM_WEBVIEW_FACTORY_METHOD:Ljava/lang/String; = "create"

.field public static final CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY:Ljava/lang/String; = "persist.sys.webview.vmsize"

.field private static final DEBUG:Z = false

.field public static final LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final LIBLOAD_FAILED_TO_FIND_NAMESPACE:I = 0xa

.field public static final LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final LIBLOAD_FAILED_WAITING_FOR_WEBVIEW_REASON_UNKNOWN:I = 0x8

.field public static final LIBLOAD_SUCCESS:I = 0x0

.field public static final LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static final NULL_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.nullwebview.NullWebViewFactoryProvider"

.field private static WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    .line 537
    const-string/jumbo v0, "webviewupdate"

    sput-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V
    .locals 7
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, "donorPackageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.webview.WebViewDonorPackage"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .end local v2    # "donorPackageName":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 284
    const v4, 0x10202400

    .line 282
    :try_start_0
    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 292
    .local v1, "donorPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 295
    .local v0, "donorInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 296
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 297
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 298
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 302
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 303
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 305
    .end local v0    # "donorInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "donorPackage":Landroid/content/pm/PackageInfo;
    :cond_1
    return-void

    .line 288
    :catch_0
    move-exception v3

    .line 289
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find donor package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 2

    .prologue
    .line 119
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 10

    .prologue
    .line 179
    sget-object v6, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v6

    .line 182
    :try_start_0
    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    .line 184
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 185
    .local v4, "uid":I
    if-eqz v4, :cond_1

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    .line 188
    :cond_1
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    .line 189
    const-string/jumbo v7, "For security reasons, WebView is not allowed in privileged processes"

    .line 188
    invoke-direct {v5, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 186
    :cond_2
    const/16 v5, 0x3e9

    if-eq v4, v5, :cond_1

    const/16 v5, 0x403

    if-eq v4, v5, :cond_1

    .line 187
    const/16 v5, 0x3ea

    if-eq v4, v5, :cond_1

    .line 192
    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 193
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-string/jumbo v5, "WebViewFactory.getProvider()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    .line 196
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    const/4 v3, 0x0

    .line 199
    .local v3, "staticFactory":Ljava/lang/reflect/Method;
    :try_start_4
    const-string/jumbo v5, "create"

    .line 198
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    .line 199
    const-class v8, Landroid/webkit/WebViewDelegate;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 198
    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v3

    .line 206
    .end local v3    # "staticFactory":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_5
    const-string/jumbo v5, "WebViewFactoryProvider invocation"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 209
    const/4 v5, 0x1

    :try_start_6
    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Landroid/webkit/WebViewDelegate;

    invoke-direct {v7}, Landroid/webkit/WebViewDelegate;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 208
    check-cast v5, Landroid/webkit/WebViewFactoryProvider;

    sput-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 211
    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 216
    const-wide/16 v8, 0x10

    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 219
    const-wide/16 v8, 0x10

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 220
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v6

    .line 211
    return-object v5

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v5, "WebViewFactory"

    const-string/jumbo v7, "error instantiating provider"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    new-instance v5, Landroid/util/AndroidRuntimeException;

    invoke-direct {v5, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 216
    const-wide/16 v8, 0x10

    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 215
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 218
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catchall_2
    move-exception v5

    .line 219
    const-wide/16 v8, 0x10

    :try_start_b
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 220
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 218
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 200
    .restart local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .restart local v3    # "staticFactory":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getProviderClass()Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    const/4 v5, 0x0

    .line 432
    .local v5, "webViewContext":Landroid/content/Context;
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v4

    .line 436
    .local v4, "initialApplication":Landroid/app/Application;
    :try_start_0
    const-string/jumbo v6, "WebViewFactory.getWebViewContextAndSetProvider()"

    .line 435
    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewContextAndSetProvider()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 440
    .local v5, "webViewContext":Landroid/content/Context;
    const-wide/16 v6, 0x10

    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 442
    const-string/jumbo v6, "WebViewFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 443
    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 442
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 443
    const-string/jumbo v8, " (code "

    .line 442
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 443
    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 442
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 443
    const-string/jumbo v8, ")"

    .line 442
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string/jumbo v6, "WebViewFactory.getChromiumProviderClass()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_0

    .line 447
    :try_start_3
    invoke-virtual {v4}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 448
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 447
    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    .line 449
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 451
    .local v0, "clazzLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "WebViewFactory.loadNativeLibrary()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 452
    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v6}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)I

    .line 453
    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 455
    const-string/jumbo v6, "Class.forName()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 457
    :try_start_4
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 459
    const-wide/16 v8, 0x10

    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 465
    const-wide/16 v8, 0x10

    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 457
    return-object v6

    .line 439
    .end local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .local v5, "webViewContext":Landroid/content/Context;
    :catchall_0
    move-exception v6

    .line 440
    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 439
    throw v6
    :try_end_6
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_6 .. :try_end_6} :catch_0

    .line 467
    .end local v5    # "webViewContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :try_start_7
    const-string/jumbo v6, "com.android.webview.nullwebview.NullWebViewFactoryProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v6

    return-object v6

    .line 458
    .end local v1    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    .restart local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .local v5, "webViewContext":Landroid/content/Context;
    :catchall_1
    move-exception v6

    .line 459
    const-wide/16 v8, 0x10

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 458
    throw v6
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 461
    .end local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_9
    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "error loading provider"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 464
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_2
    move-exception v6

    .line 465
    const-wide/16 v8, 0x10

    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 464
    throw v6
    :try_end_a
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_a .. :try_end_a} :catch_0

    .line 474
    .end local v5    # "webViewContext":Landroid/content/Context;
    .restart local v1    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :catch_2
    move-exception v3

    .line 477
    .local v3, "e2":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "Chromium WebView package does not exist"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method private static getSpecifyWebViewContext()Landroid/content/Context;
    .locals 6

    .prologue
    .line 323
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 325
    .local v1, "initialApplication":Landroid/app/Application;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 326
    const-string/jumbo v4, "com.android.webview"

    const v5, 0x100024c0

    .line 325
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    sput-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 337
    sget-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 338
    const/4 v4, 0x3

    .line 336
    invoke-virtual {v1, v3, v4}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 339
    .local v2, "webViewContext":Landroid/content/Context;
    return-object v2

    .line 340
    .end local v2    # "webViewContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .prologue
    .line 542
    sget-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 541
    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewContextAndSetProvider()Landroid/content/Context;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    .line 348
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    .line 353
    .local v2, "initialApplication":Landroid/app/Application;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/webkit/WebViewFactory;->getWebViewPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 355
    invoke-static {}, Landroid/webkit/WebViewFactory;->getSpecifyWebViewContext()Landroid/content/Context;

    move-result-object v7

    .line 356
    .local v7, "webViewContext":Landroid/content/Context;
    if-eqz v7, :cond_0

    return-object v7

    .line 360
    .end local v7    # "webViewContext":Landroid/content/Context;
    :cond_0
    const/4 v6, 0x0

    .line 362
    .local v6, "response":Landroid/webkit/WebViewProviderResponse;
    const-string/jumbo v8, "WebViewUpdateService.waitForAndGetProvider()"

    .line 361
    const-wide/16 v10, 0x10

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v8

    invoke-interface {v8}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 366
    .local v6, "response":Landroid/webkit/WebViewProviderResponse;
    const-wide/16 v8, 0x10

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 368
    iget v8, v6, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v8, :cond_2

    .line 369
    iget v8, v6, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eq v8, v12, :cond_2

    .line 370
    invoke-static {}, Landroid/webkit/WebViewFactory;->getSpecifyWebViewContext()Landroid/content/Context;

    move-result-object v7

    .line 371
    .restart local v7    # "webViewContext":Landroid/content/Context;
    if-eqz v7, :cond_1

    return-object v7

    .line 365
    .end local v7    # "webViewContext":Landroid/content/Context;
    .local v6, "response":Landroid/webkit/WebViewProviderResponse;
    :catchall_0
    move-exception v8

    .line 366
    const-wide/16 v10, 0x10

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 365
    throw v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 423
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "response":Landroid/webkit/WebViewProviderResponse;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Landroid/util/AndroidException;
    invoke-static {}, Landroid/webkit/WebViewFactory;->getSpecifyWebViewContext()Landroid/content/Context;

    move-result-object v7

    .line 425
    .restart local v7    # "webViewContext":Landroid/content/Context;
    if-eqz v7, :cond_3

    return-object v7

    .line 372
    .end local v1    # "e":Landroid/util/AndroidException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .local v6, "response":Landroid/webkit/WebViewProviderResponse;
    :cond_1
    :try_start_3
    new-instance v8, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to load WebView provider: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 373
    iget v10, v6, Landroid/webkit/WebViewProviderResponse;->status:I

    invoke-static {v10}, Landroid/webkit/WebViewFactory;->getWebViewPreparationErrorReason(I)Ljava/lang/String;

    move-result-object v10

    .line 372
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 377
    .end local v7    # "webViewContext":Landroid/content/Context;
    :cond_2
    const-string/jumbo v8, "ActivityManager.addPackageDependency()"

    const-wide/16 v10, 0x10

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 379
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    .line 380
    iget-object v9, v6, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 379
    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 382
    const-wide/16 v8, 0x10

    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, "newPackageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 387
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v8, "PackageManager.getPackageInfo()"

    const-wide/16 v10, 0x10

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 390
    :try_start_6
    iget-object v8, v6, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 391
    const v9, 0x100024c0

    .line 389
    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v3

    .line 401
    .local v3, "newPackageInfo":Landroid/content/pm/PackageInfo;
    const-wide/16 v8, 0x10

    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 406
    iget-object v8, v6, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v8, v3}, Landroid/webkit/WebViewFactory;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 408
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 409
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, v5}, Landroid/webkit/WebViewFactory;->fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    .line 412
    const-string/jumbo v8, "initialApplication.createApplicationContext"

    .line 411
    const-wide/16 v10, 0x10

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 417
    const/4 v8, 0x3

    .line 415
    :try_start_8
    invoke-virtual {v2, v0, v8}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v7

    .line 418
    .restart local v7    # "webViewContext":Landroid/content/Context;
    sput-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 421
    const-wide/16 v8, 0x10

    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 419
    return-object v7

    .line 381
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "newPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "webViewContext":Landroid/content/Context;
    :catchall_1
    move-exception v8

    .line 382
    const-wide/16 v10, 0x10

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    throw v8

    .line 400
    .local v3, "newPackageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catchall_2
    move-exception v8

    .line 401
    const-wide/16 v10, 0x10

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 400
    throw v8

    .line 420
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v3, "newPackageInfo":Landroid/content/pm/PackageInfo;
    :catchall_3
    move-exception v8

    .line 421
    const-wide/16 v10, 0x10

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 420
    throw v8
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_0

    .line 426
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "newPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "response":Landroid/webkit/WebViewProviderResponse;
    .restart local v1    # "e":Landroid/util/AndroidException;
    .restart local v7    # "webViewContext":Landroid/content/Context;
    :cond_3
    new-instance v8, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to load WebView provider: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.webview.WebViewLibrary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    return-object v1
.end method

.method public static getWebViewPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "initialPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-static {v2, p0}, Landroid/app/ActivityThread;->inCompatConfigList(ILjava/lang/String;)Z

    move-result v0

    .line 314
    if-eqz v0, :cond_0

    .line 317
    const-string/jumbo v0, "com.android.webview"

    return-object v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getWebViewPreparationErrorReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 93
    packed-switch p0, :pswitch_data_0

    .line 101
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 95
    :pswitch_1
    const-string/jumbo v0, "Time out waiting for Relro files being created"

    return-object v0

    .line 97
    :pswitch_2
    const-string/jumbo v0, "No WebView installed"

    return-object v0

    .line 99
    :pswitch_3
    const-string/jumbo v0, "Crashed for unknown reason"

    return-object v0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    const-string/jumbo v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForOMR1"

    .line 130
    const/4 v1, 0x1

    .line 129
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadWebViewNativeLibraryFromPackage(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "clazzLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v10, 0x1

    .line 139
    const/4 v6, 0x0

    .line 141
    .local v6, "response":Landroid/webkit/WebViewProviderResponse;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v7

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 148
    .local v6, "response":Landroid/webkit/WebViewProviderResponse;
    iget v7, v6, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v7, :cond_0

    .line 149
    iget v7, v6, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 150
    iget v7, v6, Landroid/webkit/WebViewProviderResponse;->status:I

    return v7

    .line 142
    .local v6, "response":Landroid/webkit/WebViewProviderResponse;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "WebViewFactory"

    const-string/jumbo v8, "error waiting for relro creation"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/16 v7, 0x8

    return v7

    .line 152
    .end local v1    # "e":Landroid/os/RemoteException;
    .local v6, "response":Landroid/webkit/WebViewProviderResponse;
    :cond_0
    iget-object v7, v6, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    return v10

    .line 156
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 160
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const v7, 0x10000080

    .line 159
    :try_start_1
    invoke-virtual {v5, p0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 167
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_2
    invoke-static {p1, v4}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)I

    move-result v3

    .line 170
    .local v3, "loadNativeRet":I
    if-nez v3, :cond_2

    iget v7, v6, Landroid/webkit/WebViewProviderResponse;->status:I
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_2

    return v7

    .line 161
    .end local v3    # "loadNativeRet":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "WebViewFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t find package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v10

    .line 171
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "loadNativeRet":I
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    return v3

    .line 172
    .end local v3    # "loadNativeRet":I
    :catch_2
    move-exception v2

    .line 173
    .local v2, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    const-string/jumbo v7, "WebViewFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t load native library: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v7, 0x6

    return v7
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .locals 5
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "nativeLibs":[Ljava/lang/String;
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 523
    .local v1, "originalSourceDir":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 524
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 523
    invoke-static {v3, v4}, Landroid/webkit/WebViewFactory;->fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    .line 526
    invoke-static {p0}, Landroid/webkit/WebViewLibraryLoader;->updateWebViewZygoteVmSize(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 532
    .end local v0    # "nativeLibs":[Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Landroid/webkit/WebViewZygote;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 534
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)I

    move-result v3

    return v3

    .line 527
    .restart local v0    # "nativeLibs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 529
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "error preparing webview native library"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static prepareWebViewInSystemServer([Ljava/lang/String;)I
    .locals 3
    .param p0, "nativeLibraryPaths"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 497
    const/4 v0, 0x0

    .line 502
    .local v0, "numRelros":I
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 504
    invoke-static {v2, p0}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(Z[Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    .line 508
    :cond_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 510
    const/4 v1, 0x1

    invoke-static {v1, p0}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(Z[Ljava/lang/String;)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    .line 513
    :cond_1
    return v0
.end method

.method public static prepareWebViewInZygote()V
    .locals 3

    .prologue
    .line 488
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->reserveAddressSpaceInZygote()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 489
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 491
    .restart local v0    # "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "WebViewFactory"

    const-string/jumbo v2, "error preparing native loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v3, 0x0

    .line 229
    if-nez p0, :cond_1

    .line 230
    if-nez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 232
    :cond_1
    if-nez p1, :cond_2

    return v3

    .line 234
    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 235
    .local v0, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, p0, v4

    .line 236
    .local v2, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "signature":Landroid/content/pm/Signature;
    :cond_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 239
    .local v1, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, p1, v3

    .line 240
    .restart local v2    # "signature":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 242
    .end local v2    # "signature":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private static verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p0, "chosen"    # Landroid/content/pm/PackageInfo;
    .param p1, "toUse"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to verify WebView provider, packageName mismatch, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    const-string/jumbo v2, " actual: "

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v1, :cond_1

    .line 254
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to verify WebView provider, version code is lower than expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    const-string/jumbo v2, " actual: "

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 259
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to load an invalid WebView provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 263
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string/jumbo v1, "Failed to verify WebView provider, signature mismatch"

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_3
    return-void
.end method
