.class public final Lcom/android/server/BtThread;
.super Lcom/android/server/ServiceThread;
.source "BtThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/BtThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 13
    const-string/jumbo v0, "android.bt"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 14
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 4

    .prologue
    .line 17
    sget-object v0, Lcom/android/server/BtThread;->sInstance:Lcom/android/server/BtThread;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/android/server/BtThread;

    invoke-direct {v0}, Lcom/android/server/BtThread;-><init>()V

    sput-object v0, Lcom/android/server/BtThread;->sInstance:Lcom/android/server/BtThread;

    .line 19
    sget-object v0, Lcom/android/server/BtThread;->sInstance:Lcom/android/server/BtThread;

    invoke-virtual {v0}, Lcom/android/server/BtThread;->start()V

    .line 20
    sget-object v0, Lcom/android/server/BtThread;->sInstance:Lcom/android/server/BtThread;

    invoke-virtual {v0}, Lcom/android/server/BtThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    .line 21
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/BtThread;->sInstance:Lcom/android/server/BtThread;

    invoke-virtual {v1}, Lcom/android/server/BtThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/BtThread;->sHandler:Landroid/os/Handler;

    .line 23
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/BtThread;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/android/server/BtThread;

    monitor-enter v1

    .line 27
    :try_start_0
    invoke-static {}, Lcom/android/server/BtThread;->ensureThreadLocked()V

    .line 28
    sget-object v0, Lcom/android/server/BtThread;->sInstance:Lcom/android/server/BtThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/android/server/BtThread;

    monitor-enter v1

    .line 34
    :try_start_0
    invoke-static {}, Lcom/android/server/BtThread;->ensureThreadLocked()V

    .line 35
    sget-object v0, Lcom/android/server/BtThread;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
