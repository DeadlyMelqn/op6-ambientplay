.class public Lcom/android/internal/view/SurfaceCallbackHelper;
.super Ljava/lang/Object;
.source "SurfaceCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/SurfaceCallbackHelper$1;
    }
.end annotation


# instance fields
.field mFinishDrawingCollected:I

.field mFinishDrawingExpected:I

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callbacksCollected"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    .line 27
    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    .line 29
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/SurfaceCallbackHelper$1;-><init>(Lcom/android/internal/view/SurfaceCallbackHelper;)V

    iput-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method


# virtual methods
.method public dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;

    .prologue
    const/4 v1, 0x0

    .line 47
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 49
    return-void

    .line 52
    :cond_1
    monitor-enter p0

    .line 53
    :try_start_0
    array-length v2, p2

    iput v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    .line 54
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 57
    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, p2, v1

    .line 58
    .local v0, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v3, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_2

    .line 59
    check-cast v0, Landroid/view/SurfaceHolder$Callback2;

    .line 60
    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v3, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 59
    invoke-interface {v0, p1, v3}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    .line 57
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 62
    .restart local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 65
    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_3
    return-void
.end method
