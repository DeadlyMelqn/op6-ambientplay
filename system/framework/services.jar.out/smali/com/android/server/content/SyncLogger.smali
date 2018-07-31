.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncLogger"

.field private static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .locals 5

    .prologue
    const-class v2, Lcom/android/server/content/SyncLogger;

    monitor-enter v2

    .line 64
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    if-nez v1, :cond_0

    .line 65
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "debug.synclog"

    .line 66
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    .line 65
    :goto_0
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    .local v0, "enable":Z
    if-eqz v0, :cond_2

    .line 68
    new-instance v1, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    invoke-direct {v1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;-><init>()V

    sput-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    .line 73
    :cond_0
    :goto_1
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 66
    .end local v0    # "enable":Z
    :cond_1
    :try_start_1
    const-string/jumbo v1, "0"

    goto :goto_0

    .line 70
    .restart local v0    # "enable":Z
    :cond_2
    new-instance v1, Lcom/android/server/content/SyncLogger;

    invoke-direct {v1}, Lcom/android/server/content/SyncLogger;-><init>()V

    sput-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 98
    return-void
.end method

.method public enabled()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 91
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # [Ljava/lang/Object;

    .prologue
    .line 80
    return-void
.end method

.method public purgeOldLogs()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
