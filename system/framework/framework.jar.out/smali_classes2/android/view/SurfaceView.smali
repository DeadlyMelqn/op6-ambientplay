.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$WindowStoppedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$1;,
        Landroid/view/SurfaceView$2;,
        Landroid/view/SurfaceView$3;,
        Landroid/view/SurfaceView$SurfaceControlWithBackground;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private mAttachedToWindow:Z

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private mPendingReportDraws:I

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private volatile mRtHandlingPositionUpdates:Z

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceCreated:Z

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field mSurfaceWidth:I

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method static synthetic -wrap0(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/SurfaceView;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 106
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 108
    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 112
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 124
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 126
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 127
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 130
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    .line 129
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 138
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 137
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 148
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 149
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 150
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 151
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 152
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 154
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 155
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 159
    iput v5, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 161
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 162
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 165
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 166
    iput v3, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 167
    iput v3, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 168
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 169
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 170
    iput v3, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 172
    iput v3, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v3, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 178
    iput v5, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 793
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 927
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 196
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->requestPositionUpdates(Landroid/view/SurfaceView;)V

    .line 198
    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 199
    return-void
.end method

.method private getParentSurfaceInsets()Landroid/graphics/Rect;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 464
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 465
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 466
    return-object v1

    .line 468
    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    return-object v1
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .prologue
    .line 871
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 872
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 873
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 875
    return-object v0

    .line 871
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isAboveParent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 924
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onDrawFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 768
    iput-object v1, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 771
    :cond_0
    new-instance v0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 774
    return-void
.end method

.method private performDrawFinished()V
    .locals 3

    .prologue
    .line 270
    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v0, :cond_1

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 272
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    .line 274
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "finished drawing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 278
    const-string/jumbo v2, " but no pending report draw (extra call"

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    const-string/jumbo v2, " to draw completion runnable?)"

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 905
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 906
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    .locals 6
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "frameNumber"    # J

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 779
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 781
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 782
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    .line 784
    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 785
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 787
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 786
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 785
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 791
    return-void

    .line 788
    :catchall_0
    move-exception v1

    .line 789
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 788
    throw v1
.end method

.method private updateOpaqueFlag()V
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0
.end method

.method private updateRequestedVisibility()V
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 213
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic -android_view_SurfaceView-mthref-0()V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 388
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 390
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 392
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 395
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 396
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 378
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 380
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 383
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 384
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v3, 0x0

    .line 349
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    .line 353
    :cond_1
    const/4 v7, 0x1

    .line 354
    .local v7, "opaque":Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    .line 356
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 368
    .end local v7    # "opaque":Z
    :cond_2
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    const/4 v7, 0x0

    .line 371
    :cond_3
    return v7

    .line 357
    .restart local v7    # "opaque":Z
    :cond_4
    if-eqz p1, :cond_2

    .line 358
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 359
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 360
    .local v6, "h":I
    if-lez v8, :cond_2

    if-lez v6, :cond_2

    .line 361
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 363
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v1, v0, v3

    .line 364
    .local v1, "l":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 365
    .local v2, "t":I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isFixedSize()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 920
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-android_view_SurfaceView_32305()V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method notifyDrawFinished()V
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 285
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 288
    :cond_0
    iget v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 289
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 225
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 227
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewRootImpl;->addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    .line 228
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 230
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 231
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 233
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 234
    iget-object v1, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 235
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v1, :cond_1

    .line 236
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 237
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 238
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 239
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 241
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 299
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    .line 303
    :cond_0
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 304
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 306
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 307
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 308
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 311
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v2, :cond_2

    .line 312
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    goto :goto_0

    .line 315
    :cond_2
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 317
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 318
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3

    .line 319
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    .line 321
    :cond_3
    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 323
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 325
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 326
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 330
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ltz v2, :cond_0

    .line 331
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    .line 333
    .local v1, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    .line 334
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    .line 336
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 337
    return-void

    .line 332
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .restart local v1    # "width":I
    goto :goto_0

    .line 335
    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 246
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 247
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 248
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 249
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 343
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 344
    return v0
.end method

.method public setSecure(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .prologue
    .line 448
    if-eqz p1, :cond_0

    .line 449
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 255
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    xor-int/lit8 v0, v1, 0x1

    .line 256
    :goto_0
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_1

    .line 263
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 265
    :cond_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 266
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 267
    return-void

    .line 255
    :cond_2
    const/4 v0, 0x0

    .local v0, "newRequestedVisible":Z
    goto :goto_0
.end method

.method public setWindowType(I)V
    .locals 3
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 888
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 889
    const-string/jumbo v1, "SurfaceView#setWindowType() has never been a public API."

    .line 888
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 893
    const-string/jumbo v0, "SurfaceView"

    const-string/jumbo v1, "If you are calling SurfaceView#setWindowType(TYPE_APPLICATION_PANEL) just to make the SurfaceView to be placed on top of its window, you must call setZOrderOnTop(true) instead."

    .line 895
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 893
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 897
    return-void

    .line 899
    :cond_1
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SurfaceView#setWindowType(int) is deprecated and now does nothing. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 900
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 899
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 411
    const/4 v0, -0x1

    .line 410
    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 412
    return-void

    .line 411
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 429
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    goto :goto_0
.end method

.method public final surfacePositionLost_uiRtSync(J)V
    .locals 3
    .param p1, "frameNumber"    # J

    .prologue
    .line 844
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 846
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 847
    return-void

    .line 849
    :cond_0
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-eqz v1, :cond_1

    .line 850
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 855
    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 861
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :cond_1
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "SurfaceView"

    const-string/jumbo v2, "Exception configuring surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateSurface()V
    .locals 32

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v2, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v28

    .line 478
    .local v28, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v28, :cond_1

    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_2

    .line 479
    :cond_1
    return-void

    .line 478
    :cond_2
    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 482
    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_3

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 487
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v18, v0

    .line 488
    .local v18, "myWidth":I
    if-gtz v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v18

    .line 489
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v17, v0

    .line 490
    .local v17, "myHeight":I
    if-gtz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v17

    .line 492
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v2, v3, :cond_11

    const/4 v15, 0x1

    .line 493
    .local v15, "formatChanged":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v2, v3, :cond_12

    const/16 v30, 0x1

    .line 494
    .local v30, "visibleChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_6

    if-nez v15, :cond_6

    if-eqz v30, :cond_13

    .line 495
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 496
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_14

    :cond_7
    const/16 v23, 0x1

    .line 497
    .local v23, "sizeChanged":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v2, v3, :cond_15

    const/16 v31, 0x1

    .line 498
    .local v31, "windowVisibleChanged":Z
    :goto_4
    const/16 v21, 0x0

    .line 500
    .local v21, "redrawNeeded":Z
    if-nez v13, :cond_8

    if-nez v15, :cond_8

    if-nez v23, :cond_8

    if-nez v30, :cond_8

    if-eqz v31, :cond_2a

    .line 501
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 511
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 512
    .local v29, "visible":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 514
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 515
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 516
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mFormat:I

    .line 517
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_9

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 527
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getParentSurfaceInsets()Landroid/graphics/Rect;

    move-result-object v26

    .line 528
    .local v26, "surfaceInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 530
    if-eqz v13, :cond_16

    .line 531
    new-instance v2, Landroid/view/SurfaceSession;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 534
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 535
    new-instance v2, Landroid/view/SurfaceView$SurfaceControlWithBackground;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SurfaceView - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 537
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/SurfaceView;->mFormat:I

    .line 538
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    move-object/from16 v3, p0

    .line 535
    invoke-direct/range {v2 .. v9}, Landroid/view/SurfaceView$SurfaceControlWithBackground;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 543
    :cond_a
    const/16 v20, 0x0

    .line 545
    .local v20, "realSizeChanged":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    xor-int/lit8 v2, v29, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 552
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 554
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 555
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v2, :cond_17

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 569
    :goto_5
    if-nez v23, :cond_b

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    .line 570
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 572
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 571
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 575
    :cond_c
    if-eqz v23, :cond_d

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setSize(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    :cond_d
    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 582
    if-nez v23, :cond_e

    if-eqz v13, :cond_f

    .line 583
    :cond_e
    const/16 v21, 0x1

    .line 586
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v2, :cond_19

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 597
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    .line 598
    .local v27, "surfaceWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    .line 599
    .local v25, "surfaceHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_1a

    .line 600
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move/from16 v0, v25

    if-eq v2, v0, :cond_1b

    const/16 v20, 0x1

    .line 601
    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 602
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 604
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 608
    if-eqz v29, :cond_1c

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mDrawFinished:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_8
    or-int v21, v21, v2

    .line 610
    .local v21, "redrawNeeded":Z
    const/4 v12, 0x0

    .line 612
    .local v12, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v24, v13

    .line 613
    .local v24, "surfaceChanged":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v2, :cond_1e

    if-nez v24, :cond_10

    if-nez v29, :cond_1e

    if-eqz v30, :cond_1e

    .line 614
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 618
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    .line 619
    .local v12, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    const/4 v2, 0x0

    array-length v3, v12

    :goto_9
    if-ge v2, v3, :cond_1d

    aget-object v11, v12, v2

    .line 620
    .local v11, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 492
    .end local v11    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v12    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v15    # "formatChanged":Z
    .end local v20    # "realSizeChanged":Z
    .end local v21    # "redrawNeeded":Z
    .end local v23    # "sizeChanged":Z
    .end local v24    # "surfaceChanged":Z
    .end local v25    # "surfaceHeight":I
    .end local v26    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v27    # "surfaceWidth":I
    .end local v29    # "visible":Z
    .end local v30    # "visibleChanged":Z
    .end local v31    # "windowVisibleChanged":Z
    :cond_11
    const/4 v15, 0x0

    .restart local v15    # "formatChanged":Z
    goto/16 :goto_0

    .line 493
    :cond_12
    const/16 v30, 0x0

    .restart local v30    # "visibleChanged":Z
    goto/16 :goto_1

    .line 494
    :cond_13
    const/4 v13, 0x0

    .local v13, "creating":Z
    goto/16 :goto_2

    .line 496
    .end local v13    # "creating":Z
    :cond_14
    const/16 v23, 0x0

    .restart local v23    # "sizeChanged":Z
    goto/16 :goto_3

    .line 497
    :cond_15
    const/16 v31, 0x0

    .restart local v31    # "windowVisibleChanged":Z
    goto/16 :goto_4

    .line 539
    .local v21, "redrawNeeded":Z
    .restart local v26    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v29    # "visible":Z
    :cond_16
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v2, :cond_a

    .line 540
    return-void

    .line 558
    .restart local v20    # "realSizeChanged":Z
    :cond_17
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 578
    :catchall_0
    move-exception v2

    .line 579
    :try_start_8
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 578
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 603
    :catchall_1
    move-exception v2

    .line 604
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 603
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 711
    .end local v20    # "realSizeChanged":Z
    .end local v21    # "redrawNeeded":Z
    .end local v26    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v29    # "visible":Z
    :catch_0
    move-exception v14

    .line 712
    .local v14, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "SurfaceView"

    const-string/jumbo v3, "Exception configuring surface"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v14    # "ex":Ljava/lang/Exception;
    :cond_18
    :goto_a
    return-void

    .line 592
    .restart local v20    # "realSizeChanged":Z
    .restart local v21    # "redrawNeeded":Z
    .restart local v26    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v29    # "visible":Z
    :cond_19
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v10, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 593
    .local v10, "appInvertedScale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_6

    .line 599
    .end local v10    # "appInvertedScale":F
    .restart local v25    # "surfaceHeight":I
    .restart local v27    # "surfaceWidth":I
    :cond_1a
    const/16 v20, 0x1

    goto/16 :goto_7

    .line 600
    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 608
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 633
    .restart local v12    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v21, "redrawNeeded":Z
    .restart local v24    # "surfaceChanged":Z
    :cond_1d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 639
    .end local v12    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1e
    if-eqz v13, :cond_1f

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 643
    :cond_1f
    if-eqz v23, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 644
    const/16 v3, 0x1a

    .line 643
    if-ge v2, v3, :cond_20

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->createFrom(Landroid/view/SurfaceControl;)V

    .line 653
    :cond_20
    if-eqz v29, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 654
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_23

    if-nez v24, :cond_21

    if-eqz v30, :cond_23

    .line 657
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setOwnerPid(I)I

    .line 659
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 660
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 663
    if-nez v12, :cond_22

    .line 664
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    .line 666
    :cond_22
    const/4 v2, 0x0

    array-length v3, v12

    :goto_b
    if-ge v2, v3, :cond_23

    aget-object v11, v12, v2

    .line 667
    .restart local v11    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 666
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 670
    .end local v11    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_23
    if-nez v13, :cond_24

    if-nez v15, :cond_24

    if-nez v23, :cond_24

    if-nez v30, :cond_24

    if-eqz v20, :cond_26

    .line 675
    :cond_24
    if-nez v12, :cond_25

    .line 676
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    .line 678
    :cond_25
    const/4 v2, 0x0

    array-length v3, v12

    :goto_c
    if-ge v2, v3, :cond_26

    aget-object v11, v12, v2

    .line 679
    .restart local v11    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mFormat:I

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v11, v4, v5, v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 682
    .end local v11    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_26
    if-eqz v21, :cond_28

    .line 685
    if-nez v12, :cond_27

    .line 686
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    .line 689
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 690
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewRootImpl;->drawPending()V

    .line 692
    new-instance v22, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v2, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;-><init>(BLjava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 693
    .local v22, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 697
    .end local v22    # "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    :cond_28
    const/4 v2, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_18

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 705
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_18

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    .line 707
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto/16 :goto_a

    .line 696
    .end local v21    # "redrawNeeded":Z
    .end local v24    # "surfaceChanged":Z
    :catchall_2
    move-exception v2

    .line 697
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_29

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 705
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v3, :cond_29

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V

    .line 707
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 696
    :cond_29
    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 721
    .end local v20    # "realSizeChanged":Z
    .end local v25    # "surfaceHeight":I
    .end local v26    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v27    # "surfaceWidth":I
    .end local v29    # "visible":Z
    .local v21, "redrawNeeded":Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    .line 722
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_2d

    .line 723
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_2e

    const/16 v19, 0x1

    .line 724
    .local v19, "positionChanged":Z
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_30

    const/16 v16, 0x1

    .line 726
    .local v16, "layoutSizeChanged":Z
    :goto_e
    if-nez v19, :cond_2b

    if-eqz v16, :cond_18

    .line 727
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 735
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    .line 734
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_2c

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 741
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_31

    .line 742
    return-void

    .line 722
    .end local v16    # "layoutSizeChanged":Z
    .end local v19    # "positionChanged":Z
    :cond_2d
    const/16 v19, 0x1

    .restart local v19    # "positionChanged":Z
    goto/16 :goto_d

    .line 723
    .end local v19    # "positionChanged":Z
    :cond_2e
    const/16 v19, 0x0

    .restart local v19    # "positionChanged":Z
    goto/16 :goto_d

    .line 724
    :cond_2f
    const/16 v16, 0x1

    .restart local v16    # "layoutSizeChanged":Z
    goto :goto_e

    .line 725
    .end local v16    # "layoutSizeChanged":Z
    :cond_30
    const/16 v16, 0x0

    .restart local v16    # "layoutSizeChanged":Z
    goto :goto_e

    .line 745
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_18

    .line 751
    :cond_32
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_a

    .line 752
    :catch_1
    move-exception v14

    .line 753
    .restart local v14    # "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "SurfaceView"

    const-string/jumbo v3, "Exception configuring surface"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method

.method public final updateSurfacePosition_renderWorker(JIIII)V
    .locals 3
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 801
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 802
    return-void

    .line 813
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 814
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v1, p3, :cond_1

    .line 815
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v1, p4, :cond_1

    .line 816
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v1, p5, :cond_1

    .line 817
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p6, :cond_1

    .line 818
    return-void

    .line 826
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 827
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "SurfaceView"

    const-string/jumbo v2, "Exception from repositionChild"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public windowStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 219
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 220
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 221
    return-void
.end method
