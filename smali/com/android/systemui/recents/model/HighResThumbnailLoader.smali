.class public Lcom/android/systemui/recents/model/HighResThumbnailLoader;
.super Ljava/lang/Object;
.source "HighResThumbnailLoader.java"

# interfaces
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;
    }
.end annotation


# instance fields
.field private mFlingingFast:Z

.field private final mIsLowRamDevice:Z

.field private final mLoadQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadThread:Ljava/lang/Thread;

.field private final mLoader:Ljava/lang/Runnable;

.field private mLoaderIdling:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation
.end field

.field private mLoading:Z

.field private final mLoadingTasks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mTaskLoadQueueIdle:Z

.field private mVisible:Z

.field private final mVisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/os/Looper;Z)V
    .locals 3
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isLowRamDevice"    # Z

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    .line 44
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;-><init>(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    const-string/jumbo v2, "Recents-HighResThumbnailLoader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 63
    iput-boolean p3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    .line 64
    return-void
.end method

.method private setLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-ne p1, v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 108
    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    .line 109
    if-nez p1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 115
    return-void

    .line 112
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->startLoading()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startLoading()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 120
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 121
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 121
    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 121
    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 126
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->notifyAll()V

    .line 127
    return-void
.end method

.method private stopLoading()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->notifyAll()V

    .line 133
    return-void
.end method

.method private updateLoading()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->setLoading(Z)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method isLoading()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    return v0
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "thumbnailData"    # Lcom/android/systemui/recents/model/ThumbnailData;

    .prologue
    .line 178
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 183
    :cond_0
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTaskDataUnloaded()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onTaskInvisible(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 157
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 162
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTaskStackIdChanged()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onTaskVisible(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 142
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 150
    :cond_1
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFlingingFast(Z)V
    .locals 1
    .param p1, "flingingFast"    # Z

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    return-void

    .line 78
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 80
    return-void
.end method

.method public setTaskLoadQueueIdle(Z)V
    .locals 1
    .param p1, "idle"    # Z

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 92
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisible:Z

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 72
    return-void
.end method

.method waitForLoaderIdle()V
    .locals 2

    .prologue
    .line 167
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 169
    return-void

    :cond_0
    monitor-exit v1

    .line 172
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
