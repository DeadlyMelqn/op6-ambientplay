.class Lcom/android/internal/os/WebViewZygoteInit;
.super Ljava/lang/Object;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;,
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WebViewZygoteInit"

.field private static sServer:Lcom/android/internal/os/ZygoteServer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v3, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;

    invoke-direct {v3, v4}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;-><init>(Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;)V

    sput-object v3, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    .line 125
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    sget-object v3, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    const-string/jumbo v4, "webview_zygote"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ZygoteServer;->registerServerSocket(Ljava/lang/String;)V

    .line 135
    sget-object v3, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    const-string/jumbo v4, ","

    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 140
    .local v0, "caller":Ljava/lang/Runnable;
    sget-object v3, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 148
    :cond_0
    return-void

    .line 126
    .end local v0    # "caller":Ljava/lang/Runnable;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "ex":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to setpgid(0,0)"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 136
    .end local v2    # "ex":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v3, "WebViewZygoteInit"

    const-string/jumbo v4, "Fatal exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 140
    sget-object v4, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 139
    throw v3
.end method
