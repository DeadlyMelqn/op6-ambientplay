.class public final Landroid/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$DebugProperty;,
        Landroid/os/Debug$InstructionCount;,
        Landroid/os/Debug$MemoryInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field public static final MEMINFO_BUFFERS:I = 0x2

.field public static final MEMINFO_CACHED:I = 0x3

.field public static final MEMINFO_COUNT:I = 0xf

.field public static final MEMINFO_FREE:I = 0x1

.field public static final MEMINFO_KERNEL_STACK:I = 0xe

.field public static final MEMINFO_MAPPED:I = 0xb

.field public static final MEMINFO_PAGE_TABLES:I = 0xd

.field public static final MEMINFO_SHMEM:I = 0x4

.field public static final MEMINFO_SLAB:I = 0x5

.field public static final MEMINFO_SLAB_RECLAIMABLE:I = 0x6

.field public static final MEMINFO_SLAB_UNRECLAIMABLE:I = 0x7

.field public static final MEMINFO_SWAP_FREE:I = 0x9

.field public static final MEMINFO_SWAP_TOTAL:I = 0x8

.field public static final MEMINFO_TOTAL:I = 0x0

.field public static final MEMINFO_VM_ALLOC_USED:I = 0xc

.field public static final MEMINFO_ZRAM_TOTAL:I = 0xa

.field private static final MIN_DEBUGGER_IDLE:I = 0x514

.field public static final SHOW_CLASSLOADER:I = 0x2

.field public static final SHOW_FULL_DETAIL:I = 0x1

.field public static final SHOW_INITIALIZED:I = 0x4

.field private static final SPIN_DELAY:I = 0xc8

.field private static final SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final TAG:Ljava/lang/String; = "Debug"

.field public static final TRACE_COUNT_ALLOCS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile mWaiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    .line 2071
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cacheRegisterMap(Ljava/lang/String;)Z
    .locals 1
    .param p0, "classAndMethodDesc"    # Ljava/lang/String;

    .prologue
    .line 1929
    invoke-static {p0}, Ldalvik/system/VMDebug;->cacheRegisterMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static changeDebugPort(I)V
    .locals 0
    .param p0, "port"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 901
    return-void
.end method

.method public static countInstancesOfClass(Ljava/lang/Class;)J
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 1880
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .locals 0
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1832
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    .line 1833
    return-void
.end method

.method public static dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1846
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 1847
    return-void
.end method

.method public static dumpHprofDataDdms()V
    .locals 0

    .prologue
    .line 1857
    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    .line 1858
    return-void
.end method

.method public static native dumpJavaBacktraceToFileTimeout(ILjava/lang/String;I)Z
.end method

.method public static native dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z
.end method

.method public static native dumpNativeHeap(Ljava/io/FileDescriptor;)V
.end method

.method public static native dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static final dumpReferenceTables()V
    .locals 0

    .prologue
    .line 1939
    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    .line 1940
    return-void
.end method

.method public static dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2270
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2271
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 2272
    const-string/jumbo v2, "Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find service to dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    return v5

    .line 2277
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2278
    const/4 v2, 0x1

    return v2

    .line 2279
    :catch_0
    move-exception v0

    .line 2280
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t dump service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2281
    return v5
.end method

.method public static enableEmulatorTraceOutput()V
    .locals 0

    .prologue
    .line 994
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 995
    return-void
.end method

.method private static fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2083
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 2084
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p1, :cond_0

    .line 2085
    return v5

    .line 2093
    :cond_0
    :try_start_0
    const-string/jumbo v4, "TYPE"

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2098
    .local v3, "primitiveTypeField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v4, :cond_1

    move v4, v5

    :goto_0
    return v4

    .line 2094
    .end local v3    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 2095
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    return v6

    .end local v1    # "ex":Ljava/lang/NoSuchFieldException;
    .restart local v3    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :cond_1
    move v4, v6

    .line 2098
    goto :goto_0

    .line 2099
    :catch_1
    move-exception v0

    .line 2100
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    return v6
.end method

.method private static fixTracePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "tracePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1144
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    .line 1145
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1147
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_3

    .line 1148
    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1153
    .local v1, "dir":Ljava/io/File;
    :goto_0
    if-nez p0, :cond_4

    .line 1154
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "dmtrace"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 1159
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dir":Ljava/io/File;
    :cond_1
    :goto_1
    const-string/jumbo v2, ".trace"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".trace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1162
    :cond_2
    return-object p0

    .line 1150
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "dir":Ljava/io/File;
    goto :goto_0

    .line 1156
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static final native getBinderDeathObjectCount()I
.end method

.method public static final native getBinderLocalObjectCount()I
.end method

.method public static final native getBinderProxyObjectCount()I
.end method

.method public static native getBinderReceivedTransactions()I
.end method

.method public static native getBinderSentTransactions()I
.end method

.method public static getCaller()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2383
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 3
    .param p0, "callStack"    # [Ljava/lang/StackTraceElement;
    .param p1, "depth"    # I

    .prologue
    .line 2323
    add-int/lit8 v1, p1, 0x4

    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 2324
    const-string/jumbo v1, "<bottom of call stack>"

    return-object v1

    .line 2326
    :cond_0
    add-int/lit8 v1, p1, 0x4

    aget-object v0, p0, v1

    .line 2327
    .local v0, "caller":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCallers(I)Ljava/lang/String;
    .locals 5
    .param p0, "depth"    # I

    .prologue
    .line 2337
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2338
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2339
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 2340
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2342
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCallers(II)Ljava/lang/String;
    .locals 5
    .param p0, "start"    # I
    .param p1, "depth"    # I

    .prologue
    .line 2352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2353
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2354
    .local v2, "sb":Ljava/lang/StringBuffer;
    add-int/2addr p1, p0

    .line 2355
    move v1, p0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 2356
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2358
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCallers(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "depth"    # I
    .param p1, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 2370
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2371
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2372
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 2373
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2375
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getGlobalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1261
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1283
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1372
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitTime()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1395
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1415
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1438
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalFreedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1447
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalFreedSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1463
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalFreedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1305
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalFreedSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1327
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalGcInvocationCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1349
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getLoadedClassCount()I
    .locals 1

    .prologue
    .line 1820
    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    move-result v0

    return v0
.end method

.method public static native getMemInfo([J)V
.end method

.method public static native getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V
.end method

.method public static native getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static getMethodTracingMode()I
    .locals 1

    .prologue
    .line 1198
    invoke-static {}, Ldalvik/system/VMDebug;->getMethodTracingMode()I

    move-result v0

    return v0
.end method

.method public static native getNativeHeapAllocatedSize()J
.end method

.method public static native getNativeHeapFreeSize()J
.end method

.method public static native getNativeHeapSize()J
.end method

.method public static native getPss()J
.end method

.method public static native getPss(I[J[J)J
.end method

.method public static getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "statName"    # Ljava/lang/String;

    .prologue
    .line 1674
    invoke-static {p0}, Ldalvik/system/VMDebug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRuntimeStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1684
    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStats()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1481
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1504
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadExternalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1524
    const/4 v0, 0x0

    return v0
.end method

.method public static getThreadExternalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1540
    const/4 v0, 0x0

    return v0
.end method

.method public static getThreadGcInvocationCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1558
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static native getUnreachableMemory(IZ)Ljava/lang/String;
.end method

.method public static getVmFeatureList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebuggerConnected()Z
    .locals 1

    .prologue
    .line 881
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method private static modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .locals 6
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "properties"    # Lcom/android/internal/util/TypedProperties;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 2111
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 2112
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    move-result v1

    .line 2113
    .local v1, "stringInfo":I
    packed-switch v1, :pswitch_data_0

    .line 2132
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 2133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected getStringInfo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") return value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2132
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2119
    :pswitch_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2124
    return-void

    .line 2120
    :catch_0
    move-exception v0

    .line 2121
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 2122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot set field for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2121
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2126
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :pswitch_1
    return-void

    .line 2128
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 2129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2130
    const-string/jumbo v5, " does not match field type ("

    .line 2129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2130
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 2129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2130
    const-string/jumbo v5, ")"

    .line 2129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2128
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2137
    .end local v1    # "stringInfo":I
    :cond_0
    :pswitch_3
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2138
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 2139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2140
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 2141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2142
    const-string/jumbo v5, " does not match field type ("

    .line 2141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2142
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 2141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2142
    const-string/jumbo v5, ")"

    .line 2141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2140
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2145
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2151
    :cond_2
    return-void

    .line 2146
    :catch_1
    move-exception v0

    .line 2147
    .restart local v0    # "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 2148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot set field for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2147
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2113
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printLoadedClasses(I)V
    .locals 0
    .param p0, "flags"    # I

    .prologue
    .line 1812
    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    .line 1813
    return-void
.end method

.method public static resetAllCounts()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1580
    const/4 v0, -0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1581
    return-void
.end method

.method public static resetGlobalAllocCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1272
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1273
    return-void
.end method

.method public static resetGlobalAllocSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1294
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1295
    return-void
.end method

.method public static resetGlobalClassInitCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1383
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1384
    return-void
.end method

.method public static resetGlobalClassInitTime()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1406
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1407
    return-void
.end method

.method public static resetGlobalExternalAllocCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1430
    return-void
.end method

.method public static resetGlobalExternalAllocSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1423
    return-void
.end method

.method public static resetGlobalExternalFreedCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1455
    return-void
.end method

.method public static resetGlobalExternalFreedSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1471
    return-void
.end method

.method public static resetGlobalFreedCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1316
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1317
    return-void
.end method

.method public static resetGlobalFreedSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1338
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1339
    return-void
.end method

.method public static resetGlobalGcInvocationCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1360
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1361
    return-void
.end method

.method public static resetThreadAllocCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1492
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1493
    return-void
.end method

.method public static resetThreadAllocSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1515
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1516
    return-void
.end method

.method public static resetThreadExternalAllocCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1532
    return-void
.end method

.method public static resetThreadExternalAllocSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1548
    return-void
.end method

.method public static resetThreadGcInvocationCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1569
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1570
    return-void
.end method

.method public static setAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1790
    const/4 v0, -0x1

    return v0
.end method

.method public static setFieldsOn(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2162
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    .line 2163
    return-void
.end method

.method public static setFieldsOn(Ljava/lang/Class;Z)V
    .locals 3
    .param p1, "partial"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 2241
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "Debug"

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFieldsOn("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2243
    const-string/jumbo v2, ") called in non-DEBUG build"

    .line 2242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2241
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    return-void

    .line 2242
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setGlobalAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1803
    const/4 v0, -0x1

    return v0
.end method

.method public static startAllocCounting()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1240
    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    .line 1241
    return-void
.end method

.method public static startMethodTracing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1018
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1019
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;)V
    .locals 1
    .param p0, "tracePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1047
    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 1048
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;I)V
    .locals 1
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I

    .prologue
    .line 1079
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 1080
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;II)V
    .locals 2
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1113
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1114
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)V
    .locals 7
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bufferSize"    # I
    .param p3, "flags"    # I
    .param p4, "streamOutput"    # Z

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, p4

    .line 1176
    invoke-static/range {v0 .. v6}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    .line 1177
    return-void
.end method

.method public static startMethodTracingDdms(IIZI)V
    .locals 0
    .param p0, "bufferSize"    # I
    .param p1, "flags"    # I
    .param p2, "samplingEnabled"    # Z
    .param p3, "intervalUs"    # I

    .prologue
    .line 1188
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdms(IIZI)V

    .line 1189
    return-void
.end method

.method public static startMethodTracingSampling(Ljava/lang/String;II)V
    .locals 3
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "intervalUs"    # I

    .prologue
    .line 1137
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1138
    return-void
.end method

.method public static startNativeTracing()V
    .locals 5

    .prologue
    .line 939
    const/4 v2, 0x0

    .line 941
    .local v2, "outStream":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string/jumbo v4, "/sys/qemu_trace/state"

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 942
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    .local v3, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    const-string/jumbo v4, "1"

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 946
    if-eqz v3, :cond_0

    .line 947
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v2, v3

    .line 950
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 951
    return-void

    .line 944
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 946
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_1

    .line 947
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 945
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v4

    .line 946
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    :goto_2
    if-eqz v2, :cond_2

    .line 947
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 945
    :cond_2
    throw v4

    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v2, "outStream":Ljava/io/PrintWriter;
    goto :goto_2

    .line 944
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method public static stopAllocCounting()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1250
    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    .line 1251
    return-void
.end method

.method public static stopMethodTracing()V
    .locals 0

    .prologue
    .line 1205
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    .line 1206
    return-void
.end method

.method public static stopNativeTracing()V
    .locals 5

    .prologue
    .line 964
    invoke-static {}, Ldalvik/system/VMDebug;->stopEmulatorTracing()V

    .line 967
    const/4 v2, 0x0

    .line 969
    .local v2, "outStream":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string/jumbo v4, "/sys/qemu_trace/state"

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 970
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    .local v3, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    const-string/jumbo v4, "0"

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 976
    if-eqz v3, :cond_0

    .line 977
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v2, v3

    .line 979
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 972
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 976
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_1

    .line 977
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 975
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v4

    .line 976
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    :goto_2
    if-eqz v2, :cond_2

    .line 977
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 975
    :cond_2
    throw v4

    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v2, "outStream":Ljava/io/PrintWriter;
    goto :goto_2

    .line 972
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method public static threadCpuTimeNanos()J
    .locals 2

    .prologue
    .line 1220
    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static waitForDebugger()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 820
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 822
    return-void

    .line 824
    :cond_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 825
    return-void

    .line 828
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "Sending WAIT chunk"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 829
    new-array v0, v7, [B

    aput-byte v8, v0, v8

    .line 830
    .local v0, "data":[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string/jumbo v5, "WAIT"

    invoke-static {v5}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5, v0, v8, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 831
    .local v4, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 833
    sput-boolean v7, Landroid/os/Debug;->mWaiting:Z

    .line 834
    :goto_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 835
    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v1

    .local v1, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 838
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    sput-boolean v8, Landroid/os/Debug;->mWaiting:Z

    .line 840
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "Debugger has connected"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 852
    :goto_1
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    move-result-wide v2

    .line 853
    .local v2, "delta":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    .line 854
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "debugger detached?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    :goto_2
    return-void

    .line 858
    :cond_3
    const-wide/16 v6, 0x514

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    .line 859
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "waiting for debugger to settle..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 860
    const-wide/16 v6, 0xc8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 861
    :catch_1
    move-exception v1

    .restart local v1    # "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 863
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "debugger has settled ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static waitingForDebugger()Z
    .locals 1

    .prologue
    .line 874
    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    return v0
.end method
