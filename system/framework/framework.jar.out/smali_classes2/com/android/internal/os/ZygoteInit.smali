.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0xc350

.field public static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_GFX_DRIVER:Ljava/lang/String; = "ro.gfx.driver.0"

.field private static final PROPERTY_RUNNING_IN_CONTAINER:Ljava/lang/String; = "ro.boot.container"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static mResources:Landroid/content/res/Resources;

.field private static sPreloadComplete:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    return-void
.end method

.method private static beginIcuCachePinning()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 162
    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Installing ICU cache reference pinning..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v3, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v3}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    .line 166
    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Preloading ICU data..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, 0x3

    new-array v0, v3, [Landroid/icu/util/ULocale;

    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    aput-object v3, v0, v2

    sget-object v3, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 169
    .local v0, "localesToPin":[Landroid/icu/util/ULocale;
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 170
    .local v1, "uLocale":Landroid/icu/util/ULocale;
    new-instance v4, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v4, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "uLocale":Landroid/icu/util/ULocale;
    :cond_0
    return-void
.end method

.method static createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .locals 7
    .param p0, "classPath"    # Ljava/lang/String;
    .param p1, "targetSdkVersion"    # I

    .prologue
    .line 523
    const-string/jumbo v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "libraryPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v5, 0x1

    .line 527
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move v4, p1

    .line 525
    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static encodeSystemServerClassPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classPath"    # Ljava/lang/String;
    .param p1, "newElement"    # Ljava/lang/String;

    .prologue
    .line 609
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p1    # "newElement":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 611
    .restart local p1    # "newElement":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static endIcuCachePinning()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v0}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    .line 178
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Uninstalled ICU cache reference pinning..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method private static forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .locals 16
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .param p2, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;

    .prologue
    .line 622
    const/16 v1, 0xc

    new-array v1, v1, [I

    .line 623
    sget v2, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 624
    sget v2, Landroid/system/OsConstants;->CAP_KILL:I

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 625
    sget v2, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 626
    sget v2, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 627
    sget v2, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 628
    sget v2, Landroid/system/OsConstants;->CAP_NET_RAW:I

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 629
    sget v2, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 630
    sget v2, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 631
    sget v2, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    const/16 v3, 0x8

    aput v2, v1, v3

    .line 632
    sget v2, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 633
    sget v2, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    const/16 v3, 0xa

    aput v2, v1, v3

    .line 634
    sget v2, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    const/16 v3, 0xb

    aput v2, v1, v3

    .line 622
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v10

    .line 637
    .local v10, "capabilities":J
    const-string/jumbo v1, "ro.boot.container"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v2

    or-long/2addr v10, v2

    .line 641
    :cond_0
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .line 642
    const-string/jumbo v1, "--setuid=1000"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 643
    const-string/jumbo v1, "--setgid=1000"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 644
    const-string/jumbo v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1032,3001,3002,3003,3006,3007,3009,3010"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 646
    const-string/jumbo v1, "--nice-name=system_server"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 647
    const-string/jumbo v1, "--runtime-args"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 648
    const-string/jumbo v1, "com.android.server.SystemServer"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 650
    .local v0, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 655
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 657
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 661
    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 662
    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 663
    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 665
    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 666
    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 664
    const/4 v5, 0x0

    .line 660
    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 672
    .local v15, "pid":I
    if-nez v15, :cond_2

    .line 673
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 677
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 678
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 667
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_0
    move-exception v12

    .line 668
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 681
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v15    # "pid":I
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 667
    .end local v15    # "pid":I
    :catch_1
    move-exception v12

    .restart local v12    # "ex":Ljava/lang/IllegalArgumentException;
    move-object v13, v14

    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0
.end method

.method static gcAndFinalize()V
    .locals 1

    .prologue
    .line 439
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 444
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 445
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 446
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 447
    return-void
.end method

.method private static getSystemServerClassLoaderContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    .line 598
    if-nez p0, :cond_0

    const-string/jumbo v0, "PCL[]"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PCL["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)Ljava/lang/Runnable;
    .locals 14
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 454
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    .line 456
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 460
    :cond_0
    const-string/jumbo v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 461
    .local v13, "systemServerClasspath":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 462
    invoke-static {v13}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    .line 466
    const-string/jumbo v0, "dalvik.vm.profilesystemserver"

    .line 465
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 467
    .local v12, "profileSystemServer":Z
    if-eqz v12, :cond_2

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_2

    .line 470
    :cond_1
    :try_start_0
    const-string/jumbo v0, "system_server"

    const/16 v1, 0x3e8

    .line 469
    invoke-static {v1, v0}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 471
    .local v11, "profileDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string/jumbo v0, "primary.prof"

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    .local v10, "profile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 473
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 474
    const-string/jumbo v0, ":"

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 475
    .local v8, "codePaths":[Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v8    # "codePaths":[Ljava/lang/String;
    .end local v10    # "profile":Ljava/io/File;
    .end local v11    # "profileDir":Ljava/io/File;
    .end local v12    # "profileSystemServer":Z
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 483
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 487
    .local v5, "args":[Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 488
    array-length v0, v5

    add-int/lit8 v0, v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 489
    .local v6, "amendedArgs":[Ljava/lang/String;
    const-string/jumbo v0, "-cp"

    aput-object v0, v6, v2

    .line 490
    const/4 v0, 0x1

    aput-object v13, v6, v0

    .line 491
    array-length v0, v5

    const/4 v1, 0x2

    invoke-static {v5, v2, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    move-object v5, v6

    .line 495
    .end local v6    # "amendedArgs":[Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 496
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 497
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    .end local v5    # "args":[Ljava/lang/String;
    .restart local v12    # "profileSystemServer":Z
    :catch_0
    move-exception v9

    .line 477
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Failed to set up system server profile"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 501
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "profileSystemServer":Z
    :cond_4
    const/4 v7, 0x0

    .line 502
    .local v7, "cl":Ljava/lang/ClassLoader;
    if-eqz v13, :cond_5

    .line 503
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {v13, v0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v7

    .line 505
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 511
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    :cond_5
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 819
    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isPreloadComplete()Z
    .locals 1

    .prologue
    .line 829
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method public static lazyPreload()V
    .locals 4

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 153
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string/jumbo v1, "ZygoteInitTiming_lazy"

    const-wide/16 v2, 0x4000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 156
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 18
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 699
    new-instance v13, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v13}, Lcom/android/internal/os/ZygoteServer;-><init>()V

    .line 703
    .local v13, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    .line 707
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_0
    invoke-static {v14, v15}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :try_start_1
    const-string/jumbo v14, "1"

    const-string/jumbo v15, "sys.boot_completed"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 716
    const-string/jumbo v14, "boot_zygote_init"

    .line 717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    .line 716
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v14, v15}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 720
    :cond_0
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v3, "Zygote64Timing"

    .line 721
    .local v3, "bootTimeTag":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/util/TimingsTraceLog;

    .line 722
    const-wide/16 v14, 0x4000

    .line 721
    invoke-direct {v4, v3, v14, v15}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 723
    .local v4, "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    const-string/jumbo v14, "ZygoteInit"

    invoke-virtual {v4, v14}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 724
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 726
    const/4 v12, 0x0

    .line 727
    .local v12, "startSystemServer":Z
    const-string/jumbo v11, "zygote"

    .line 728
    .local v11, "socketName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 729
    .local v2, "abiList":Ljava/lang/String;
    const/4 v6, 0x0

    .line 730
    .local v6, "enableLazyPreload":Z
    const/4 v9, 0x1

    .end local v2    # "abiList":Ljava/lang/String;
    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    array-length v14, v0

    if-ge v9, v14, :cond_6

    .line 731
    const-string/jumbo v14, "start-system-server"

    aget-object v15, p0, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    if-eqz v14, :cond_2

    .line 732
    const/4 v12, 0x1

    .line 730
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 708
    .end local v3    # "bootTimeTag":Ljava/lang/String;
    .end local v4    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v6    # "enableLazyPreload":Z
    .end local v9    # "i":I
    .end local v11    # "socketName":Ljava/lang/String;
    .end local v12    # "startSystemServer":Z
    :catch_0
    move-exception v7

    .line 709
    .local v7, "ex":Landroid/system/ErrnoException;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v15, "Failed to setpgid(0,0)"

    invoke-direct {v14, v15, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 720
    .end local v7    # "ex":Landroid/system/ErrnoException;
    :cond_1
    :try_start_2
    const-string/jumbo v3, "Zygote32Timing"

    .restart local v3    # "bootTimeTag":Ljava/lang/String;
    goto :goto_0

    .line 733
    .restart local v4    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .restart local v6    # "enableLazyPreload":Z
    .restart local v9    # "i":I
    .restart local v11    # "socketName":Ljava/lang/String;
    .restart local v12    # "startSystemServer":Z
    :cond_2
    const-string/jumbo v14, "--enable-lazy-preload"

    aget-object v15, p0, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 734
    const/4 v6, 0x1

    goto :goto_2

    .line 735
    :cond_3
    aget-object v14, p0, v9

    const-string/jumbo v15, "--abi-list="

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 736
    aget-object v14, p0, v9

    const-string/jumbo v15, "--abi-list="

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "abiList":Ljava/lang/String;
    goto :goto_2

    .line 737
    .end local v2    # "abiList":Ljava/lang/String;
    :cond_4
    aget-object v14, p0, v9

    const-string/jumbo v15, "--socket-name="

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 738
    aget-object v14, p0, v9

    const-string/jumbo v15, "--socket-name="

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 740
    :cond_5
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unknown command line argument: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, p0, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 797
    .end local v3    # "bootTimeTag":Ljava/lang/String;
    .end local v4    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v6    # "enableLazyPreload":Z
    .end local v9    # "i":I
    .end local v11    # "socketName":Ljava/lang/String;
    .end local v12    # "startSystemServer":Z
    :catch_1
    move-exception v8

    .line 798
    .local v8, "ex":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v14, "Zygote"

    const-string/jumbo v15, "System zygote died with exception"

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 800
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    .line 801
    invoke-virtual {v13}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 800
    throw v14

    .line 744
    .restart local v3    # "bootTimeTag":Ljava/lang/String;
    .restart local v4    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .restart local v6    # "enableLazyPreload":Z
    .restart local v9    # "i":I
    .restart local v11    # "socketName":Ljava/lang/String;
    .restart local v12    # "startSystemServer":Z
    :cond_6
    if-nez v2, :cond_7

    .line 745
    :try_start_4
    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v15, "No ABI list supplied."

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 748
    :cond_7
    invoke-virtual {v13, v11}, Lcom/android/internal/os/ZygoteServer;->registerServerSocket(Ljava/lang/String;)V

    .line 751
    if-nez v6, :cond_8

    .line 752
    const-string/jumbo v14, "ZygotePreload"

    invoke-virtual {v4, v14}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 753
    const/16 v16, 0xbcc

    move/from16 v0, v16

    invoke-static {v0, v14, v15}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 755
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 756
    const/16 v16, 0xbd6

    move/from16 v0, v16

    invoke-static {v0, v14, v15}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 758
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 764
    :goto_3
    const-string/jumbo v14, "PostZygoteInitGC"

    invoke-virtual {v4, v14}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 765
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 766
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 768
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 771
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    .line 774
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnmountStorageOnInit()V

    .line 777
    invoke-static {}, Landroid/os/Seccomp;->setPolicy()V

    .line 779
    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    .line 781
    if-eqz v12, :cond_9

    .line 782
    invoke-static {v2, v11, v13}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v10

    .line 786
    .local v10, "r":Ljava/lang/Runnable;
    if-eqz v10, :cond_9

    .line 787
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 801
    invoke-virtual {v13}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 788
    return-void

    .line 760
    .end local v10    # "r":Ljava/lang/Runnable;
    :cond_8
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    goto :goto_3

    .line 792
    :cond_9
    const-string/jumbo v14, "Zygote"

    const-string/jumbo v15, "Accepting command socket connections"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {v13, v2}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 801
    .local v5, "caller":Ljava/lang/Runnable;
    invoke-virtual {v13}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 806
    if-eqz v5, :cond_a

    .line 807
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 809
    :cond_a
    return-void
.end method

.method private static native nativePreloadAppProcessHALs()V
.end method

.method private static final native nativeZygoteInit()V
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .locals 25
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    .line 535
    const-string/jumbo v4, ":"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 537
    .local v15, "classPathElements":[Ljava/lang/String;
    const-string/jumbo v4, "installd"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 536
    invoke-static {v4}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v2

    .line 538
    .local v2, "installd":Landroid/os/IInstalld;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, "instructionSet":Ljava/lang/String;
    const-string/jumbo v16, ""

    .line 541
    .local v16, "classPathForElement":Ljava/lang/String;
    const/4 v4, 0x0

    array-length v0, v15

    move/from16 v24, v0

    move/from16 v23, v4

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    aget-object v3, v15, v23

    .line 545
    .local v3, "classPathElement":Ljava/lang/String;
    const-string/jumbo v4, "dalvik.vm.systemservercompilerfilter"

    const-string/jumbo v5, "speed"

    .line 544
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 551
    .local v10, "systemServerFilter":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 549
    :try_start_0
    invoke-static {v3, v6, v10, v4, v5}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 565
    .local v7, "dexoptNeeded":I
    :goto_1
    if-eqz v7, :cond_0

    .line 566
    const-string/jumbo v22, "*"

    .line 567
    .local v22, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 568
    .local v8, "outputPath":Ljava/lang/String;
    const/16 v18, 0x0

    .line 569
    .local v18, "dexFlags":I
    move-object/from16 v17, v10

    .line 570
    .local v17, "compilerFilter":Ljava/lang/String;
    sget-object v11, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 571
    .local v11, "uuid":Ljava/lang/String;
    const/4 v13, 0x0

    .line 573
    .local v13, "seInfo":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/os/ZygoteInit;->getSystemServerClassLoaderContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 575
    .local v12, "classLoaderContext":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v5, "*"

    const/16 v4, 0x3e8

    .line 576
    const/4 v9, 0x0

    .line 577
    const/4 v14, 0x0

    .line 575
    invoke-interface/range {v2 .. v14}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2

    .line 585
    .end local v8    # "outputPath":Ljava/lang/String;
    .end local v11    # "uuid":Ljava/lang/String;
    .end local v12    # "classLoaderContext":Ljava/lang/String;
    .end local v13    # "seInfo":Ljava/lang/String;
    .end local v17    # "compilerFilter":Ljava/lang/String;
    .end local v18    # "dexFlags":I
    .end local v22    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_2
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/internal/os/ZygoteInit;->encodeSystemServerClassPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 541
    .end local v7    # "dexoptNeeded":I
    :goto_3
    add-int/lit8 v4, v23, 0x1

    move/from16 v23, v4

    goto :goto_0

    .line 556
    :catch_0
    move-exception v19

    .line 560
    .local v19, "e":Ljava/io/IOException;
    const-string/jumbo v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error checking classpath element for system server: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    const/4 v7, 0x0

    .restart local v7    # "dexoptNeeded":I
    goto :goto_1

    .line 552
    .end local v7    # "dexoptNeeded":I
    .end local v19    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v21

    .line 554
    .local v21, "ignored":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing classpath element for system server: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 578
    .end local v21    # "ignored":Ljava/io/FileNotFoundException;
    .restart local v7    # "dexoptNeeded":I
    .restart local v8    # "outputPath":Ljava/lang/String;
    .restart local v11    # "uuid":Ljava/lang/String;
    .restart local v12    # "classLoaderContext":Ljava/lang/String;
    .restart local v13    # "seInfo":Ljava/lang/String;
    .restart local v17    # "compilerFilter":Ljava/lang/String;
    .restart local v18    # "dexFlags":I
    .restart local v22    # "packageName":Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 580
    .local v20, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed compiling classpath element for system server: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 588
    .end local v3    # "classPathElement":Ljava/lang/String;
    .end local v7    # "dexoptNeeded":I
    .end local v8    # "outputPath":Ljava/lang/String;
    .end local v10    # "systemServerFilter":Ljava/lang/String;
    .end local v11    # "uuid":Ljava/lang/String;
    .end local v12    # "classLoaderContext":Ljava/lang/String;
    .end local v13    # "seInfo":Ljava/lang/String;
    .end local v17    # "compilerFilter":Ljava/lang/String;
    .end local v18    # "dexFlags":I
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 8
    .param p0, "capabilities"    # [I

    .prologue
    const/4 v1, 0x0

    .line 688
    const-wide/16 v2, 0x0

    .line 689
    .local v2, "result":J
    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_2

    aget v0, p0, v1

    .line 690
    .local v0, "capability":I
    if-ltz v0, :cond_0

    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-le v0, v5, :cond_1

    .line 691
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_1
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "capability":I
    :cond_2
    return-wide v2
.end method

.method static preload(Landroid/util/TimingsTraceLog;)V
    .locals 4
    .param p0, "bootTimingsTraceLog"    # Landroid/util/TimingsTraceLog;

    .prologue
    const-wide/16 v2, 0x4000

    .line 123
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "begin preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v0, "BeginIcuCachePinning"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginIcuCachePinning()V

    .line 126
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 127
    const-string/jumbo v0, "PreloadClasses"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 129
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 130
    const-string/jumbo v0, "PreloadResources"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 132
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 133
    const-string/jumbo v0, "PreloadAppProcessHALs"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    .line 135
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 136
    const-string/jumbo v0, "PreloadOpenGL"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    .line 138
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 139
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 140
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 143
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 144
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endIcuCachePinning()V

    .line 145
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    .line 146
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "end preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    .line 149
    return-void
.end method

.method private static preloadClasses()V
    .locals 26

    .prologue
    .line 240
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v17

    .line 244
    .local v17, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    const-string/jumbo v21, "/system/etc/preloaded-classes"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    .local v13, "is":Ljava/io/InputStream;
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Preloading classes..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 254
    .local v18, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v16

    .line 255
    .local v16, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v15

    .line 260
    .local v15, "regid":I
    const/4 v7, 0x0

    .line 261
    .local v7, "droppedPriviliges":Z
    if-nez v16, :cond_0

    if-nez v15, :cond_0

    .line 263
    const/16 v21, 0x0

    const/16 v22, 0x270f

    :try_start_1
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V

    .line 264
    const/16 v21, 0x0

    const/16 v22, 0x270f

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2

    .line 269
    const/4 v7, 0x1

    .line 274
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v6

    .line 275
    .local v6, "defaultUtilization":F
    const v21, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 279
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x100

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 281
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 283
    .local v5, "count":I
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 285
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 286
    const-string/jumbo v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 290
    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    const/16 v21, 0x1

    const/16 v22, 0x0

    :try_start_3
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    add-int/lit8 v5, v5, 0x1

    .line 316
    :goto_1
    const-wide/16 v22, 0x4000

    :try_start_4
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 321
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v14    # "line":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 322
    .local v9, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Error reading /system/etc/preloaded-classes."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 324
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 326
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 329
    const-string/jumbo v21, "PreloadDexCaches"

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 330
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 331
    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 334
    if-eqz v7, :cond_2

    .line 336
    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_6
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    .line 337
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_7

    .line 343
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 245
    .end local v6    # "defaultUtilization":F
    .end local v7    # "droppedPriviliges":Z
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v15    # "regid":I
    .end local v16    # "reuid":I
    .end local v18    # "startTime":J
    :catch_1
    move-exception v8

    .line 246
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 265
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "droppedPriviliges":Z
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v15    # "regid":I
    .restart local v16    # "reuid":I
    .restart local v18    # "startTime":J
    :catch_2
    move-exception v12

    .line 266
    .local v12, "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to drop root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 306
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v6    # "defaultUtilization":F
    .restart local v14    # "line":Ljava/lang/String;
    :catch_3
    move-exception v20

    .line 307
    .local v20, "t":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 309
    check-cast v20, Ljava/lang/Error;

    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 323
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v14    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v21

    .line 324
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 326
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 329
    const-string/jumbo v22, "PreloadDexCaches"

    const-wide/16 v24, 0x4000

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 330
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 331
    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 334
    if-eqz v7, :cond_3

    .line 336
    const/16 v22, 0x0

    const/16 v23, 0x0

    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setreuid(II)V

    .line 337
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setregid(II)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_8

    .line 323
    :cond_3
    throw v21

    .line 311
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_4
    :try_start_9
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 312
    check-cast v20, Ljava/lang/RuntimeException;

    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20

    .line 314
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_5
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 304
    .end local v20    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v11

    .line 305
    .local v11, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Problem preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 302
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_5
    move-exception v10

    .line 303
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Class not found for preloading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 319
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "...preloaded "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " classes in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    .line 319
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 320
    const-string/jumbo v23, "ms."

    .line 319
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 324
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 326
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 329
    const-string/jumbo v21, "PreloadDexCaches"

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 330
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 331
    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 334
    if-eqz v7, :cond_2

    .line 336
    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_a
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    .line 337
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    .line 338
    :catch_6
    move-exception v12

    .line 339
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 338
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .end local v14    # "line":Ljava/lang/String;
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    .line 339
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 338
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Landroid/system/ErrnoException;
    :catch_8
    move-exception v12

    .line 339
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
.end method

.method private static preloadColorStateLists(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 395
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 396
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 397
    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 401
    .local v2, "id":I
    if-eqz v2, :cond_0

    .line 402
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 403
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 405
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 406
    const-string/jumbo v5, " ("

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 406
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 406
    const-string/jumbo v5, ")"

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadDrawables(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 415
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 416
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 417
    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 421
    .local v2, "id":I
    if-eqz v2, :cond_0

    .line 422
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 423
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 425
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 426
    const-string/jumbo v5, " ("

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 426
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 426
    const-string/jumbo v5, ")"

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 416
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadOpenGL()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    const-string/jumbo v1, "ro.gfx.driver.0"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "driverPackageName":Ljava/lang/String;
    const-string/jumbo v1, "ro.zygote.disable_gl_preload"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 192
    if-eqz v1, :cond_1

    .line 194
    :cond_0
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 196
    :cond_1
    return-void
.end method

.method private static preloadResources()V
    .locals 10

    .prologue
    .line 353
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 356
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 357
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 359
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 362
    .local v4, "startTime":J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 363
    const v7, 0x1070061

    .line 362
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 364
    .local v1, "ar":Landroid/content/res/TypedArray;
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v0

    .line 365
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 366
    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 366
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 367
    const-string/jumbo v8, "ms."

    .line 366
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 370
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 371
    const v7, 0x1070060

    .line 370
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 372
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Landroid/content/res/TypedArray;)I

    move-result v0

    .line 373
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 374
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 375
    const-string/jumbo v8, "ms."

    .line 374
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 378
    const v7, 0x1120070

    .line 377
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 380
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 381
    const v7, 0x1070062

    .line 380
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 382
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v0

    .line 383
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resource in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 384
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 385
    const-string/jumbo v8, "ms."

    .line 384
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static preloadSharedLibraries()V
    .locals 2

    .prologue
    .line 182
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private static preloadTextResources()V
    .locals 0

    .prologue
    .line 199
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 200
    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    .line 201
    return-void
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 2
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 823
    const-string/jumbo v1, "zygote"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    const-string/jumbo v0, "zygote_secondary"

    .line 825
    .local v0, "otherZygoteName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 826
    return-void

    .line 824
    .end local v0    # "otherZygoteName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "zygote"

    .restart local v0    # "otherZygoteName":Ljava/lang/String;
    goto :goto_0
.end method

.method private static warmUpJcaProviders()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x4000

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 212
    .local v2, "startTime":J
    const-string/jumbo v1, "Starting installation of AndroidKeyStoreProvider"

    .line 211
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 216
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    .line 217
    const-string/jumbo v1, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 217
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 218
    const-string/jumbo v5, "ms."

    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 223
    const-string/jumbo v1, "Starting warm up of JCA providers"

    .line 222
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 224
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 225
    .local v0, "p":Ljava/security/Provider;
    invoke-virtual {v0}, Ljava/security/Provider;->warmUpServiceProvision()V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "p":Ljava/security/Provider;
    :cond_0
    const-string/jumbo v1, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Warmed up JCA providers in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 227
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    const-string/jumbo v5, "ms."

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 230
    return-void
.end method

.method public static final zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .locals 4
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 856
    const-string/jumbo v0, "ZygoteInit"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 857
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 859
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 860
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    .line 861
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
