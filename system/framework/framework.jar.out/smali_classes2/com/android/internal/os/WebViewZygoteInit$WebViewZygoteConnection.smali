.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
.super Lcom/android/internal/os/ZygoteConnection;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewZygoteConnection"
.end annotation


# direct methods
.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Beginning package preload"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v9

    invoke-virtual {v9, p1, p2, p3}, Landroid/app/ApplicationLoaders;->createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 82
    .local v2, "loader":Ljava/lang/ClassLoader;
    sget-object v9, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {p1, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "packageList":[Ljava/lang/String;
    const/4 v9, 0x0

    array-length v10, v4

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v3, v4, v9

    .line 84
    .local v3, "packageEntry":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 83
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "packageEntry":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 93
    .local v6, "preloadSucceeded":Z
    :try_start_0
    invoke-static {v2}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 94
    .local v7, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    const-string/jumbo v9, "preloadInZygote"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 95
    .local v5, "preloadInZygote":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 96
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v9, v10, :cond_2

    .line 97
    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Unexpected return type: preloadInZygote must return boolean"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v5    # "preloadInZygote":Ljava/lang/reflect/Method;
    .end local v6    # "preloadSucceeded":Z
    .end local v7    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->getSocketOutputStream()Ljava/io/DataOutputStream;

    move-result-object v8

    .line 111
    .local v8, "socketOut":Ljava/io/DataOutputStream;
    if-eqz v6, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Package preload done"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 99
    .end local v8    # "socketOut":Ljava/io/DataOutputStream;
    .restart local v5    # "preloadInZygote":Ljava/lang/reflect/Method;
    .restart local v6    # "preloadSucceeded":Z
    .restart local v7    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v9, "preloadInZygote"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    .line 100
    const/4 v11, 0x0

    .line 99
    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 101
    .local v6, "preloadSucceeded":Z
    if-nez v6, :cond_1

    .line 102
    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "preloadInZygote returned false"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 105
    .end local v5    # "preloadInZygote":Ljava/lang/reflect/Method;
    .end local v6    # "preloadSucceeded":Z
    .end local v7    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Exception while preloading package"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 111
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v8    # "socketOut":Ljava/io/DataOutputStream;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 112
    .end local v8    # "socketOut":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Error writing to command socket"

    invoke-direct {v9, v10, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method protected isPreloadComplete()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected preload()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
