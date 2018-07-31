.class public Lcom/android/systemui/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoader$1;
    }
.end annotation


# instance fields
.field private final mActivityInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

.field private final mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultTaskBarBackgroundColor:I

.field mDefaultTaskViewBackgroundColor:I

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field private final mHighResThumbnailLoader:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

.field private final mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field private final mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

.field private final mMaxIconCacheSize:I

.field private final mMaxThumbnailCacheSize:I

.field private mNumVisibleTasksLoaded:I

.field private final mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyStrongCache",
            "<",
            "Lcom/android/systemui/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyStrongCache",
            "<",
            "Lcom/android/systemui/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_systemui_recents_model_RecentsTaskLoader-mthref-0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)V
    .locals 0

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->setTaskLoadQueueIdle(Z)V

    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsTaskLoader;)Landroid/util/LruCache;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v5, Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-direct {v5}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    .line 273
    new-instance v5, Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-direct {v5}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    .line 286
    new-instance v5, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    .line 285
    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 298
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f060351

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 297
    iput v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    .line 300
    const v5, 0x7f060355

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 299
    iput v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    .line 301
    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 302
    const v5, 0x7f0b0011

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 303
    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 307
    .local v1, "iconCacheSize":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 311
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 312
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 313
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 314
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 317
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 320
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    .line 321
    .local v2, "numRecentTasks":I
    new-instance v5, Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    .line 322
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    .line 321
    invoke-direct {v5, v6, v7, v8}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/os/Looper;Z)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mHighResThumbnailLoader:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .line 323
    new-instance v5, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-direct {v5}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 324
    new-instance v5, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v5, v1, v6}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 325
    new-instance v5, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v5, v2, v6}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 326
    new-instance v5, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 327
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 326
    invoke-direct {v5, v2, v6}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 328
    new-instance v5, Landroid/util/LruCache;

    invoke-direct {v5, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 329
    new-instance v5, Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v8, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 330
    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mHighResThumbnailLoader:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/systemui/recents/model/-$Lambda$XT6XVrVkUxqNS951SJggsQ_XZYs;

    invoke-direct {v10, v9}, Lcom/android/systemui/recents/model/-$Lambda$XT6XVrVkUxqNS951SJggsQ_XZYs;-><init>(Ljava/lang/Object;)V

    .line 329
    invoke-direct {v5, v6, v7, v8, v10}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/TaskKeyLruCache;Landroid/graphics/drawable/BitmapDrawable;Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    .line 331
    return-void
.end method

.method private stopLoader()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->stop()V

    .line 647
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->clearTasks()V

    .line 648
    return-void
.end method


# virtual methods
.method public createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    return-object v0
.end method

.method public deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "notifyTaskDataUnloaded"    # Z

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 414
    if-eqz p2, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/drawable/Drawable;)V

    .line 417
    :cond_0
    return-void
.end method

.method public declared-synchronized dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 668
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsTaskLoader"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Icon Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 673
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Thumbnail Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 675
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Temp Thumbnail Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 677
    return-void

    .end local v0    # "innerPrefix":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 609
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    return v0

    .line 612
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    return v0
.end method

.method getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 599
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    return v0

    .line 602
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    return v0
.end method

.method getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "loadIfNotCached"    # Z

    .prologue
    const/4 v4, 0x0

    .line 525
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 528
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 529
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 530
    return-object v1

    .line 533
    :cond_0
    if-eqz p4, :cond_2

    .line 535
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, p2, v3, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 536
    if-eqz v1, :cond_1

    .line 537
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 538
    return-object v1

    .line 542
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 543
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 544
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_2

    .line 546
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 547
    return-object v1

    .line 552
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    return-object v4
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    const/4 v6, 0x0

    .line 620
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 621
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 622
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 623
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_2

    .line 624
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 625
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 626
    :cond_0
    const-string/jumbo v3, "RecentsTaskLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected null component name or activity info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-object v6

    .line 630
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_2
    return-object v0
.end method

.method getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 464
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 467
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 468
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 472
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 473
    return-object v1

    .line 476
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 477
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 478
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v1

    .line 479
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 480
    return-object v1

    .line 484
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 493
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 496
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 497
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 498
    return-object v1

    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 503
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 504
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3, p2, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 505
    if-nez p2, :cond_1

    .line 511
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 513
    :cond_1
    return-object v1

    .line 517
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method declared-synchronized getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 8
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "loadIfNotCached"    # Z
    .param p3, "storeInCache"    # Z

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 560
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 562
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/ThumbnailData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    .local v0, "cached":Lcom/android/systemui/recents/model/ThumbnailData;
    if-eqz v0, :cond_0

    monitor-exit p0

    .line 564
    return-object v0

    .line 567
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cached":Lcom/android/systemui/recents/model/ThumbnailData;
    check-cast v0, Lcom/android/systemui/recents/model/ThumbnailData;

    .line 568
    .restart local v0    # "cached":Lcom/android/systemui/recents/model/ThumbnailData;
    if-eqz v0, :cond_1

    .line 569
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v4, p1, v0}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 570
    return-object v0

    .line 573
    :cond_1
    if-eqz p2, :cond_3

    .line 574
    :try_start_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    .line 575
    .local v1, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    .line 577
    iget v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 579
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->isTopAppLocked:Z

    const/4 v6, 0x1

    .line 577
    invoke-virtual {v2, v4, v6, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(IZZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v3

    .line 581
    .local v3, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    iget-object v4, v3, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 582
    if-eqz p3, :cond_2

    .line 583
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v4, p1, v3}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    .line 585
    return-object v3

    .end local v1    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v3    # "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    :cond_3
    monitor-exit p0

    .line 591
    return-object v7

    .end local v0    # "cached":Lcom/android/systemui/recents/model/ThumbnailData;
    .end local v2    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHighResThumbnailLoader()Lcom/android/systemui/recents/model/HighResThumbnailLoader;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mHighResThumbnailLoader:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    return-object v0
.end method

.method public getIconCacheSize()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getThumbnailCacheSize()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public loadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 397
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 398
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 399
    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    .line 400
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public declared-synchronized loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p3, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    monitor-enter p0

    .line 373
    if-nez p3, :cond_0

    .line 374
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Requires load options"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 376
    :cond_0
    :try_start_1
    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->copyEntries(Lcom/android/systemui/recents/model/TaskKeyStrongCache;)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->evictAll()V

    .line 385
    :cond_1
    invoke-virtual {p2, p3, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->evictAll()V

    .line 387
    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez v0, :cond_2

    .line 388
    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 390
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    .prologue
    .line 656
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 657
    .local v0, "activityInfoCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 658
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 662
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 665
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method

.method public declared-synchronized onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    monitor-enter p0

    .line 424
    sparse-switch p1, :sswitch_data_0

    :goto_0
    monitor-exit p0

    .line 458
    return-void

    .line 427
    :sswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 429
    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x2

    .line 428
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 434
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 436
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 435
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    goto :goto_0

    .line 441
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 443
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 442
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    goto :goto_0

    .line 448
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 453
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->evictAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3c -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public declared-synchronized preloadRawTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V
    .locals 1
    .param p1, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 356
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 357
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V
    .locals 1
    .param p1, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "runningTaskId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 363
    :try_start_0
    const-string/jumbo v0, "preloadPlan"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :try_start_1
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 368
    return-void

    .line 365
    :catchall_0
    move-exception v0

    .line 366
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 365
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startLoader(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->start(Landroid/content/Context;)V

    .line 640
    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/drawable/Drawable;)V

    .line 406
    return-void
.end method
