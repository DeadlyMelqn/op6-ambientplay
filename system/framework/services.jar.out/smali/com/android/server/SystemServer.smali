.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303cb

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_SystemServer-mthref-0()V
    .locals 0

    .prologue
    .line 529
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string/jumbo v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 160
    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 300
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 301
    return-void
.end method

.method private createSystemContext()V
    .locals 4

    .prologue
    const v3, 0x10303cb

    .line 510
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 511
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 512
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 514
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 515
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v3}, Landroid/content/Context;->setTheme(I)V

    .line 516
    return-void
.end method

.method private isFirstBootOrUpgrade()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_SystemServer_31041()V
    .locals 4

    .prologue
    .line 672
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 673
    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    .line 672
    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 674
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string/jumbo v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 676
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_SystemServer_36818()V
    .locals 6

    .prologue
    .line 788
    :try_start_0
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "SecondaryZygotePreload"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v1, Landroid/util/TimingsTraceLog;

    .line 790
    const-string/jumbo v2, "SystemServerTimingAsync"

    const-wide/32 v4, 0x80000

    .line 789
    invoke-direct {v1, v2, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 791
    .local v1, "traceLog":Landroid/util/TimingsTraceLog;
    const-string/jumbo v2, "SecondaryZygotePreload"

    invoke-virtual {v1, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 792
    sget-object v2, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 793
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "Unable to preload default resources"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "Exception preloading default resources"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_SystemServer_41366()V
    .locals 4

    .prologue
    .line 888
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 889
    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    .line 888
    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 890
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string/jumbo v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 891
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 892
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 293
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 294
    return-void
.end method

.method private performPendingShutdown()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 457
    const-string/jumbo v8, "sys.shutdown.requested"

    const-string/jumbo v9, ""

    .line 456
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "shutdownAction":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 459
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_0

    const/4 v5, 0x1

    .line 462
    .local v5, "reboot":Z
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_1

    .line 463
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 473
    :goto_1
    if-eqz v4, :cond_2

    const-string/jumbo v8, "recovery-update"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 474
    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "/cache/recovery/uncrypt_file"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v3, "packageFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 476
    const/4 v1, 0x0

    .line 478
    .local v1, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-static {v3, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 483
    .end local v1    # "filename":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v8, "/data"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 484
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/cache/recovery/block.map"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 485
    const-string/jumbo v8, "SystemServer"

    const-string/jumbo v9, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    .line 459
    .end local v3    # "packageFile":Ljava/io/File;
    .end local v5    # "reboot":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "reboot":Z
    goto :goto_0

    .line 465
    :cond_1
    const/4 v4, 0x0

    .local v4, "reason":Ljava/lang/String;
    goto :goto_1

    .line 479
    .end local v4    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v3    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v8, "SystemServer"

    const-string/jumbo v9, "Error reading uncrypt package file"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 492
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "packageFile":Ljava/io/File;
    :cond_2
    new-instance v6, Lcom/android/server/SystemServer$1;

    invoke-direct {v6, p0, v5, v4}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 502
    .local v6, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 503
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 504
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    .end local v2    # "msg":Landroid/os/Message;
    .end local v5    # "reboot":Z
    .end local v6    # "runnable":Ljava/lang/Runnable;
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 451
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    return-void
.end method

.method private run()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x5265c00

    const/4 v8, 0x0

    .line 305
    :try_start_0
    const-string/jumbo v5, "InitBeforeStartServices"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-gez v5, :cond_0

    .line 311
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "System clock is before 1970; setting to 1970."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-wide/32 v6, 0x5265c00

    invoke-static {v6, v7}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 318
    :cond_0
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "timezoneProperty":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    :cond_1
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Timezone not set; setting to GMT."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string/jumbo v5, "persist.sys.timezone"

    const-string/jumbo v6, "GMT"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_2
    const-string/jumbo v5, "persist.sys.language"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 333
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "languageTag":Ljava/lang/String;
    const-string/jumbo v5, "persist.sys.locale"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v5, "persist.sys.language"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v5, "persist.sys.country"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v5, "persist.sys.localevar"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v2    # "languageTag":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    invoke-static {v5}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 345
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Entered the Android system server!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    long-to-int v4, v6

    .line 347
    .local v4, "uptimeMillis":I
    const/16 v5, 0xbc2

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 348
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v5, :cond_4

    .line 349
    const-string/jumbo v5, "boot_system_server_init"

    const/4 v6, 0x0

    invoke-static {v6, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 359
    :cond_4
    const-string/jumbo v5, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 366
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    const v6, 0x3f4ccccd    # 0.8f

    invoke-virtual {v5, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 370
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 374
    const/4 v5, 0x1

    invoke-static {v5}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 378
    const/4 v5, 0x1

    invoke-static {v5}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 381
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 384
    const/16 v5, 0x1f

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 388
    const/4 v5, -0x2

    .line 387
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 389
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 390
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 393
    const-string/jumbo v5, "android_servers"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 400
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 403
    new-instance v5, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 404
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->setRuntimeRestarted(Z)V

    .line 405
    const-class v5, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 407
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 414
    :try_start_1
    const-string/jumbo v5, "StartServices"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 416
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 417
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 418
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 424
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 428
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 429
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Enabled StrictMode for system server main thread."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    long-to-int v4, v6

    .line 433
    const-string/jumbo v5, "boot_system_server_ready"

    invoke-static {v8, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 434
    const v0, 0xea60

    .line 435
    .local v0, "MAX_UPTIME_MILLIS":I
    const v5, 0xea60

    if-le v4, v5, :cond_6

    .line 436
    const-string/jumbo v5, "SystemServerTiming"

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v0    # "MAX_UPTIME_MILLIS":I
    :cond_6
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 443
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Main thread loop unexpectedly exited"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 408
    .end local v3    # "timezoneProperty":Ljava/lang/String;
    .end local v4    # "uptimeMillis":I
    :catchall_0
    move-exception v5

    .line 409
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 408
    throw v5

    .line 419
    .restart local v3    # "timezoneProperty":Ljava/lang/String;
    .restart local v4    # "uptimeMillis":I
    :catch_0
    move-exception v1

    .line 420
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v5, "System"

    const-string/jumbo v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string/jumbo v5, "System"

    const-string/jumbo v6, "************ Failure starting system services"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 423
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    .line 424
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 423
    throw v5
.end method

.method private startBootstrapServices()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 526
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Reading configuration..."

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string/jumbo v0, "ReadingSystemConfig"

    .line 528
    .local v0, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string/jumbo v6, "ReadingSystemConfig"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v9, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$0:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const-string/jumbo v10, "ReadingSystemConfig"

    invoke-virtual {v6, v9, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 530
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 535
    const-string/jumbo v6, "StartInstaller"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 536
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Installer;

    .line 537
    .local v4, "installer":Lcom/android/server/pm/Installer;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 541
    const-string/jumbo v6, "DeviceIdentifiersPolicyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 542
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 543
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 546
    const-string/jumbo v6, "StartActivityManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 547
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 548
    const-class v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 547
    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 549
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 550
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 551
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 557
    const-string/jumbo v6, "StartPowerManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 558
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 559
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 563
    const-string/jumbo v6, "InitPowerManagement"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 564
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 565
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 568
    const-string/jumbo v6, "config.disable_noncore"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 569
    const-string/jumbo v6, "StartRecoverySystemService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 570
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 571
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 577
    :cond_0
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 580
    const-string/jumbo v6, "StartLightsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 581
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/lights/LightsService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 582
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 586
    const-string/jumbo v6, "StartDisplayManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 587
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 588
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 591
    const-string/jumbo v6, "WaitForDisplay"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 592
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x64

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 593
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 596
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 598
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 605
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 606
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Regionalization Service"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v5, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v5}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 608
    .local v5, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v6, "regionalization"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 612
    .end local v5    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v6, :cond_3

    .line 613
    const-string/jumbo v6, "boot_package_manager_init_start"

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    long-to-int v9, v10

    .line 613
    invoke-static {v12, v6, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 616
    :cond_3
    const-string/jumbo v6, "StartPackageManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 617
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 618
    iget v6, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 617
    invoke-static {v9, v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 619
    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 620
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 621
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 622
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 623
    const-string/jumbo v6, "boot_package_manager_init_ready"

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    long-to-int v7, v10

    .line 623
    invoke-static {v12, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 629
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_5

    .line 630
    const-string/jumbo v6, "config.disable_otadexopt"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 632
    .local v2, "disableOtaDexopt":Z
    if-nez v2, :cond_5

    .line 633
    const-string/jumbo v6, "StartOtaDexOptService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 635
    :try_start_0
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v7}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 644
    .end local v2    # "disableOtaDexopt":Z
    :cond_5
    :goto_2
    const-string/jumbo v6, "StartUserManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 645
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 646
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 649
    const-string/jumbo v6, "InitAttributerCache"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 650
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 651
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 654
    const-string/jumbo v6, "SetSystemProcess"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 655
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 656
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 660
    iget-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 663
    const-string/jumbo v6, "StartOverlayManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 664
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v7, Lcom/android/server/om/OverlayManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v7, v8, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 665
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 671
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$1:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    .line 677
    const-string/jumbo v8, "StartSensorService"

    .line 671
    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 678
    return-void

    .line 600
    :cond_6
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 601
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Device encrypted - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 618
    goto/16 :goto_1

    .line 636
    .restart local v2    # "disableOtaDexopt":Z
    :catch_0
    move-exception v3

    .line 637
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v6, "starting OtaDexOptService"

    invoke-direct {p0, v6, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_2

    .line 638
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 639
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 638
    throw v6
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 685
    const-string/jumbo v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 687
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 689
    const-string/jumbo v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 692
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 695
    const-string/jumbo v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 697
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 698
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 697
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 699
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 702
    const-string/jumbo v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 704
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 705
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .locals 109

    .prologue
    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 713
    .local v4, "context":Landroid/content/Context;
    const/16 v98, 0x0

    .line 714
    .local v98, "vibrator":Lcom/android/server/VibratorService;
    const/16 v94, 0x0

    .line 715
    .local v94, "storageManager":Landroid/os/storage/IStorageManager;
    const/16 v78, 0x0

    .line 716
    .local v78, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v83, 0x0

    .line 717
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v79, 0x0

    .line 718
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v30, 0x0

    .line 719
    .local v30, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v81, 0x0

    .line 720
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v90, 0x0

    .line 721
    .local v90, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v107, 0x0

    .line 722
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v88, 0x0

    .line 723
    .local v88, "serial":Lcom/android/server/SerialService;
    const/16 v84, 0x0

    .line 724
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v27, 0x0

    .line 725
    .local v27, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v62, 0x0

    .line 726
    .local v62, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v96, 0x0

    .line 727
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v32, 0x0

    .line 728
    .local v32, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v22, 0x0

    .line 729
    .local v22, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v58, 0x0

    .line 732
    .local v58, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v72, 0x0

    .line 737
    .local v72, "mSDService":Lcom/android/server/oneplus/display/SDService;
    const/16 v69, 0x0

    .line 738
    .local v69, "mOemExService":Lcom/android/server/OemExService;
    const/16 v70, 0x0

    .line 743
    .local v70, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    const/16 v71, 0x0

    .line 746
    .local v71, "mOnePlusPowerController":Lcom/android/server/OnePlusPowerController;
    const/16 v105, 0x0

    .line 747
    .local v105, "wigigP2pService":Ljava/lang/Object;
    const/16 v106, 0x0

    .line 749
    .local v106, "wigigService":Ljava/lang/Object;
    const-string/jumbo v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 750
    .local v49, "disableStorage":Z
    const-string/jumbo v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 751
    .local v38, "disableBluetooth":Z
    const-string/jumbo v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 752
    .local v41, "disableLocation":Z
    const-string/jumbo v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 753
    .local v50, "disableSystemUI":Z
    const-string/jumbo v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 754
    .local v45, "disableNonCoreServices":Z
    const-string/jumbo v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 755
    .local v43, "disableNetwork":Z
    const-string/jumbo v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 756
    .local v44, "disableNetworkTime":Z
    const-string/jumbo v6, "config.disable_rtt"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 757
    .local v46, "disableRtt":Z
    const-string/jumbo v6, "config.disable_mediaproj"

    .line 758
    const/4 v7, 0x0

    .line 757
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 759
    .local v42, "disableMediaProjection":Z
    const-string/jumbo v6, "config.disable_serial"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 760
    .local v48, "disableSerial":Z
    const-string/jumbo v6, "config.disable_searchmanager"

    .line 761
    const/4 v7, 0x0

    .line 760
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 762
    .local v47, "disableSearchManager":Z
    const-string/jumbo v6, "config.disable_trustmanager"

    .line 763
    const/4 v7, 0x0

    .line 762
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 764
    .local v52, "disableTrustManager":Z
    const-string/jumbo v6, "config.disable_textservices"

    .line 765
    const/4 v7, 0x0

    .line 764
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 766
    .local v51, "disableTextServices":Z
    const-string/jumbo v6, "config.disable_consumerir"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 767
    .local v40, "disableConsumerIr":Z
    const-string/jumbo v6, "config.disable_vrmanager"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 768
    .local v53, "disableVrManager":Z
    const-string/jumbo v6, "config.disable_cameraservice"

    .line 769
    const/4 v7, 0x0

    .line 768
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 770
    .local v39, "disableCameraService":Z
    const-string/jumbo v6, "config.enable_lefty"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 772
    .local v56, "enableLeftyService":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    .line 773
    .local v63, "isEmulator":Z
    const-string/jumbo v6, "persist.vendor.wigig.enable"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 776
    .local v57, "enableWigig":Z
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "debug.crash_system"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 777
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    .line 781
    :cond_0
    :try_start_0
    const-string/jumbo v25, "SecondaryZygotePreload"

    .line 786
    .local v25, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$2:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    .line 799
    const-string/jumbo v8, "SecondaryZygotePreload"

    .line 786
    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 801
    const-string/jumbo v6, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 802
    const-string/jumbo v6, "sec_key_att_app_id_provider"

    .line 803
    new-instance v7, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v7, v4}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    .line 802
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 804
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 806
    const-string/jumbo v6, "StartKeyChainSystemService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 808
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 810
    const-string/jumbo v6, "StartSchedulingPolicyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 811
    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 812
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 814
    const-string/jumbo v6, "StartTelecomLoaderService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 816
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 818
    const-string/jumbo v6, "StartTelephonyRegistry"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 819
    new-instance v97, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v97

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_32

    .line 820
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v97, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v97

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 821
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 823
    const-string/jumbo v6, "StartEntropyMixer"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 824
    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 825
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 827
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 830
    const-string/jumbo v6, "StartAccountManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 832
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 834
    const-string/jumbo v6, "StartContentService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 836
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 838
    const-string/jumbo v6, "InstallSystemProviders"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 840
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 842
    const-string/jumbo v6, "StartVibratorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 843
    new-instance v99, Lcom/android/server/VibratorService;

    move-object/from16 v0, v99

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_33

    .line 844
    .local v99, "vibrator":Lcom/android/server/VibratorService;
    :try_start_2
    const-string/jumbo v6, "vibrator"

    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v99

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 845
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 847
    if-nez v40, :cond_1

    .line 848
    const-string/jumbo v6, "StartConsumerIrService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 849
    new-instance v33, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_34

    .line 850
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_3
    const-string/jumbo v6, "consumer_ir"

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v33

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 851
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_35

    move-object/from16 v32, v33

    .line 854
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :cond_1
    :try_start_4
    const-string/jumbo v6, "StartAlarmManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 856
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 858
    const-string/jumbo v6, "InitWatchdog"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 859
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v101

    .line 860
    .local v101, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v101

    invoke-virtual {v0, v4, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 861
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 863
    const-string/jumbo v6, "StartInputManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 864
    new-instance v5, Lcom/android/server/input/InputManagerService;

    invoke-direct {v5, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_34

    .line 865
    .local v5, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 867
    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v6, "StartWindowManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string/jumbo v7, "StartSensorService"

    invoke-static {v6, v7}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 870
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 872
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_44

    const/4 v6, 0x1

    .line 873
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    xor-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v9, Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {v9}, Lcom/android/server/policy/OemPhoneWindowManager;-><init>()V

    .line 871
    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLandroid/view/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v107

    .line 874
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v6, "window"

    move-object/from16 v0, v107

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 875
    const-string/jumbo v6, "input"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 876
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 880
    new-instance v73, Lcom/android/server/oneplus/display/SDService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Lcom/android/server/oneplus/display/SDService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_36

    .line 881
    .local v73, "mSDService":Lcom/android/server/oneplus/display/SDService;
    :try_start_6
    const-string/jumbo v6, "smartdisplay"

    .end local v72    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    move-object/from16 v0, v73

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 887
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$3:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    .line 893
    const-string/jumbo v8, "StartHidlServices"

    .line 887
    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 895
    if-nez v53, :cond_2

    .line 896
    const-string/jumbo v6, "StartVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 898
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 901
    :cond_2
    const-string/jumbo v6, "SetWindowManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v107

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 903
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 905
    const-string/jumbo v6, "StartInputManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 907
    invoke-virtual {v5}, Lcom/android/server/input/InputManagerService;->start()V

    .line 908
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 911
    const-string/jumbo v6, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 913
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 918
    if-eqz v63, :cond_45

    .line 919
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :goto_1
    const-string/jumbo v6, "IpConnectivityMetrics"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 935
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 937
    const-string/jumbo v6, "PinnerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 939
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 943
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "LongScreenShot Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string/jumbo v6, "longshot"

    .line 945
    invoke-static {v4}, Lcom/oneplus/longshot/LongScreenshotManagerService;->getInstance(Landroid/content/Context;)Lcom/oneplus/longshot/LongScreenshotManagerService;

    move-result-object v7

    .line 944
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.oneplus.server.OnePlusService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v72, v73

    .end local v73    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .local v72, "mSDService":Lcom/android/server/oneplus/display/SDService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v98, v99

    .line 958
    .end local v25    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v72    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v99    # "vibrator":Lcom/android/server/VibratorService;
    .end local v101    # "watchdog":Lcom/android/server/Watchdog;
    .end local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_2
    const/16 v92, 0x0

    .line 959
    .local v92, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v86, 0x0

    .line 960
    .local v86, "notification":Landroid/app/INotificationManager;
    const/16 v65, 0x0

    .line 961
    .local v65, "location":Lcom/android/server/LocationManagerService;
    const/16 v34, 0x0

    .line 962
    .local v34, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v67, 0x0

    .line 963
    .local v67, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v74, 0x0

    .line 966
    .local v74, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 967
    const-string/jumbo v6, "StartInputMethodManagerLifecycle"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 969
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 971
    const-string/jumbo v6, "StartAccessibilityManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 973
    :try_start_7
    const-string/jumbo v6, "accessibility"

    .line 974
    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 973
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 978
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 981
    :cond_3
    const-string/jumbo v6, "MakeDisplayReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 983
    :try_start_8
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 987
    :goto_4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 989
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 990
    if-nez v49, :cond_4

    .line 991
    const-string/jumbo v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 990
    if-eqz v6, :cond_4

    .line 992
    const-string/jumbo v6, "StartStorageManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 998
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1000
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 999
    invoke-static {v6}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v94

    .line 1004
    .end local v94    # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1006
    const-string/jumbo v6, "StartStorageStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1008
    :try_start_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 1012
    :goto_6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1018
    :cond_4
    const-string/jumbo v6, "StartUiModeManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1020
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1022
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_5

    .line 1023
    const-string/jumbo v6, "UpdatePackagesIfNeeded"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1025
    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .line 1029
    :goto_7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1032
    :cond_5
    const-string/jumbo v6, "PerformFstrimIfNeeded"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1034
    :try_start_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 1038
    :goto_8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1042
    const-string/jumbo v6, "ro.build.version.ota"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1043
    .local v37, "curVersion":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.version.ota"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 1044
    .local v64, "lastVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1045
    :cond_6
    const-string/jumbo v6, ""

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 1044
    if-eqz v6, :cond_7

    .line 1046
    const-string/jumbo v6, "persist.sys.version.ota"

    move-object/from16 v0, v37

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string/jumbo v6, "persist.sys.version.lastota"

    move-object/from16 v0, v64

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3a

    .line 1052
    if-nez v45, :cond_b

    .line 1053
    const-string/jumbo v6, "StartLockSettingsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1055
    :try_start_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1057
    const-string/jumbo v6, "lock_settings"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1056
    invoke-static {v6}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    move-result-object v67

    .line 1061
    .end local v67    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1063
    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v60, v6, 0x1

    .line 1064
    .local v60, "hasPdb":Z
    if-eqz v60, :cond_8

    .line 1065
    const-string/jumbo v6, "StartPersistentDataBlock"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1067
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1070
    :cond_8
    if-nez v60, :cond_9

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1072
    :cond_9
    const-string/jumbo v6, "StartOemLockService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1074
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1077
    :cond_a
    const-string/jumbo v6, "StartDeviceIdleController"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1079
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1083
    const-string/jumbo v6, "StartOnePlusPowerController"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1085
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1090
    const-string/jumbo v6, "StartDevicePolicyManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1092
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1095
    .end local v60    # "hasPdb":Z
    :cond_b
    if-nez v50, :cond_c

    .line 1096
    const-string/jumbo v6, "StartStatusBarManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1098
    :try_start_e
    new-instance v93, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v93

    move-object/from16 v1, v107

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 1099
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v93, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_f
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v93

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_31

    move-object/from16 v92, v93

    .line 1103
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1106
    :cond_c
    if-nez v45, :cond_d

    .line 1107
    const-string/jumbo v6, "StartClipboardService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1109
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1112
    :cond_d
    if-nez v43, :cond_e

    .line 1113
    const-string/jumbo v6, "StartNetworkManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1115
    :try_start_10
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v78

    .line 1116
    .local v78, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v6, "network_management"

    move-object/from16 v0, v78

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_9

    .line 1120
    .end local v78    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1123
    :cond_e
    if-nez v45, :cond_f

    xor-int/lit8 v6, v51, 0x1

    if-eqz v6, :cond_f

    .line 1124
    const-string/jumbo v6, "StartTextServicesManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1126
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1129
    :cond_f
    if-nez v43, :cond_16

    .line 1130
    const-string/jumbo v6, "StartNetworkScoreService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1132
    :try_start_11
    new-instance v82, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a

    .line 1133
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v82, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_12
    const-string/jumbo v6, "network_score"

    move-object/from16 v0, v82

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_30

    move-object/from16 v81, v82

    .line 1137
    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1139
    const-string/jumbo v6, "StartNetworkStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1141
    :try_start_13
    move-object/from16 v0, v78

    invoke-static {v4, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v83

    .line 1142
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v6, "netstats"

    move-object/from16 v0, v83

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_b

    .line 1146
    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1148
    const-string/jumbo v6, "StartNetworkPolicyManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1150
    :try_start_14
    new-instance v80, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1151
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1150
    move-object/from16 v0, v80

    move-object/from16 v1, v83

    move-object/from16 v2, v78

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c

    .line 1152
    .end local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v80, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_15
    const-string/jumbo v6, "netpolicy"

    move-object/from16 v0, v80

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2f

    move-object/from16 v79, v80

    .line 1156
    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1159
    const-string/jumbo v6, "StartWifi"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1161
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1162
    const-string/jumbo v6, "StartWifiScanning"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1164
    const-string/jumbo v7, "com.android.server.wifi.scanner.WifiScanningService"

    .line 1163
    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1165
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1167
    if-nez v46, :cond_10

    .line 1168
    const-string/jumbo v6, "StartWifiRtt"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1170
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1173
    :cond_10
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1174
    const-string/jumbo v7, "android.hardware.wifi.aware"

    .line 1173
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1175
    const-string/jumbo v6, "StartWifiAware"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1177
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1182
    :goto_f
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1183
    const-string/jumbo v7, "android.hardware.wifi.direct"

    .line 1182
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1184
    const-string/jumbo v6, "StartWifiP2P"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1186
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1189
    :cond_11
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1190
    const-string/jumbo v7, "android.hardware.lowpan"

    .line 1189
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1191
    const-string/jumbo v6, "StartLowpan"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1193
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1196
    :cond_12
    if-eqz v57, :cond_13

    .line 1198
    :try_start_16
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Wigig Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    new-instance v103, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/wigig-service.jar"

    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 1200
    move-object/from16 v0, v103

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1203
    .local v103, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 1202
    move-object/from16 v0, v103

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v104

    .line 1204
    .local v104, "wigigP2pClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v104

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v36

    .line 1205
    .local v36, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v105

    .line 1206
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string/jumbo v7, "wigigp2p"

    move-object/from16 v0, v105

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1210
    const-string/jumbo v6, "com.qualcomm.qti.server.wigig.WigigService"

    .line 1209
    move-object/from16 v0, v103

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v102

    .line 1211
    .local v102, "wigigClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v102

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v36

    .line 1212
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v106

    .line 1213
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Successfully loaded WigigService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const-string/jumbo v7, "wigig"

    move-object/from16 v0, v106

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_d

    .line 1220
    .end local v36    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v102    # "wigigClass":Ljava/lang/Class;
    .end local v103    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v104    # "wigigP2pClass":Ljava/lang/Class;
    .end local v105    # "wigigP2pService":Ljava/lang/Object;
    .end local v106    # "wigigService":Ljava/lang/Object;
    :cond_13
    :goto_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.ethernet"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 1221
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1220
    if-eqz v6, :cond_15

    .line 1222
    :cond_14
    const-string/jumbo v6, "StartEthernet"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1224
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1227
    :cond_15
    const-string/jumbo v6, "StartConnectivityService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1229
    :try_start_17
    new-instance v31, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v31

    move-object/from16 v1, v78

    move-object/from16 v2, v83

    move-object/from16 v3, v79

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_e

    .line 1231
    .end local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v31, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_18
    const-string/jumbo v6, "connectivity"

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1232
    move-object/from16 v0, v83

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1233
    move-object/from16 v0, v79

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_2e

    move-object/from16 v30, v31

    .line 1237
    .end local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_11
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1239
    const-string/jumbo v6, "StartNsdService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1241
    :try_start_19
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v90

    .line 1243
    .local v90, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v6, "servicediscovery"

    .line 1242
    move-object/from16 v0, v90

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_f

    .line 1247
    .end local v90    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_12
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1250
    :cond_16
    if-nez v45, :cond_17

    .line 1251
    const-string/jumbo v6, "StartUpdateLockService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1253
    :try_start_1a
    const-string/jumbo v6, "updatelock"

    .line 1254
    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 1253
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_10

    .line 1258
    :goto_13
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1266
    :cond_17
    if-eqz v94, :cond_18

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_18

    .line 1267
    const-string/jumbo v6, "WaitForAsecScan"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1269
    :try_start_1b
    invoke-interface/range {v94 .. v94}, Landroid/os/storage/IStorageManager;->waitForAsecScan()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 1272
    :goto_14
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1275
    :cond_18
    const-string/jumbo v6, "StartNotificationManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1277
    invoke-static {v4}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1279
    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1278
    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v86

    .line 1280
    .local v86, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v79

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1281
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1283
    const-string/jumbo v6, "StartDeviceMonitor"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1285
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1287
    if-nez v41, :cond_19

    .line 1288
    const-string/jumbo v6, "StartLocationManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1290
    :try_start_1c
    new-instance v66, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_12

    .line 1291
    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .local v66, "location":Lcom/android/server/LocationManagerService;
    :try_start_1d
    const-string/jumbo v6, "location"

    move-object/from16 v0, v66

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_2d

    move-object/from16 v65, v66

    .line 1295
    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    :goto_15
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1297
    const-string/jumbo v6, "StartCountryDetectorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1299
    :try_start_1e
    new-instance v35, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_13

    .line 1300
    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v35, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_1f
    const-string/jumbo v6, "country_detector"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_2c

    move-object/from16 v34, v35

    .line 1304
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_16
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1307
    :cond_19
    if-nez v45, :cond_1a

    xor-int/lit8 v6, v47, 0x1

    if-eqz v6, :cond_1a

    .line 1308
    const-string/jumbo v6, "StartSearchManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1310
    :try_start_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_14

    .line 1314
    :goto_17
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1317
    :cond_1a
    if-nez v45, :cond_1b

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1318
    const v7, 0x1120069

    .line 1317
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1319
    const-string/jumbo v6, "StartWallpaperManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1321
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1324
    :cond_1b
    const-string/jumbo v6, "StartAudioService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1326
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1328
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.broadcastradio"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1329
    const-string/jumbo v6, "StartBroadcastRadioService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1331
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1334
    :cond_1c
    if-nez v45, :cond_1d

    .line 1335
    const-string/jumbo v6, "StartDockObserver"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1337
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1339
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1340
    const-string/jumbo v6, "StartThermalObserver"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1342
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1346
    :cond_1d
    const-string/jumbo v6, "StartWiredAccessoryManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1350
    :try_start_21
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v6, v4, v5}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1349
    invoke-virtual {v5, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_15

    .line 1354
    :goto_18
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1356
    if-nez v45, :cond_22

    .line 1357
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1359
    const-string/jumbo v6, "StartMidiManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1361
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1364
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 1365
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1366
    const-string/jumbo v7, "android.hardware.usb.accessory"

    .line 1365
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1364
    if-eqz v6, :cond_20

    .line 1368
    :cond_1f
    const-string/jumbo v6, "StartUsbService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1370
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1373
    :cond_20
    if-nez v48, :cond_21

    .line 1374
    const-string/jumbo v6, "StartSerialService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1377
    :try_start_22
    new-instance v89, Lcom/android/server/SerialService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_16

    .line 1378
    .end local v88    # "serial":Lcom/android/server/SerialService;
    .local v89, "serial":Lcom/android/server/SerialService;
    :try_start_23
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v89

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_2b

    move-object/from16 v88, v89

    .line 1382
    .end local v89    # "serial":Lcom/android/server/SerialService;
    :goto_19
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1385
    :cond_21
    const-string/jumbo v6, "StartHardwarePropertiesManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1387
    :try_start_24
    new-instance v59, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_17

    .line 1388
    .end local v58    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v59, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_25
    const-string/jumbo v6, "hardware_properties"

    move-object/from16 v0, v59

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_2a

    move-object/from16 v58, v59

    .line 1393
    .end local v59    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_1a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1396
    :cond_22
    const-string/jumbo v6, "StartTwilightService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1398
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1400
    invoke-static {v4}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1401
    const-string/jumbo v6, "StartNightDisplay"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1409
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1412
    :cond_23
    const-string/jumbo v6, "StartJobScheduler"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1414
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1416
    const-string/jumbo v6, "StartSoundTrigger"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1418
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1420
    if-nez v45, :cond_29

    .line 1421
    if-nez v52, :cond_24

    .line 1422
    const-string/jumbo v6, "StartTrustManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1424
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1427
    :cond_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1428
    const-string/jumbo v6, "StartBackupManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1430
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1433
    :cond_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1434
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 1433
    if-eqz v6, :cond_27

    .line 1435
    :cond_26
    const-string/jumbo v6, "StartAppWidgerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1437
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1444
    :cond_27
    const-string/jumbo v6, "StartVoiceRecognitionManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1446
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1448
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1449
    const-string/jumbo v6, "StartGestureLauncher"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1451
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1453
    :cond_28
    const-string/jumbo v6, "StartSensorNotification"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1455
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1457
    const-string/jumbo v6, "StartContextHubSystemService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1459
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1462
    :cond_29
    const-string/jumbo v6, "StartDiskStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1464
    :try_start_26
    const-string/jumbo v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_18

    .line 1468
    :goto_1b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1475
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_4a

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1476
    const v7, 0x1120068

    .line 1475
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v91

    .line 1477
    :goto_1c
    if-eqz v91, :cond_2a

    .line 1478
    const-string/jumbo v6, "StartTimeZoneRulesManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1480
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1483
    :cond_2a
    if-nez v43, :cond_2b

    xor-int/lit8 v6, v44, 0x1

    if-eqz v6, :cond_2b

    .line 1484
    const-string/jumbo v6, "StartNetworkTimeUpdateService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1486
    :try_start_27
    new-instance v85, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_19

    .line 1487
    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v85, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_28
    const-string/jumbo v6, "network_time_update_service"

    move-object/from16 v0, v85

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_29

    move-object/from16 v84, v85

    .line 1491
    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_1d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1494
    :cond_2b
    const-string/jumbo v6, "StartCommonTimeManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1496
    :try_start_29
    new-instance v28, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1a

    .line 1497
    .end local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v28, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_2a
    const-string/jumbo v6, "commontime_management"

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_28

    move-object/from16 v27, v28

    .line 1501
    .end local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_1e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1503
    if-nez v43, :cond_2c

    .line 1504
    const-string/jumbo v6, "CertBlacklister"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1506
    :try_start_2b
    new-instance v26, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1b

    .line 1510
    :goto_1f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1513
    :cond_2c
    if-nez v43, :cond_2d

    xor-int/lit8 v6, v45, 0x1

    if-eqz v6, :cond_2d

    .line 1515
    const-string/jumbo v6, "StartEmergencyAffordanceService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1517
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1520
    :cond_2d
    if-nez v45, :cond_2e

    .line 1522
    const-string/jumbo v6, "StartDreamManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1524
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1527
    :cond_2e
    if-nez v45, :cond_2f

    .line 1528
    const-string/jumbo v6, "AddGraphicsStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1529
    const-string/jumbo v6, "graphicsstats"

    .line 1530
    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v4}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 1529
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1531
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1534
    :cond_2f
    if-nez v45, :cond_30

    sget-boolean v6, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v6, :cond_30

    .line 1535
    const-string/jumbo v6, "AddCoverageService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1536
    const-string/jumbo v6, "coverage"

    new-instance v7, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v7}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1537
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1542
    :cond_30
    const-string/jumbo v6, "AddOemExService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1543
    new-instance v69, Lcom/android/server/OemExService;

    .end local v69    # "mOemExService":Lcom/android/server/OemExService;
    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Lcom/android/server/OemExService;-><init>(Landroid/content/Context;)V

    .line 1544
    .local v69, "mOemExService":Lcom/android/server/OemExService;
    const-string/jumbo v6, "OEMExService"

    move-object/from16 v0, v69

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1545
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1549
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v69

    invoke-virtual {v0, v6}, Lcom/android/server/OemExService;->setActivityManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 1551
    const-string/jumbo v6, "AddOnePlusNfcService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1552
    new-instance v70, Lcom/android/server/OnePlusNfcService;

    .end local v70    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/OnePlusNfcService;-><init>(Landroid/content/Context;)V

    .line 1553
    .local v70, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    const-string/jumbo v6, "OnePlusNfcService"

    move-object/from16 v0, v70

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1554
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1556
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/SUWHelperService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1558
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1559
    const-string/jumbo v6, "StartPrintManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1561
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1564
    :cond_31
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.companion_device_setup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1565
    const-string/jumbo v6, "StartCompanionDeviceManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1567
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1570
    :cond_32
    const-string/jumbo v6, "StartRestrictionManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1572
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1574
    const-string/jumbo v6, "StartMediaSessionService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1576
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1578
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1579
    const-string/jumbo v6, "StartHdmiControlService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1581
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1584
    :cond_33
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 1585
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.leanback"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1584
    if-eqz v6, :cond_35

    .line 1586
    :cond_34
    const-string/jumbo v6, "StartTvInputManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1588
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1591
    :cond_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.picture_in_picture"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 1592
    const-string/jumbo v6, "StartMediaResourceMonitor"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1594
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1597
    :cond_36
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.leanback"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1598
    const-string/jumbo v6, "StartTvRemoteService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1600
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1603
    :cond_37
    if-nez v45, :cond_39

    .line 1604
    const-string/jumbo v6, "StartMediaRouterService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1606
    :try_start_2c
    new-instance v75, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1c

    .line 1607
    .end local v74    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v75, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_2d
    const-string/jumbo v6, "media_router"

    move-object/from16 v0, v75

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_27

    move-object/from16 v74, v75

    .line 1611
    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_20
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1613
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.fingerprint"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1614
    const-string/jumbo v6, "StartFingerprintSensor"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1616
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1619
    :cond_38
    const-string/jumbo v6, "StartBackgroundDexOptService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1621
    :try_start_2e
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1d

    .line 1625
    :goto_21
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1627
    const-string/jumbo v6, "StartPruneInstantAppsJobService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1629
    :try_start_2f
    invoke-static {v4}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1e

    .line 1633
    :goto_22
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1636
    :cond_39
    const-string/jumbo v6, "StartShortcutServiceLifecycle"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1638
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1640
    const-string/jumbo v6, "StartLauncherAppsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1642
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1645
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Secrecy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/secrecy/SecrecyService;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    .line 1650
    .end local v69    # "mOemExService":Lcom/android/server/OemExService;
    .end local v70    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    :cond_3a
    if-nez v45, :cond_3b

    xor-int/lit8 v6, v42, 0x1

    if-eqz v6, :cond_3b

    .line 1651
    const-string/jumbo v6, "StartMediaProjectionManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1653
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1656
    :cond_3b
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1657
    const-string/jumbo v6, "StartWearConnectivityService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1659
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1661
    if-nez v45, :cond_3c

    .line 1662
    const-string/jumbo v6, "StartWearTimeService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1664
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1665
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1667
    if-eqz v56, :cond_3c

    .line 1668
    const-string/jumbo v6, "StartWearLeftyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1670
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1675
    :cond_3c
    if-nez v39, :cond_3d

    .line 1676
    const-string/jumbo v6, "StartCameraServiceProxy"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1678
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1683
    :cond_3d
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v87

    .line 1684
    .local v87, "safeMode":Z
    if-eqz v87, :cond_4b

    .line 1685
    const-string/jumbo v6, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1688
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1689
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1698
    :goto_23
    const-string/jumbo v6, "StartMmsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v22

    .end local v22    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v22, Lcom/android/server/MmsServiceBroker;

    .line 1700
    .local v22, "mmsService":Lcom/android/server/MmsServiceBroker;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1702
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.autofill"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1703
    const-string/jumbo v6, "StartAutoFillService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1705
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1710
    :cond_3e
    const-string/jumbo v6, "MakeVibratorServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1712
    :try_start_30
    invoke-virtual/range {v98 .. v98}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1f

    .line 1716
    :goto_24
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1718
    const-string/jumbo v6, "MakeLockSettingsServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1719
    if-eqz v67, :cond_3f

    .line 1721
    :try_start_31
    invoke-interface/range {v67 .. v67}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_20

    .line 1726
    :cond_3f
    :goto_25
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1729
    const-string/jumbo v6, "StartBootPhaseLockSettingsReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1730
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1731
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1733
    const-string/jumbo v6, "StartBootPhaseSystemServicesReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1735
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1737
    const-string/jumbo v6, "MakeWindowManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1741
    if-eqz v57, :cond_40

    .line 1743
    :try_start_32
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "calling onBootPhase for Wigig Services"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v104

    .line 1745
    .restart local v104    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v108, 0x0

    aput-object v8, v7, v108

    move-object/from16 v0, v104

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v68

    .line 1746
    .local v68, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    .line 1747
    const/16 v8, 0x1f4

    .line 1746
    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v68

    move-object/from16 v1, v105

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    invoke-virtual/range {v106 .. v106}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v102

    .line 1750
    .restart local v102    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v108, 0x0

    aput-object v8, v7, v108

    move-object/from16 v0, v102

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v68

    .line 1751
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    .line 1752
    const/16 v8, 0x1f4

    .line 1751
    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v68

    move-object/from16 v1, v106

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_21

    .line 1759
    .end local v68    # "m":Ljava/lang/reflect/Method;
    .end local v102    # "wigigClass":Ljava/lang/Class;
    .end local v104    # "wigigP2pClass":Ljava/lang/Class;
    :cond_40
    :goto_26
    :try_start_33
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_22

    .line 1763
    :goto_27
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1765
    if-eqz v87, :cond_41

    .line 1766
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1772
    :cond_41
    const/4 v6, 0x0

    move-object/from16 v0, v107

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v29

    .line 1773
    .local v29, "config":Landroid/content/res/Configuration;
    new-instance v76, Landroid/util/DisplayMetrics;

    invoke-direct/range {v76 .. v76}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1774
    .local v76, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Landroid/view/WindowManager;

    .line 1775
    .local v100, "w":Landroid/view/WindowManager;
    invoke-interface/range {v100 .. v100}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v76

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1776
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v29

    move-object/from16 v1, v76

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1779
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v95

    .line 1780
    .local v95, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v95 .. v95}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v6

    if-eqz v6, :cond_42

    .line 1781
    invoke-virtual/range {v95 .. v95}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1784
    :cond_42
    const-string/jumbo v6, "MakePowerManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1787
    :try_start_34
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_23

    .line 1791
    :goto_28
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1796
    :try_start_35
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Secrecy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v6}, Lcom/android/server/secrecy/SecrecyService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_24

    .line 1803
    :goto_29
    const-string/jumbo v6, "MakePackageManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1805
    :try_start_36
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_25

    .line 1809
    :goto_2a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1811
    const-string/jumbo v6, "MakeDisplayManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1814
    :try_start_37
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v87

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_26

    .line 1818
    :goto_2b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1820
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, v87

    invoke-virtual {v6, v0}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 1823
    move-object/from16 v11, v78

    .line 1824
    .local v11, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v13, v83

    .line 1825
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v12, v79

    .line 1826
    .local v12, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v14, v30

    .line 1827
    .local v14, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v10, v81

    .line 1828
    .local v10, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v15, v65

    .line 1829
    .local v15, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v16, v34

    .line 1830
    .local v16, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v17, v84

    .line 1831
    .local v17, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v18, v27

    .line 1832
    .local v18, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v19, v5

    .line 1833
    .local v19, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v20, v96

    .line 1834
    .local v20, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v21, v74

    .line 1835
    .local v21, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v77, v22

    .line 1836
    .local v77, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v9, v107

    .line 1840
    .local v9, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v23, v69

    .line 1842
    .local v23, "mOemExServiceF":Lcom/android/server/OemExService;
    move-object/from16 v24, v70

    .line 1848
    .local v24, "mOnePlusNfcServiceF":Lcom/android/server/OnePlusNfcService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v108, v0

    new-instance v6, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$1;

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v6 .. v24}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2054
    sget-object v7, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    .line 1848
    move-object/from16 v0, v108

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2058
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 2059
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPCBNumber()V

    .line 2062
    :cond_43
    return-void

    .line 872
    .end local v9    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v10    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v11    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v12    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v15    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v16    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v17    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v18    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v19    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v20    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v21    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v23    # "mOemExServiceF":Lcom/android/server/OemExService;
    .end local v24    # "mOnePlusNfcServiceF":Lcom/android/server/OnePlusNfcService;
    .end local v29    # "config":Landroid/content/res/Configuration;
    .end local v37    # "curVersion":Ljava/lang/String;
    .end local v64    # "lastVersion":Ljava/lang/String;
    .end local v76    # "metrics":Landroid/util/DisplayMetrics;
    .end local v77    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v87    # "safeMode":Z
    .end local v95    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v100    # "w":Landroid/view/WindowManager;
    .local v22, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v25    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .restart local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v58    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v69, "mOemExService":Lcom/android/server/OemExService;
    .local v70, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v72, "mSDService":Lcom/android/server/oneplus/display/SDService;
    .local v78, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v88    # "serial":Lcom/android/server/SerialService;
    .local v90, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v94    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v101    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v105    # "wigigP2pService":Ljava/lang/Object;
    .restart local v106    # "wigigService":Ljava/lang/Object;
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_44
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 920
    .end local v72    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v73    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_45
    :try_start_38
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_46

    .line 921
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_0

    goto/16 :goto_1

    .line 953
    :catch_0
    move-exception v54

    .local v54, "e":Ljava/lang/RuntimeException;
    move-object/from16 v72, v73

    .end local v73    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .local v72, "mSDService":Lcom/android/server/oneplus/display/SDService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v98, v99

    .line 954
    .end local v25    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v72    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v99    # "vibrator":Lcom/android/server/VibratorService;
    .end local v101    # "watchdog":Lcom/android/server/Watchdog;
    .end local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_2c
    const-string/jumbo v6, "System"

    const-string/jumbo v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string/jumbo v6, "System"

    const-string/jumbo v7, "************ Failure starting core service"

    move-object/from16 v0, v54

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 922
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .restart local v25    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .restart local v73    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v101    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_46
    :try_start_39
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 923
    const-string/jumbo v7, "android.hardware.bluetooth"

    .line 922
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 924
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 925
    :cond_47
    if-eqz v38, :cond_48

    .line 926
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 928
    :cond_48
    const-string/jumbo v6, "StartBluetoothService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 930
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_0

    goto/16 :goto_1

    .line 975
    .end local v25    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v73    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v99    # "vibrator":Lcom/android/server/VibratorService;
    .end local v101    # "watchdog":Lcom/android/server/Watchdog;
    .end local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v65    # "location":Lcom/android/server/LocationManagerService;
    .restart local v67    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v74    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v86, "notification":Landroid/app/INotificationManager;
    .restart local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1
    move-exception v55

    .line 976
    .local v55, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 984
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v55

    .line 985
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1001
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v55

    .line 1002
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting StorageManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1009
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v94    # "storageManager":Landroid/os/storage/IStorageManager;
    :catch_4
    move-exception v55

    .line 1010
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting StorageStatsService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1026
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v55

    .line 1027
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1035
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v55

    .line 1036
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1058
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v37    # "curVersion":Ljava/lang/String;
    .restart local v64    # "lastVersion":Ljava/lang/String;
    :catch_7
    move-exception v55

    .line 1059
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1100
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v67    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_8
    move-exception v55

    .line 1101
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_2d
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1117
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v78    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_9
    move-exception v55

    .line 1118
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1134
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v55

    .line 1135
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_2e
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1143
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_b
    move-exception v55

    .line 1144
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1153
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v55

    .line 1154
    .end local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_2f
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1179
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_49
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Wi-Fi Aware Service (Aware support Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1215
    .end local v105    # "wigigP2pService":Ljava/lang/Object;
    .end local v106    # "wigigService":Ljava/lang/Object;
    :catch_d
    move-exception v55

    .line 1216
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1234
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v55

    .line 1235
    .end local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_30
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 1244
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v90    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_f
    move-exception v55

    .line 1245
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1255
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v55

    .line 1256
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 1270
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v61

    .local v61, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_14

    .line 1292
    .end local v61    # "ignored":Landroid/os/RemoteException;
    .local v86, "notification":Landroid/app/INotificationManager;
    :catch_12
    move-exception v55

    .line 1293
    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_31
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 1301
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v55

    .line 1302
    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_32
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1311
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v55

    .line 1312
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1351
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v55

    .line 1352
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1379
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v55

    .line 1380
    .end local v88    # "serial":Lcom/android/server/SerialService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_33
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SerialService"

    move-object/from16 v0, v55

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 1390
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v55

    .line 1391
    .end local v58    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v55

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 1465
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v55

    .line 1466
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1475
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4a
    const/16 v91, 0x0

    .local v91, "startRulesManagerService":Z
    goto/16 :goto_1c

    .line 1488
    .end local v91    # "startRulesManagerService":Z
    :catch_19
    move-exception v55

    .line 1489
    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_35
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 1498
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v55

    .line 1499
    .end local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1507
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v55

    .line 1508
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1608
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v69, "mOemExService":Lcom/android/server/OemExService;
    .local v70, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    :catch_1c
    move-exception v55

    .line 1609
    .end local v74    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1622
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v55

    .line 1623
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting StartBackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1630
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v55

    .line 1631
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "StartPruneInstantAppsJobService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1692
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v69    # "mOemExService":Lcom/android/server/OemExService;
    .end local v70    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    .restart local v87    # "safeMode":Z
    :cond_4b
    const-string/jumbo v6, "StartJitCompilation"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1693
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1694
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto/16 :goto_23

    .line 1713
    .local v22, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_1f
    move-exception v55

    .line 1714
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1722
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v55

    .line 1723
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1753
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v55

    .line 1754
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1760
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v55

    .line 1761
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1788
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v29    # "config":Landroid/content/res/Configuration;
    .restart local v76    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v95    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v100    # "w":Landroid/view/WindowManager;
    :catch_23
    move-exception v55

    .line 1789
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1798
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v55

    .line 1799
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making secrecy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1806
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v55

    .line 1807
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1815
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v55

    .line 1816
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1608
    .end local v29    # "config":Landroid/content/res/Configuration;
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v76    # "metrics":Landroid/util/DisplayMetrics;
    .end local v87    # "safeMode":Z
    .end local v95    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v100    # "w":Landroid/view/WindowManager;
    .local v22, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v69    # "mOemExService":Lcom/android/server/OemExService;
    .restart local v70    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .restart local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v86    # "notification":Landroid/app/INotificationManager;
    :catch_27
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v74, v75

    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v74, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_37

    .line 1498
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v69, "mOemExService":Lcom/android/server/OemExService;
    .local v70, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v74, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_28
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v27, v28

    .end local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v27, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_36

    .line 1488
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v27, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_29
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v84, v85

    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_35

    .line 1390
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v59    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2a
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v58, v59

    .end local v59    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v58, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_34

    .line 1379
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v58, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v89    # "serial":Lcom/android/server/SerialService;
    :catch_2b
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v88, v89

    .end local v89    # "serial":Lcom/android/server/SerialService;
    .local v88, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_33

    .line 1301
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v88, "serial":Lcom/android/server/SerialService;
    :catch_2c
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v34, v35

    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v34, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_32

    .line 1292
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v34, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v66    # "location":Lcom/android/server/LocationManagerService;
    :catch_2d
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v65, v66

    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .local v65, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_31

    .line 1234
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v65, "location":Lcom/android/server/LocationManagerService;
    .local v86, "notification":Landroid/app/INotificationManager;
    .restart local v90    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_2e
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v30, v31

    .end local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v30, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_30

    .line 1153
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v30, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v105    # "wigigP2pService":Ljava/lang/Object;
    .restart local v106    # "wigigService":Ljava/lang/Object;
    :catch_2f
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v79, v80

    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2f

    .line 1134
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_30
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v81, v82

    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_2e

    .line 1100
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v78    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_31
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v92, v93

    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v92, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_2d

    .line 953
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v37    # "curVersion":Ljava/lang/String;
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v64    # "lastVersion":Ljava/lang/String;
    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .end local v74    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v72, "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v94    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_32
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v5, v62

    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto/16 :goto_2c

    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v25    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_33
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v5, v62

    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto/16 :goto_2c

    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "vibrator":Lcom/android/server/VibratorService;
    :catch_34
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v5, v62

    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v98, v99

    .end local v99    # "vibrator":Lcom/android/server/VibratorService;
    .local v98, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_2c

    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "vibrator":Lcom/android/server/VibratorService;
    :catch_35
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v32, v33

    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v32, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v5, v62

    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v98, v99

    .end local v99    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_2c

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .end local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v101    # "watchdog":Lcom/android/server/Watchdog;
    :catch_36
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v98, v99

    .end local v99    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_2c
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 2065
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2066
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 2067
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 2066
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2068
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2070
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2071
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2072
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2075
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2077
    return-void
.end method

.method private static traceEnd()V
    .locals 1

    .prologue
    .line 2080
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2081
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_SystemServer_84129(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;Lcom/android/server/OnePlusNfcService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "networkScoreF"    # Lcom/android/server/NetworkScoreService;
    .param p4, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p5, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p6, "networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p7, "connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "locationF"    # Lcom/android/server/LocationManagerService;
    .param p9, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p12, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p13, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p14, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p15, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;
    .param p16, "mOemExServiceF"    # Lcom/android/server/OemExService;
    .param p17, "mOnePlusNfcServiceF"    # Lcom/android/server/OnePlusNfcService;

    .prologue
    .line 1849
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Making services ready"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string/jumbo v5, "StartActivityManagerReadyPhase"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1851
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1852
    const/16 v6, 0x226

    .line 1851
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1853
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1854
    const-string/jumbo v5, "StartObservingNativeCrashes"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1856
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1864
    const-string/jumbo v0, "WebViewFactoryPreparation"

    .line 1865
    .local v0, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1866
    .local v4, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_0

    .line 1867
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    new-instance v6, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$2;

    invoke-direct {v6, p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$2;-><init>(Ljava/lang/Object;)V

    .line 1876
    const-string/jumbo v7, "WebViewFactoryPreparation"

    .line 1867
    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 1879
    .end local v4    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v6, "android.hardware.type.automotive"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1880
    const-string/jumbo v5, "StartCarServiceHelperService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1881
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/car/CarServiceHelperService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1882
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1885
    :cond_1
    const-string/jumbo v5, "StartSystemUI"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1887
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1891
    :goto_1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1892
    const-string/jumbo v5, "MakeNetworkScoreReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1894
    if-eqz p3, :cond_2

    :try_start_2
    invoke-virtual {p3}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1898
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1899
    const-string/jumbo v5, "MakeNetworkManagementServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1901
    if-eqz p4, :cond_3

    :try_start_3
    invoke-virtual {p4}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1905
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 1906
    .local v3, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz p5, :cond_4

    .line 1907
    invoke-virtual {p5}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    .line 1910
    .end local v3    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1911
    const-string/jumbo v5, "MakeNetworkStatsServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1913
    if-eqz p6, :cond_5

    :try_start_4
    invoke-virtual {p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1917
    :cond_5
    :goto_4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1918
    const-string/jumbo v5, "MakeConnectivityServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1920
    if-eqz p7, :cond_6

    :try_start_5
    invoke-virtual {p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1924
    :cond_6
    :goto_5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1925
    const-string/jumbo v5, "MakeNetworkPolicyServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1927
    if-eqz p5, :cond_7

    .line 1928
    :try_start_6
    invoke-virtual {p5, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1933
    :cond_7
    :goto_6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1935
    const-string/jumbo v5, "StartWatchdog"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1936
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/Watchdog;->start()V

    .line 1937
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1940
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 1944
    const-string/jumbo v5, "PhaseThirdPartyAppsCanStart"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1946
    if-eqz v4, :cond_8

    .line 1947
    const-string/jumbo v5, "WebViewFactoryPreparation"

    invoke-static {v4, v5}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1949
    :cond_8
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1950
    const/16 v6, 0x258

    .line 1949
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1951
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1953
    const-string/jumbo v5, "MakeLocationServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1955
    if-eqz p8, :cond_9

    :try_start_7
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1959
    :cond_9
    :goto_7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1960
    const-string/jumbo v5, "MakeCountryDetectionServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1962
    if-eqz p9, :cond_a

    :try_start_8
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1966
    :cond_a
    :goto_8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1967
    const-string/jumbo v5, "MakeNetworkTimeUpdateReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1969
    if-eqz p10, :cond_b

    :try_start_9
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1973
    :cond_b
    :goto_9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1974
    const-string/jumbo v5, "MakeCommonTimeManagementServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1976
    if-eqz p11, :cond_c

    .line 1977
    :try_start_a
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1982
    :cond_c
    :goto_a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1983
    const-string/jumbo v5, "MakeInputManagerServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1986
    if-eqz p12, :cond_d

    :try_start_b
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1990
    :cond_d
    :goto_b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1991
    const-string/jumbo v5, "MakeTelephonyRegistryReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1993
    if-eqz p13, :cond_e

    :try_start_c
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1997
    :cond_e
    :goto_c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1998
    const-string/jumbo v5, "MakeMediaRouterServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2000
    if-eqz p14, :cond_f

    :try_start_d
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 2004
    :cond_f
    :goto_d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2005
    const-string/jumbo v5, "MakeMmsServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2007
    if-eqz p15, :cond_10

    :try_start_e
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 2011
    :cond_10
    :goto_e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2013
    const-string/jumbo v5, "MakeNetworkScoreServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2016
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getIndicate()V

    .line 2020
    if-eqz p3, :cond_11

    :try_start_f
    invoke-virtual {p3}, Lcom/android/server/NetworkScoreService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 2024
    :cond_11
    :goto_f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2025
    const-string/jumbo v5, "IncidentDaemonReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2030
    :try_start_10
    const-string/jumbo v5, "incident"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2029
    invoke-static {v5}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v2

    .line 2031
    .local v2, "incident":Landroid/os/IIncidentManager;
    if-eqz v2, :cond_12

    invoke-interface {v2}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 2035
    .end local v2    # "incident":Landroid/os/IIncidentManager;
    :cond_12
    :goto_10
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2038
    const-string/jumbo v5, "OemExServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2040
    if-eqz p16, :cond_13

    .line 2041
    :try_start_11
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/OemExService;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 2045
    :cond_13
    :goto_11
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2047
    const-string/jumbo v5, "OnePlusNfcServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2049
    if-eqz p17, :cond_14

    :try_start_12
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/OnePlusNfcService;->systemRunning()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 2053
    :cond_14
    :goto_12
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void

    .line 1857
    .end local v0    # "WEBVIEW_PREPARATION":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1858
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "observing native crashes"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1888
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "WEBVIEW_PREPARATION":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1889
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting System UI"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1895
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 1896
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Network Score Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1902
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 1903
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Network Managment Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1914
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v1

    .line 1915
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Network Stats Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1921
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v1

    .line 1922
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Connectivity Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1930
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v1

    .line 1931
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Network Policy Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1956
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v1

    .line 1957
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying Location Service running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1963
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v1

    .line 1964
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying CountryDetectorService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1970
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v1

    .line 1971
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying NetworkTimeService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1979
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v1

    .line 1980
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying CommonTimeManagementService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1987
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v1

    .line 1988
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying InputManagerService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1994
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v1

    .line 1995
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 2001
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v1

    .line 2002
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying MediaRouterService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 2008
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v1

    .line 2009
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying MmsService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 2021
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v1

    .line 2022
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying NetworkScoreService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 2032
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v1

    .line 2033
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying incident daemon running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 2042
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v1

    .line 2043
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying OemExService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 2050
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v1

    .line 2051
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notifying OnePlusNfcService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12
.end method

.method synthetic lambda$-com_android_server_SystemServer_85034()V
    .locals 4

    .prologue
    .line 1868
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "WebViewFactoryPreparation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 1870
    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    .line 1869
    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 1871
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string/jumbo v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1872
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string/jumbo v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1873
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1874
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 1875
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method
