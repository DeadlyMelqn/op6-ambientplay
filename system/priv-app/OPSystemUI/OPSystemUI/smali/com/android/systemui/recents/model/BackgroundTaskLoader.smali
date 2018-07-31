.class Lcom/android/systemui/recents/model/BackgroundTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;
    }
.end annotation


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field mCancelled:Z

.field mContext:Landroid/content/Context;

.field mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoadThread:Landroid/os/HandlerThread;

.field mLoadThreadHandler:Landroid/os/Handler;

.field mMainThreadHandler:Landroid/os/Handler;

.field private final mOnIdleChangedListener:Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;

.field mStarted:Z

.field mWaitingOnLoadQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "TaskResourceLoader"

    sput-object v0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->DEBUG:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/TaskKeyLruCache;Landroid/graphics/drawable/BitmapDrawable;Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;)V
    .locals 3
    .param p1, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;
    .param p3, "defaultIcon"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p4, "onIdleChangedListener"    # Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskResourceLoadQueue;",
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "iconCache":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 116
    iput-object p2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 117
    iput-object p3, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 119
    iput-object p4, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mOnIdleChangedListener:Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Recents-TaskResourceLoader"

    .line 121
    const/16 v2, 0xa

    .line 120
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_model_BackgroundTaskLoader_8458(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p1, "thumbnailData"    # Lcom/android/systemui/recents/model/ThumbnailData;
    .param p2, "finalIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private processLoadQueueItem(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 8
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 203
    iget-object v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->nextTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 204
    .local v3, "t":Lcom/android/systemui/recents/model/Task;
    if-eqz v3, :cond_5

    .line 205
    iget-object v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 208
    .local v0, "cachedIcon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 209
    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 210
    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    iget-object v7, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 209
    invoke-virtual {p1, v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    if-nez v0, :cond_1

    .line 214
    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 213
    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 215
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_1

    .line 216
    sget-boolean v5, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loading icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p1, v2, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 227
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6, v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 230
    :cond_3
    sget-boolean v5, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->DEBUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loading thumbnail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_4
    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 233
    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-boolean v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->isTopAppLocked:Z

    const/4 v7, 0x1

    .line 231
    invoke-virtual {p1, v5, v7, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(IZZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v4

    .line 236
    .local v4, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    iget-boolean v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v5, :cond_5

    .line 238
    move-object v1, v0

    .line 239
    .local v1, "finalIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 240
    new-instance v6, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v3, v4, v1}, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    .end local v0    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "finalIcon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    :cond_5
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_model_BackgroundTaskLoader_5976()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mOnIdleChangedListener:Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;->onIdleChanged(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_model_BackgroundTaskLoader_6163()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mOnIdleChangedListener:Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;->onIdleChanged(Z)V

    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 156
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-eqz v2, :cond_1

    .line 159
    iput-object v6, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    .line 161
    iget-object v3, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v3

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 161
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 169
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 172
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz v1, :cond_2

    .line 173
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->processLoadQueueItem(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 177
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    monitor-enter v3

    .line 180
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    .line 181
    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 182
    new-instance v4, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8;-><init>(BLjava/lang/Object;)V

    .line 181
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->wait()V

    .line 184
    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 185
    new-instance v4, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0}, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8;-><init>(BLjava/lang/Object;)V

    .line 184
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    monitor-exit v3

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    .restart local v0    # "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 178
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mStarted:Z

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mStarted:Z

    .line 133
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    .line 151
    :cond_0
    return-void
.end method
