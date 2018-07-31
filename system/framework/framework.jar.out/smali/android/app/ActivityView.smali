.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$StateCallback;,
        Landroid/app/ActivityView$SurfaceCallback;
    }
.end annotation


# static fields
.field private static final DISPLAY_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field private static final TAG:Ljava/lang/String; = "ActivityView"


# instance fields
.field private mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mInputForwarder:Landroid/app/IInputForwarder;

.field private mOpened:Z

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method static synthetic -get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;
    .locals 1
    .param p0, "-this"    # Landroid/app/ActivityView;

    .prologue
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ActivityView;)Landroid/view/Surface;
    .locals 1
    .param p0, "-this"    # Landroid/app/ActivityView;

    .prologue
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ActivityView;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "-this"    # Landroid/app/ActivityView;

    .prologue
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;
    .locals 1
    .param p0, "-this"    # Landroid/app/ActivityView;

    .prologue
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "-this"    # Landroid/app/ActivityView;
    .param p1, "-value"    # Landroid/view/Surface;

    .prologue
    iput-object p1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/ActivityView;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/ActivityView;

    .prologue
    invoke-direct {p0}, Landroid/app/ActivityView;->getBaseDisplayDensity()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/app/ActivityView;)V
    .locals 0
    .param p0, "-this"    # Landroid/app/ActivityView;

    .prologue
    invoke-direct {p0}, Landroid/app/ActivityView;->initVirtualDisplay()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    .line 76
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 77
    new-instance v0, Landroid/app/ActivityView$SurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityView$SurfaceCallback;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$SurfaceCallback;)V

    iput-object v0, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    .line 78
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 79
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->addView(Landroid/view/View;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityView;->mOpened:Z

    .line 82
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private getBaseDisplayDensity()I
    .locals 4

    .prologue
    .line 318
    iget-object v2, p0, Landroid/app/ActivityView;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 319
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 320
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 321
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v2
.end method

.method private initVirtualDisplay()V
    .locals 7

    .prologue
    .line 264
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_0

    .line 265
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Trying to initialize for the second time."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    .line 269
    .local v2, "width":I
    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    .line 270
    .local v3, "height":I
    iget-object v1, p0, Landroid/app/ActivityView;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 272
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityViewVirtualDisplay@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-direct {p0}, Landroid/app/ActivityView;->getBaseDisplayDensity()I

    move-result v4

    iget-object v5, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    const/4 v6, 0x0

    .line 271
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 274
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_1

    .line 275
    const-string/jumbo v1, "ActivityView"

    const-string/jumbo v4, "Failed to initialize ActivityView"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 279
    :cond_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 280
    iget-object v4, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 279
    invoke-virtual {v1, v4}, Landroid/hardware/input/InputManager;->createInputForwarder(I)Landroid/app/IInputForwarder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    .line 281
    return-void
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 222
    iget-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    if-eqz v1, :cond_0

    .line 224
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    invoke-interface {v1, p1}, Landroid/app/IInputForwarder;->forwardEvent(Landroid/view/InputEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private performRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-boolean v1, p0, Landroid/app/ActivityView;->mOpened:Z

    if-nez v1, :cond_0

    .line 285
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 290
    iget-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    if-eqz v1, :cond_1

    .line 291
    iput-object v3, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    .line 295
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_4

    .line 296
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 297
    iput-object v3, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 298
    const/4 v0, 0x1

    .line 303
    .local v0, "displayReleased":Z
    :goto_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 305
    iput-object v3, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 308
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v1, p0}, Landroid/app/ActivityView$StateCallback;->onActivityViewDestroyed(Landroid/app/ActivityView;)V

    .line 312
    :cond_3
    iget-object v1, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 313
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityView;->mOpened:Z

    .line 314
    return-void

    .line 300
    .end local v0    # "displayReleased":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "displayReleased":Z
    goto :goto_0
.end method

.method private prepareActivityOptions()Landroid/app/ActivityOptions;
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 178
    const-string/jumbo v2, "Trying to start activity before ActivityView is ready."

    .line 177
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 181
    .local v0, "options":Landroid/app/ActivityOptions;
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 182
    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 329
    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->finalize()V

    .line 334
    return-void

    .line 331
    :catchall_0
    move-exception v0

    .line 332
    invoke-super {p0}, Landroid/view/ViewGroup;->finalize()V

    .line 331
    throw v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 204
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 196
    const-string/jumbo v1, "Trying to release container that is not initialized."

    .line 195
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V

    .line 199
    return-void
.end method

.method public setCallback(Landroid/app/ActivityView$StateCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/ActivityView$StateCallback;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    .line 120
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p0}, Landroid/app/ActivityView$StateCallback;->onActivityViewReady(Landroid/app/ActivityView;)V

    .line 123
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 161
    invoke-direct {p0}, Landroid/app/ActivityView;->prepareActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v9

    .line 165
    .local v9, "options":Landroid/app/ActivityOptions;
    :try_start_0
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 163
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 164
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 163
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-void

    .line 166
    :catch_0
    move-exception v8

    .line 167
    .local v8, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/app/ActivityView;->prepareActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 142
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/app/ActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
