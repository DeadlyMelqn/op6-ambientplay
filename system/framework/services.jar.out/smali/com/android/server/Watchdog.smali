.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field public static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/android/server/Watchdog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/Watchdog;->-assertionsDisabled:Z

    .line 89
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "/system/bin/audioserver"

    aput-object v1, v0, v3

    .line 91
    const-string/jumbo v1, "/system/bin/cameraserver"

    aput-object v1, v0, v4

    .line 92
    const-string/jumbo v1, "/system/bin/drmserver"

    aput-object v1, v0, v5

    .line 93
    const-string/jumbo v1, "/system/bin/mediadrmserver"

    aput-object v1, v0, v6

    .line 94
    const-string/jumbo v1, "/system/bin/mediaserver"

    aput-object v1, v0, v7

    .line 95
    const-string/jumbo v1, "/system/bin/sdcard"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "/system/bin/surfaceflinger"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "media.extractor"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "media.codec"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "com.android.bluetooth"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "com.android.commands.monkey"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 89
    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "android.hardware.audio@2.0::IDevicesFactory"

    aput-object v1, v0, v3

    .line 110
    const-string/jumbo v1, "android.hardware.bluetooth@1.0::IBluetoothHci"

    aput-object v1, v0, v4

    .line 111
    const-string/jumbo v1, "android.hardware.camera.provider@2.4::ICameraProvider"

    aput-object v1, v0, v5

    .line 112
    const-string/jumbo v1, "android.hardware.graphics.composer@2.1::IComposer"

    aput-object v1, v0, v6

    .line 113
    const-string/jumbo v1, "android.hardware.media.omx@1.0::IOmx"

    aput-object v1, v0, v7

    .line 114
    const-string/jumbo v1, "android.hardware.sensors@1.0::ISensors"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "android.hardware.vr@1.0::IVr"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 108
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const-wide/32 v4, 0xea60

    .line 265
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 273
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 274
    const-string/jumbo v3, "foreground thread"

    move-object v1, p0

    .line 273
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 275
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 279
    const-string/jumbo v3, "main thread"

    move-object v1, p0

    .line 278
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 282
    const-string/jumbo v3, "ui thread"

    move-object v1, p0

    .line 281
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 285
    const-string/jumbo v3, "i/o thread"

    move-object v1, p0

    .line 284
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 288
    const-string/jumbo v3, "display thread"

    move-object v1, p0

    .line 287
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 293
    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    .line 296
    sget-boolean v0, Lcom/android/server/Watchdog;->-assertionsDisabled:Z

    .line 298
    return-void
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "writeTo"    # Ljava/io/File;
    .param p2, "copyFrom"    # Ljava/io/File;

    .prologue
    .line 740
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 741
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 742
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 745
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 746
    invoke-virtual {v3, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 747
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 751
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Exception while writing watchdog traces to new file!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 755
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 749
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 750
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private binderStateRead()V
    .locals 6

    .prologue
    .line 759
    :try_start_0
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Collect Binder Transaction Status Information"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v4, "/sys/kernel/debug/binder/state"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, "binder_state_in":Ljava/io/FileReader;
    new-instance v1, Ljava/io/FileWriter;

    const-string/jumbo v4, "/data/anr/BinderTraces.txt"

    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 763
    .local v1, "binder_state_out":Ljava/io/FileWriter;
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileReader;->read()I

    move-result v2

    .local v2, "c":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 764
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 768
    .end local v0    # "binder_state_in":Ljava/io/FileReader;
    .end local v1    # "binder_state_out":Ljava/io/FileWriter;
    .end local v2    # "c":I
    :catch_0
    move-exception v3

    .line 769
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Failed to collect state file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 766
    .restart local v0    # "binder_state_in":Ljava/io/FileReader;
    .restart local v1    # "binder_state_out":Ljava/io/FileWriter;
    .restart local v2    # "c":I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 767
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private cleanupProcesses(J)V
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 711
    new-instance v0, Lcom/android/server/Watchdog$2;

    const-string/jumbo v2, "watchdogKillerThread"

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;J)V

    .line 720
    .local v0, "cleanupThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 722
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_0
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 725
    return-void

    .line 723
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 386
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 388
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doSysRq(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 730
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 731
    .local v1, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    .line 732
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Watchdog"

    const-string/jumbo v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 774
    const-string/jumbo v1, "dalvik.vm.stack-trace-file"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 776
    :cond_0
    return-object v2

    .line 779
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 780
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 368
    .local v0, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 376
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 377
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 261
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private getInterestingHalPids()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v5

    .line 399
    .local v5, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    invoke-interface {v5}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 400
    .local v0, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 401
    .local v4, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 402
    .local v2, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v6, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 406
    sget-object v6, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v7, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 410
    iget v6, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v0    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v2    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    .end local v3    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v5    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    return-object v6

    .line 412
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .restart local v3    # "info$iterator":Ljava/util/Iterator;
    .restart local v4    # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v5    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6
.end method

.method private getInterestingNativePids()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v2

    .line 421
    .local v2, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 422
    .local v1, "nativePids":[I
    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 424
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 425
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "i":I
    :cond_0
    return-object v2
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .prologue
    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 334
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 336
    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "thread"    # Landroid/os/Handler;

    .prologue
    .line 339
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 340
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 347
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 350
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 302
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 304
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    .line 305
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    .line 304
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 307
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 315
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string/jumbo v2, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rebooting system because: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    .line 359
    .local v1, "pms":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public run()V
    .locals 51

    .prologue
    .line 434
    const/16 v44, 0x0

    .line 435
    .local v44, "waitedHalf":Z
    const/16 v24, 0x0

    .line 440
    :goto_0
    const/4 v14, 0x0

    .line 441
    .local v14, "debuggerWasConnected":I
    monitor-enter p0

    .line 442
    const-wide/16 v36, 0x7530

    .line 445
    .local v36, "timeout":J
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    move/from16 v0, v22

    move/from16 v1, v46

    if-ge v0, v1, :cond_0

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/Watchdog$HandlerChecker;

    .line 447
    .local v21, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 445
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 458
    .end local v21    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 459
    .local v34, "start":J
    :goto_2
    const-wide/16 v46, 0x0

    cmp-long v46, v36, v46

    if-lez v46, :cond_3

    .line 460
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v46

    if-eqz v46, :cond_1

    .line 461
    const/4 v14, 0x2

    .line 464
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :goto_3
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v46

    if-eqz v46, :cond_2

    .line 469
    const/4 v14, 0x2

    .line 471
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v46

    sub-long v46, v46, v34

    const-wide/16 v48, 0x7530

    sub-long v36, v48, v46

    goto :goto_2

    .line 465
    :catch_0
    move-exception v17

    .line 466
    .local v17, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v46, "Watchdog"

    move-object/from16 v0, v46

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 441
    .end local v17    # "e":Ljava/lang/InterruptedException;
    .end local v34    # "start":J
    :catchall_0
    move-exception v46

    monitor-exit p0

    throw v46

    .line 474
    .restart local v34    # "start":J
    :cond_3
    const/16 v19, 0x0

    .line 475
    .local v19, "fdLimitTriggered":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    move-object/from16 v46, v0

    if-eqz v46, :cond_4

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v19

    .line 479
    .end local v19    # "fdLimitTriggered":Z
    :cond_4
    if-nez v19, :cond_b

    .line 480
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v43

    .line 481
    .local v43, "waitState":I
    if-nez v43, :cond_6

    .line 483
    const/16 v44, 0x0

    :cond_5
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    .line 485
    :cond_6
    const/16 v46, 0x1

    move/from16 v0, v43

    move/from16 v1, v46

    if-eq v0, v1, :cond_5

    .line 488
    const/16 v46, 0x2

    move/from16 v0, v43

    move/from16 v1, v46

    if-ne v0, v1, :cond_7

    .line 489
    if-nez v44, :cond_5

    .line 492
    :try_start_4
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v29, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v46

    .line 494
    const/16 v47, 0x1

    .line 495
    const/16 v48, 0x0

    const/16 v49, 0x0

    .line 494
    move/from16 v0, v47

    move-object/from16 v1, v29

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    move-object/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v24

    .line 496
    .local v24, "initialStack":Ljava/io/File;
    const/16 v44, 0x1

    .line 499
    const-string/jumbo v46, "sys.debug.watchdog"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-nez v46, :cond_5

    .line 500
    const-wide/16 v46, 0x7530

    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-direct {v0, v1, v2}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    goto :goto_4

    .line 508
    .end local v24    # "initialStack":Ljava/io/File;
    .end local v29    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v11

    .line 509
    .local v11, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v33

    .line 514
    .end local v43    # "waitState":I
    .local v33, "subject":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .local v10, "allowRestart":Z
    monitor-exit p0

    .line 520
    const/16 v46, 0xaf2

    move/from16 v0, v46

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 522
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .restart local v29    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v46, v0

    if-lez v46, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_8
    xor-int/lit8 v46, v44, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v47

    const/16 v48, 0x0

    const/16 v49, 0x0

    .line 527
    move/from16 v0, v46

    move-object/from16 v1, v29

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    move-object/from16 v4, v47

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v20

    .line 530
    .local v20, "finalStack":Ljava/io/File;
    const-string/jumbo v46, "1"

    const-string/jumbo v47, "ro.debuggable"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_9

    .line 531
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    .line 536
    :cond_9
    const-wide/16 v46, 0x7d0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemClock;->sleep(J)V

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 543
    const-string/jumbo v46, "dalvik.vm.stack-trace-dir"

    const-string/jumbo v47, ""

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 544
    .local v41, "tracesDirProp":Ljava/lang/String;
    move-object/from16 v31, v20

    .line 545
    .local v31, "stackFd":Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->isEmpty()Z

    move-result v46

    if-eqz v46, :cond_e

    .line 546
    const-string/jumbo v46, "dalvik.vm.stack-trace-file"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 547
    .local v42, "tracesPath":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "_SystemServer_WDT"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v47, v0

    new-instance v48, Ljava/util/Date;

    invoke-direct/range {v48 .. v48}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v47 .. v48}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v47

    .line 547
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 550
    .local v38, "traceFileNameAmendment":Ljava/lang/String;
    if-eqz v42, :cond_d

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v46

    if-eqz v46, :cond_d

    .line 551
    new-instance v39, Ljava/io/File;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .local v39, "traceRenameFile":Ljava/io/File;
    const-string/jumbo v46, "."

    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    .line 554
    .local v26, "lpos":I
    const/16 v46, -0x1

    move/from16 v0, v46

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    .line 555
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v47, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v47

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 556
    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v47

    .line 555
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 560
    .local v28, "newTracesPath":Ljava/lang/String;
    :goto_6
    new-instance v46, Ljava/io/File;

    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 561
    new-instance v31, Ljava/io/File;

    .end local v31    # "stackFd":Ljava/io/File;
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .end local v26    # "lpos":I
    .end local v28    # "newTracesPath":Ljava/lang/String;
    .end local v38    # "traceFileNameAmendment":Ljava/lang/String;
    .end local v39    # "traceRenameFile":Ljava/io/File;
    .end local v42    # "tracesPath":Ljava/lang/String;
    .restart local v31    # "stackFd":Ljava/io/File;
    :goto_7
    move-object/from16 v27, v31

    .line 616
    .local v27, "newFd":Ljava/io/File;
    new-instance v15, Lcom/android/server/Watchdog$1;

    const-string/jumbo v46, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v33

    move-object/from16 v3, v27

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 623
    .local v15, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 625
    const-wide/16 v46, 0x7d0

    :try_start_5
    move-wide/from16 v0, v46

    invoke-virtual {v15, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 633
    :goto_8
    const-string/jumbo v46, "persist.sys.crashOnWatchdog"

    const/16 v47, 0x0

    .line 632
    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 634
    .local v13, "crashOnWatchdog":Z
    if-eqz v13, :cond_a

    .line 637
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "Triggering SysRq for system_server watchdog"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/16 v46, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 639
    const/16 v46, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 642
    const-wide/16 v46, 0xbb8

    invoke-static/range {v46 .. v47}, Landroid/os/SystemClock;->sleep(J)V

    .line 645
    const/16 v46, 0x63

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 649
    :cond_a
    monitor-enter p0

    .line 650
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .local v12, "controller":Landroid/app/IActivityController;
    monitor-exit p0

    .line 652
    if-eqz v12, :cond_13

    .line 653
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "Reporting stuck state to activity controller"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :try_start_7
    const-string/jumbo v46, "Service dumps disabled due to hung system process."

    invoke-static/range {v46 .. v46}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v30

    .line 658
    .local v30, "res":I
    if-ltz v30, :cond_13

    .line 659
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "Activity controller requested to coninue to wait"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 660
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 511
    .end local v10    # "allowRestart":Z
    .end local v11    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v12    # "controller":Landroid/app/IActivityController;
    .end local v13    # "crashOnWatchdog":Z
    .end local v15    # "dropboxThread":Ljava/lang/Thread;
    .end local v20    # "finalStack":Ljava/io/File;
    .end local v27    # "newFd":Ljava/io/File;
    .end local v29    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "res":I
    .end local v31    # "stackFd":Ljava/io/File;
    .end local v33    # "subject":Ljava/lang/String;
    .end local v41    # "tracesDirProp":Ljava/lang/String;
    :cond_b
    :try_start_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 512
    .restart local v11    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string/jumbo v33, "Open FD high water mark reached"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .restart local v33    # "subject":Ljava/lang/String;
    goto/16 :goto_5

    .line 558
    .restart local v10    # "allowRestart":Z
    .restart local v20    # "finalStack":Ljava/io/File;
    .restart local v26    # "lpos":I
    .restart local v29    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v31    # "stackFd":Ljava/io/File;
    .restart local v38    # "traceFileNameAmendment":Ljava/lang/String;
    .restart local v39    # "traceRenameFile":Ljava/io/File;
    .restart local v41    # "tracesDirProp":Ljava/lang/String;
    .restart local v42    # "tracesPath":Ljava/lang/String;
    :cond_c
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "newTracesPath":Ljava/lang/String;
    goto/16 :goto_6

    .line 563
    .end local v26    # "lpos":I
    .end local v28    # "newTracesPath":Ljava/lang/String;
    .end local v39    # "traceRenameFile":Ljava/io/File;
    :cond_d
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "dump WDT Traces: no trace path configured"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 567
    .end local v38    # "traceFileNameAmendment":Ljava/lang/String;
    .end local v42    # "tracesPath":Ljava/lang/String;
    :cond_e
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "traces_SystemServer_WDT"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v47, v0

    new-instance v48, Ljava/util/Date;

    invoke-direct/range {v48 .. v48}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v47 .. v48}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v47

    .line 567
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 568
    const-string/jumbo v47, "_pid"

    .line 567
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 569
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v47

    .line 567
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 570
    .restart local v28    # "newTracesPath":Ljava/lang/String;
    new-instance v40, Ljava/io/File;

    invoke-direct/range {v40 .. v41}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    .local v40, "tracesDir":Ljava/io/File;
    new-instance v45, Ljava/io/File;

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 574
    .local v45, "watchdogTraces":Ljava/io/File;
    :try_start_9
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->createNewFile()Z

    move-result v46

    if-eqz v46, :cond_12

    .line 575
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v46

    .line 576
    const/16 v47, 0x180

    const/16 v48, -0x1

    const/16 v49, -0x1

    .line 575
    invoke-static/range {v46 .. v49}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 581
    if-eqz v24, :cond_10

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 586
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v48

    .line 585
    sub-long v8, v46, v48

    .line 587
    .local v8, "age":J
    const-wide/32 v6, 0xea60

    .line 588
    .local v6, "MINUTE_IN_MILLIS":J
    const-wide/32 v46, 0xea60

    cmp-long v46, v8, v46

    if-gez v46, :cond_f

    .line 589
    const-string/jumbo v46, "Watchdog"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "First set of traces taken from "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 590
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v48

    .line 589
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    .line 597
    .end local v6    # "MINUTE_IN_MILLIS":J
    .end local v8    # "age":J
    :cond_f
    :goto_9
    if-eqz v20, :cond_11

    .line 598
    const-string/jumbo v46, "Watchdog"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Second set of traces taken from "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 599
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v48

    .line 598
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_7

    .line 607
    :catch_1
    move-exception v25

    .line 608
    .local v25, "ioe":Ljava/io/IOException;
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "Exception creating Watchdog dump file:"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 594
    .end local v25    # "ioe":Ljava/io/IOException;
    :cond_10
    :try_start_a
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "First set of traces are empty!"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 602
    :cond_11
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "Second set of traces are empty!"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 605
    :cond_12
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "Unable to create Watchdog dump file: createNewFile failed"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_7

    .line 626
    .end local v28    # "newTracesPath":Ljava/lang/String;
    .end local v40    # "tracesDir":Ljava/io/File;
    .end local v45    # "watchdogTraces":Ljava/io/File;
    .restart local v15    # "dropboxThread":Ljava/lang/Thread;
    .restart local v27    # "newFd":Ljava/io/File;
    :catch_2
    move-exception v23

    .local v23, "ignored":Ljava/lang/InterruptedException;
    goto/16 :goto_8

    .line 649
    .end local v23    # "ignored":Ljava/lang/InterruptedException;
    .restart local v13    # "crashOnWatchdog":Z
    :catchall_1
    move-exception v46

    monitor-exit p0

    throw v46

    .line 663
    .restart local v12    # "controller":Landroid/app/IActivityController;
    :catch_3
    move-exception v16

    .line 668
    :cond_13
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v46

    if-eqz v46, :cond_14

    .line 669
    const/4 v14, 0x2

    .line 671
    :cond_14
    const/16 v46, 0x2

    move/from16 v0, v46

    if-lt v14, v0, :cond_15

    .line 672
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_a
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 673
    :cond_15
    if-lez v14, :cond_16

    .line 674
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 675
    :cond_16
    if-nez v10, :cond_17

    .line 676
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 678
    :cond_17
    const-string/jumbo v46, "Watchdog"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/16 v22, 0x0

    :goto_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v46

    move/from16 v0, v22

    move/from16 v1, v46

    if-ge v0, v1, :cond_19

    .line 680
    const-string/jumbo v47, "Watchdog"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v48, " stack trace:"

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    move/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v32

    .line 683
    .local v32, "stackTrace":[Ljava/lang/StackTraceElement;
    const/16 v46, 0x0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v47, v0

    :goto_c
    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_18

    aget-object v18, v32, v46

    .line 684
    .local v18, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v48, "Watchdog"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "    at "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    add-int/lit8 v46, v46, 0x1

    goto :goto_c

    .line 679
    .end local v18    # "element":Ljava/lang/StackTraceElement;
    :cond_18
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 689
    .end local v32    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_19
    const-string/jumbo v46, "sys.debug.watchdog"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_1a

    .line 690
    const/16 v44, 0x0

    .line 691
    goto/16 :goto_0

    .line 693
    :cond_1a
    const-wide/32 v46, 0xea60

    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-direct {v0, v1, v2}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    .line 694
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v46

    if-eqz v46, :cond_1b

    .line 695
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "*** GOODBYE!"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v46

    invoke-static/range {v46 .. v46}, Landroid/os/Process;->killProcess(I)V

    .line 697
    const/16 v46, 0xa

    invoke-static/range {v46 .. v46}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_a

    .line 699
    :cond_1b
    const-string/jumbo v46, "Watchdog"

    const-string/jumbo v47, "the status is completed after KillingAllProcessesByWatchdog skip killing system_server"

    invoke-static/range {v46 .. v47}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 321
    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1
    .param p1, "allowRestart"    # Z

    .prologue
    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 327
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
