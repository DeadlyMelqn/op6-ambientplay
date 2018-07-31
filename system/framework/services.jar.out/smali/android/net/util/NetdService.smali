.class public Landroid/net/util/NetdService;
.super Ljava/lang/Object;
.source "NetdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/NetdService$NetdCommand;
    }
.end annotation


# static fields
.field private static final BASE_TIMEOUT_MS:J = 0x64L

.field private static final MAX_TIMEOUT_MS:J = 0x3e8L

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Landroid/net/util/NetdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/net/INetd;
    .locals 2

    .prologue
    .line 115
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Landroid/net/util/NetdService;->get(J)Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public static get(J)Landroid/net/INetd;
    .locals 12
    .param p0, "maxTimeoutMs"    # J

    .prologue
    .line 77
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-nez v8, :cond_0

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v8

    return-object v8

    .line 79
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-lez v8, :cond_1

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long v4, v8, p0

    .line 83
    .local v4, "stop":J
    :goto_0
    const-wide/16 v6, 0x0

    .line 85
    .local v6, "timeoutMs":J
    :goto_1
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v1

    .line 86
    .local v1, "netdInstance":Landroid/net/INetd;
    if-eqz v1, :cond_2

    .line 87
    return-object v1

    .line 81
    .end local v1    # "netdInstance":Landroid/net/INetd;
    .end local v4    # "stop":J
    .end local v6    # "timeoutMs":J
    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    .restart local v4    # "stop":J
    goto :goto_0

    .line 90
    .restart local v1    # "netdInstance":Landroid/net/INetd;
    .restart local v6    # "timeoutMs":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v4, v8

    .line 91
    .local v2, "remaining":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_3

    .line 100
    const/4 v8, 0x0

    return-object v8

    .line 94
    :cond_3
    const-wide/16 v8, 0x64

    add-long/2addr v8, v6

    const-wide/16 v10, 0x3e8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 95
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 97
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public static getInstance()Landroid/net/INetd;
    .locals 3

    .prologue
    .line 52
    const-string/jumbo v1, "netd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    .line 53
    .local v0, "netdInstance":Landroid/net/INetd;
    if-nez v0, :cond_0

    .line 54
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WARNING: returning null INetd instance."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-object v0
.end method

.method public static run(Landroid/net/util/NetdService$NetdCommand;)V
    .locals 4
    .param p0, "cmd"    # Landroid/net/util/NetdService$NetdCommand;

    .prologue
    .line 129
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/net/util/NetdService$NetdCommand;->run(Landroid/net/INetd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error communicating with netd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
