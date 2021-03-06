.class public final Lcom/android/server/Watchdog$OpenFdMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenFdMonitor"
.end annotation


# static fields
.field private static final FD_HIGH_WATER_MARK:I = 0xc


# instance fields
.field private final mDumpDir:Ljava/io/File;

.field private final mFdHighWaterMark:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "dumpDir"    # Ljava/io/File;
    .param p2, "fdThreshold"    # Ljava/io/File;

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iput-object p1, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    .line 831
    iput-object p2, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    .line 832
    return-void
.end method

.method public static create()Lcom/android/server/Watchdog$OpenFdMonitor;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 798
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v4, :cond_0

    .line 799
    return-object v6

    .line 805
    :cond_0
    const-string/jumbo v4, "dalvik.vm.stack-trace-dir"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "dumpDirStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 807
    return-object v6

    .line 812
    :cond_1
    :try_start_0
    sget v4, Landroid/system/OsConstants;->RLIMIT_NOFILE:I

    invoke-static {v4}, Landroid/system/Os;->getrlimit(I)Landroid/system/StructRlimit;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 825
    .local v3, "rlimit":Landroid/system/StructRlimit;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/proc/self/fd/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Landroid/system/StructRlimit;->rlim_cur:J

    const-wide/16 v8, 0xc

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 826
    .local v2, "fdThreshold":Ljava/io/File;
    new-instance v4, Lcom/android/server/Watchdog$OpenFdMonitor;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v2}, Lcom/android/server/Watchdog$OpenFdMonitor;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v4

    .line 813
    .end local v2    # "fdThreshold":Ljava/io/File;
    .end local v3    # "rlimit":Landroid/system/StructRlimit;
    :catch_0
    move-exception v1

    .line 814
    .local v1, "errno":Landroid/system/ErrnoException;
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Error thrown from getrlimit(RLIMIT_NOFILE)"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    return-object v6
.end method

.method private dumpOpenDescriptors()V
    .locals 8

    .prologue
    .line 836
    :try_start_0
    const-string/jumbo v4, "anr_fd_"

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 837
    .local v0, "dumpFile":Ljava/io/File;
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 838
    const-string/jumbo v6, "/system/bin/lsof"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "-p"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 837
    invoke-virtual {v4, v5}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v4

    .line 839
    const/4 v5, 0x1

    .line 837
    invoke-virtual {v4, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 843
    .local v2, "proc":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 844
    .local v3, "returnCode":I
    if-eqz v3, :cond_0

    .line 845
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to dump open descriptors, lsof return code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v0    # "dumpFile":Ljava/io/File;
    .end local v2    # "proc":Ljava/lang/Process;
    .end local v3    # "returnCode":I
    :cond_0
    :goto_0
    return-void

    .line 849
    :catch_0
    move-exception v1

    .line 850
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to dump open descriptors: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public monitor()Z
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-direct {p0}, Lcom/android/server/Watchdog$OpenFdMonitor;->dumpOpenDescriptors()V

    .line 861
    const/4 v0, 0x1

    return v0

    .line 864
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
