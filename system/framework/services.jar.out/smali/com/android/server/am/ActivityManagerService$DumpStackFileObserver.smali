.class public Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;
.super Landroid/os/FileObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpStackFileObserver"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TRACE_DUMP_TIMEOUT_MS:I = 0x2710


# instance fields
.field private mClosed:Z

.field private final mTracesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tracesPath"    # Ljava/lang/String;

    .prologue
    .line 6790
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 6791
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    .line 6792
    return-void
.end method


# virtual methods
.method public dumpWithTimeout(IJ)J
    .locals 18
    .param p1, "pid"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 6801
    const/4 v3, 0x3

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/os/Process;->sendSignal(II)V

    .line 6802
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 6804
    .local v8, "start":J
    const-wide/16 v14, 0x2710

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 6805
    .local v12, "waitTime":J
    monitor-enter p0

    .line 6807
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 6815
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 6816
    .local v10, "timeWaited":J
    cmp-long v3, v10, p2

    if-ltz v3, :cond_0

    .line 6817
    return-wide v10

    .line 6808
    .end local v10    # "timeWaited":J
    :catch_0
    move-exception v2

    .line 6809
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6805
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6820
    .restart local v10    # "timeWaited":J
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    if-nez v3, :cond_1

    .line 6823
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Didn\'t see close of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " for pid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 6824
    const-string/jumbo v15, ".  Attempting native stack collection and kill it"

    .line 6823
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6826
    const-wide/16 v14, 0x7d0

    sub-long v16, p2, v10

    .line 6825
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 6828
    .local v6, "nativeDumpTimeoutMs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    .line 6829
    const-wide/16 v14, 0x3e8

    div-long v14, v6, v14

    long-to-int v14, v14

    .line 6828
    move/from16 v0, p1

    invoke-static {v0, v3, v14}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    .line 6831
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6832
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 6837
    .end local v6    # "nativeDumpTimeoutMs":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 6838
    .local v4, "end":J
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    .line 6840
    sub-long v14, v4, v8

    return-wide v14
.end method

.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 6796
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    .line 6797
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6798
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
