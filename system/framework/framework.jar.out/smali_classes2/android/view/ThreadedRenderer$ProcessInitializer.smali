.class Landroid/view/ThreadedRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$ProcessInitializer$1;
    }
.end annotation


# static fields
.field static sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

.field private mGraphicsStatsService:Landroid/view/IGraphicsStats;

.field private mInitialized:Z


# direct methods
.method static synthetic -wrap0(Landroid/view/ThreadedRenderer$ProcessInitializer;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/ThreadedRenderer$ProcessInitializer;

    .prologue
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->rotateBuffer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 939
    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/view/ThreadedRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    .line 938
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 945
    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer$1;

    invoke-direct {v0, p0}, Landroid/view/ThreadedRenderer$ProcessInitializer$1;-><init>(Landroid/view/ThreadedRenderer$ProcessInitializer;)V

    iput-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 952
    return-void
.end method

.method private initGraphicsStats()V
    .locals 4

    .prologue
    .line 973
    :try_start_0
    const-string/jumbo v2, "graphicsstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 974
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    return-void

    .line 975
    :cond_0
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 976
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->requestBuffer()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v1

    .line 978
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ThreadedRenderer"

    const-string/jumbo v3, "Could not acquire gfx stats buffer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initSched(J)V
    .locals 5
    .param p1, "renderProxy"    # J

    .prologue
    .line 964
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/ThreadedRenderer;->-wrap0(J)I

    move-result v1

    .line 965
    .local v1, "tid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    .end local v1    # "tid":I
    :goto_0
    return-void

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ThreadedRenderer"

    const-string/jumbo v3, "Failed to set scheduler for RenderThread"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestBuffer()V
    .locals 5

    .prologue
    .line 989
    :try_start_0
    iget-object v3, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 990
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 991
    iget-object v4, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 990
    invoke-interface {v3, v1, v4}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 992
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3}, Landroid/view/ThreadedRenderer;->-wrap2(I)V

    .line 993
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v2

    .line 995
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "ThreadedRenderer"

    const-string/jumbo v4, "Could not acquire gfx stats buffer"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private rotateBuffer()V
    .locals 0

    .prologue
    .line 983
    invoke-static {}, Landroid/view/ThreadedRenderer;->-wrap1()V

    .line 984
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->requestBuffer()V

    .line 985
    return-void
.end method


# virtual methods
.method declared-synchronized init(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderProxy"    # J

    .prologue
    monitor-enter p0

    .line 955
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 956
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 957
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mAppContext:Landroid/content/Context;

    .line 958
    invoke-direct {p0, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initSched(J)V

    .line 959
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initGraphicsStats()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 960
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
