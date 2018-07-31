.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0
    .param p0, "-this"    # Landroid/opengl/GLSurfaceView$GLThread;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1272
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1918
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1919
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1273
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1274
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1275
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1276
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1277
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1278
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1279
    return-void
.end method

.method private GLDrawCostDetection(I)V
    .locals 11
    .param p1, "type"    # I

    .prologue
    const/4 v10, 0x0

    .line 1660
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get1()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1661
    return-void

    .line 1662
    :cond_0
    if-nez p1, :cond_1

    .line 1663
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/opengl/GLSurfaceView;->-set1(J)J

    .line 1664
    return-void

    .line 1666
    :cond_1
    const/4 v3, 0x0

    .line 1667
    .local v3, "level":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get3()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x1fca055

    div-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-static {v6, v7}, Landroid/opengl/GLSurfaceView;->-set0(J)J

    .line 1668
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get0()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    .line 1669
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get9()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Landroid/opengl/GLSurfaceView;->-set2(I)I

    .line 1670
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get0()J

    move-result-wide v6

    const-wide/16 v8, 0x6

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5

    .line 1671
    const/4 v3, 0x3

    .line 1674
    :cond_2
    :goto_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get9()I

    move-result v5

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_3

    .line 1676
    const/4 v3, 0x3

    .line 1677
    invoke-static {v10}, Landroid/opengl/GLSurfaceView;->-set2(I)I

    .line 1685
    :cond_3
    :goto_1
    if-lez v3, :cond_4

    .line 1687
    const-string/jumbo v5, "SurfaceFlinger"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1688
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_4

    .line 1689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1690
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 1691
    .local v4, "mPid":I
    const-string/jumbo v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    const/16 v5, 0x2711

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v2, v5, v0, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1705
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v4    # "mPid":I
    :cond_4
    :goto_2
    return-void

    .line 1672
    :cond_5
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get0()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 1673
    const/4 v3, 0x2

    goto :goto_0

    .line 1680
    :cond_6
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get9()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_7

    .line 1681
    const/4 v3, 0x1

    .line 1682
    :cond_7
    invoke-static {v10}, Landroid/opengl/GLSurfaceView;->-set2(I)I

    goto :goto_1

    .line 1696
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    .restart local v4    # "mPid":I
    :catch_0
    move-exception v1

    .line 1697
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v5, "GLSurfaceView"

    const-string/jumbo v6, "Failed to report junk to surfaceflinger"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 1698
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    throw v5
.end method

.method private guardedRun()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1320
    new-instance v22, Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1321
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1322
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1323
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1326
    const/4 v11, 0x0

    .line 1327
    .local v11, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    .line 1328
    .local v5, "createEglContext":Z
    const/4 v6, 0x0

    .line 1329
    .local v6, "createEglSurface":Z
    const/4 v7, 0x0

    .line 1330
    .local v7, "createGlInterface":Z
    const/4 v13, 0x0

    .line 1331
    .local v13, "lostEglContext":Z
    const/16 v16, 0x0

    .line 1332
    .local v16, "sizeChanged":Z
    const/16 v21, 0x0

    .line 1333
    .local v21, "wantRenderNotification":Z
    const/4 v8, 0x0

    .line 1334
    .local v8, "doRenderNotification":Z
    const/4 v4, 0x0

    .line 1335
    .local v4, "askedToReleaseEglContext":Z
    const/16 v20, 0x0

    .line 1336
    .local v20, "w":I
    const/4 v12, 0x0

    .line 1337
    .local v12, "h":I
    const/4 v9, 0x0

    .line 1338
    .local v9, "event":Ljava/lang/Runnable;
    const/4 v10, 0x0

    .line 1341
    .end local v9    # "event":Ljava/lang/Runnable;
    .end local v11    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1343
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v22, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v22, :cond_1

    :try_start_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1640
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23

    .line 1641
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1642
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v23

    .line 1344
    return-void

    .line 1640
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 1347
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_3

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/Runnable;

    move-object v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_2
    :try_start_5
    monitor-exit v23

    .line 1518
    if-eqz v9, :cond_15

    .line 1519
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1520
    const/4 v9, 0x0

    .restart local v9    # "event":Ljava/lang/Runnable;
    goto :goto_0

    .line 1353
    .end local v9    # "event":Ljava/lang/Runnable;
    :cond_3
    const/4 v14, 0x0

    .line 1354
    .local v14, "pausing":Z
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1355
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1356
    .local v14, "pausing":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1357
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1364
    .end local v14    # "pausing":Z
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1368
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1369
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1370
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1371
    const/4 v4, 0x1

    .line 1375
    :cond_5
    if-eqz v13, :cond_6

    .line 1376
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1377
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1378
    const/4 v13, 0x0

    .line 1382
    :cond_6
    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 1386
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1390
    :cond_7
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;

    .line 1392
    .local v19, "view":Landroid/opengl/GLSurfaceView;
    if-nez v19, :cond_11

    .line 1393
    const/4 v15, 0x0

    .line 1394
    :goto_3
    if-nez v15, :cond_8

    .line 1395
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1403
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_a

    .line 1407
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1408
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1410
    :cond_9
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1411
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1412
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1416
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1420
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1421
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1424
    :cond_b
    if-eqz v8, :cond_c

    .line 1428
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1429
    const/4 v8, 0x0

    .line 1430
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1431
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1434
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1435
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1436
    .local v10, "finishDrawingRunnable":Ljava/lang/Runnable;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1440
    .end local v10    # "finishDrawingRunnable":Ljava/lang/Runnable;
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1443
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    .line 1444
    if-eqz v4, :cond_12

    .line 1445
    const/4 v4, 0x0

    .line 1460
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_f

    .line 1461
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1462
    const/4 v6, 0x1

    .line 1463
    const/4 v7, 0x1

    .line 1464
    const/16 v16, 0x1

    .line 1467
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 1468
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 1469
    const/16 v16, 0x1

    .line 1470
    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move/from16 v20, v0

    .line 1471
    move-object/from16 v0, p0

    iget v12, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1472
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1480
    const/4 v6, 0x1

    .line 1482
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1484
    :cond_10
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1485
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1486
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1487
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1393
    .restart local v19    # "view":Landroid/opengl/GLSurfaceView;
    :cond_11
    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get10(Landroid/opengl/GLSurfaceView;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v15

    .local v15, "preserveEglContextOnPause":Z
    goto/16 :goto_3

    .line 1448
    .end local v15    # "preserveEglContextOnPause":Z
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1453
    const/16 v22, 0x1

    :try_start_8
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1454
    const/4 v5, 0x1

    .line 1456
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_4

    .line 1341
    :catchall_1
    move-exception v22

    :try_start_9
    monitor-exit v23

    throw v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1636
    :catchall_2
    move-exception v22

    .line 1640
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23

    .line 1641
    :try_start_a
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1642
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    monitor-exit v23

    .line 1636
    throw v22

    .line 1449
    :catch_0
    move-exception v18

    .line 1450
    .local v18, "t":Ljava/lang/RuntimeException;
    :try_start_b
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1451
    throw v18

    .line 1492
    .end local v18    # "t":Ljava/lang/RuntimeException;
    :cond_13
    if-eqz v10, :cond_14

    .line 1493
    const-string/jumbo v22, "GLSurfaceView"

    const-string/jumbo v24, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 1496
    const/4 v10, 0x0

    .line 1514
    :cond_14
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 1524
    :cond_15
    if-eqz v6, :cond_16

    .line 1528
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 1529
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1530
    const/16 v22, 0x1

    :try_start_d
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1531
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v23

    .line 1541
    const/4 v6, 0x0

    .line 1544
    :cond_16
    if-eqz v7, :cond_17

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v11, v0

    .line 1547
    .local v11, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v7, 0x0

    .line 1550
    .end local v11    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_17
    if-eqz v5, :cond_19

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1555
    .restart local v19    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v19, :cond_18

    .line 1557
    :try_start_f
    const-string/jumbo v22, "onSurfaceCreated"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1558
    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get11(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1560
    const-wide/16 v22, 0x8

    :try_start_10
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1563
    :cond_18
    const/4 v5, 0x0

    .line 1566
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    :cond_19
    if-eqz v16, :cond_1b

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1571
    .restart local v19    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v19, :cond_1a

    .line 1573
    :try_start_11
    const-string/jumbo v22, "onSurfaceChanged"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1574
    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get11(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v11, v1, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 1576
    const-wide/16 v22, 0x8

    :try_start_12
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1579
    :cond_1a
    const/16 v16, 0x0

    .line 1586
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1587
    .restart local v19    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v19, :cond_1d

    .line 1589
    :try_start_13
    const-string/jumbo v22, "onDrawFrame"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1591
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThread;->GLDrawCostDetection(I)V

    .line 1593
    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get11(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1594
    if-eqz v10, :cond_1c

    .line 1595
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 1596
    const/4 v10, 0x0

    .line 1599
    :cond_1c
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThread;->GLDrawCostDetection(I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 1602
    const-wide/16 v22, 0x8

    :try_start_14
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1606
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v17

    .line 1607
    .local v17, "swapError":I
    sparse-switch v17, :sswitch_data_0

    .line 1621
    const-string/jumbo v22, "GLThread"

    const-string/jumbo v23, "eglSwapBuffers"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1623
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1624
    const/16 v22, 0x1

    :try_start_15
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1625
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    monitor-exit v23

    .line 1630
    :goto_5
    :sswitch_0
    if-eqz v21, :cond_0

    .line 1631
    const/4 v8, 0x1

    .line 1632
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1529
    .end local v17    # "swapError":I
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_3
    move-exception v22

    monitor-exit v23

    throw v22

    .line 1534
    :cond_1e
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1535
    const/16 v22, 0x1

    :try_start_17
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1536
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1537
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    monitor-exit v23

    goto/16 :goto_0

    .line 1534
    :catchall_4
    move-exception v22

    monitor-exit v23

    throw v22

    .line 1559
    .restart local v19    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_5
    move-exception v22

    .line 1560
    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1559
    throw v22

    .line 1575
    :catchall_6
    move-exception v22

    .line 1576
    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1575
    throw v22

    .line 1601
    :catchall_7
    move-exception v22

    .line 1602
    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1601
    throw v22

    .line 1614
    .restart local v17    # "swapError":I
    :sswitch_1
    const/4 v13, 0x1

    .line 1615
    goto :goto_5

    .line 1623
    :catchall_8
    move-exception v22

    monitor-exit v23

    throw v22
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1640
    .end local v17    # "swapError":I
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_9
    move-exception v22

    monitor-exit v23

    throw v22

    .line 1607
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1652
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1653
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v2, :cond_2

    .line 1654
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v2, v0, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1654
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1652
    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1313
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1315
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1316
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1318
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1302
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1303
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1304
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1306
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1648
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1719
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1720
    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1719
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1788
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1792
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1793
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1794
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1799
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1788
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1805
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1808
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1812
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1813
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1814
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1815
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1816
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1821
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1808
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1827
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1830
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1831
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1832
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1833
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1834
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1835
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1842
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-ne v1, p0, :cond_0

    monitor-exit v2

    .line 1843
    return-void

    .line 1846
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1849
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1850
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1849
    if-eqz v1, :cond_1

    .line 1855
    :try_start_2
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1856
    :catch_0
    move-exception v0

    .line 1857
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1830
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    .line 1861
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1889
    if-nez p1, :cond_0

    .line 1890
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1892
    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1893
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1894
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1896
    return-void

    .line 1892
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1866
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1867
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1868
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1869
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1871
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1872
    :catch_0
    move-exception v0

    .line 1873
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1866
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1877
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1880
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1881
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1882
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1725
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1726
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1727
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1729
    return-void

    .line 1725
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .prologue
    .line 1732
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1737
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-ne v0, p0, :cond_0

    monitor-exit v1

    .line 1738
    return-void

    .line 1741
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1742
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1743
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1744
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1746
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1748
    return-void

    .line 1732
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1289
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1295
    :goto_0
    return-void

    .line 1290
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    goto :goto_0

    .line 1292
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 1293
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1292
    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1709
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1710
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1712
    :cond_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1713
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1714
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1716
    return-void

    .line 1712
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1751
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1755
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1756
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1757
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1758
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    .line 1759
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    xor-int/lit8 v1, v1, 0x1

    .line 1758
    if-eqz v1, :cond_0

    .line 1760
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    .line 1758
    if-eqz v1, :cond_0

    .line 1762
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1751
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1768
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1771
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1775
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1776
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1777
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1779
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get12()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1780
    :catch_0
    move-exception v0

    .line 1781
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1771
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1785
    return-void
.end method
