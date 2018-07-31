.class final Landroid/view/ViewDebug$5;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:[J

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$operation:Landroid/view/ViewDebug$ViewOperation;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Landroid/view/ViewDebug$ViewOperation;[J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    iput-object p3, p0, Landroid/view/ViewDebug$5;->val$duration:[J

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 637
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    invoke-interface {v1}, Landroid/view/ViewDebug$ViewOperation;->pre()[Ljava/lang/Object;

    move-result-object v0

    .line 638
    .local v0, "data":[Ljava/lang/Object;, "[TT;"
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    .line 640
    .local v2, "start":J
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    invoke-interface {v1, v0}, Landroid/view/ViewDebug$ViewOperation;->run([Ljava/lang/Object;)V

    .line 641
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$duration:[J

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const/4 v6, 0x0

    aput-wide v4, v1, v6

    .line 643
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    invoke-interface {v1, v0}, Landroid/view/ViewDebug$ViewOperation;->post([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 647
    return-void

    .line 644
    .end local v0    # "data":[Ljava/lang/Object;, "[TT;"
    .end local v2    # "start":J
    :catchall_0
    move-exception v1

    .line 645
    iget-object v4, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 644
    throw v1
.end method
