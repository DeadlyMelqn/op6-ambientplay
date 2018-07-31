.class public Lcom/android/systemui/util/leak/GarbageMonitor;
.super Ljava/lang/Object;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/leak/GarbageMonitor$Service;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLeakReporter:Lcom/android/systemui/util/leak/LeakReporter;

.field private final mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/util/leak/LeakReporter;)V
    .locals 1
    .param p1, "bgLooper"    # Landroid/os/Looper;
    .param p2, "leakDetector"    # Lcom/android/systemui/util/leak/LeakDetector;
    .param p3, "leakReporter"    # Lcom/android/systemui/util/leak/LeakReporter;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHandler:Landroid/os/Handler;

    .line 44
    invoke-virtual {p2}, Lcom/android/systemui/util/leak/LeakDetector;->getTrackedGarbage()Lcom/android/systemui/util/leak/TrackedGarbage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mLeakReporter:Lcom/android/systemui/util/leak/LeakReporter;

    .line 46
    return-void
.end method

.method private inspectGarbage()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/TrackedGarbage;->countOldGarbage()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 66
    new-instance v0, Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->scheduleReinspectGarbage(Ljava/lang/Runnable;)V

    .line 68
    :cond_0
    new-instance v0, Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->scheduleInspectGarbage(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method private reinspectGarbageAfterGc()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v1}, Lcom/android/systemui/util/leak/TrackedGarbage;->countOldGarbage()I

    move-result v0

    .line 78
    .local v0, "count":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mLeakReporter:Lcom/android/systemui/util/leak/LeakReporter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakReporter;->dumpLeak(I)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_util_leak_GarbageMonitor-mthref-0()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->inspectGarbage()V

    return-void
.end method

.method synthetic -com_android_systemui_util_leak_GarbageMonitor-mthref-1()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->reinspectGarbageAfterGc()V

    return-void
.end method

.method synthetic -com_android_systemui_util_leak_GarbageMonitor-mthref-2()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->inspectGarbage()V

    return-void
.end method

.method scheduleInspectGarbage(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method

.method scheduleReinspectGarbage(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-nez v0, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->scheduleInspectGarbage(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
