.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
    }
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDeferDepth:I

.field private mInLayout:Z

.field private mLayoutRepeatCount:I

.field private final mPendingDestroyingSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformSurfacePlacement:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/SparseIntArray;

.field private final mTmpContentRect:Landroid/graphics/Rect;

.field private final mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

.field private final mTmpStartRect:Landroid/graphics/Rect;

.field private mTraversalScheduled:Z

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    .line 90
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 96
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 104
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 106
    new-instance v0, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    .line 111
    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v2, 0x0

    .line 666
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 667
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    const/4 v1, 0x1

    return v1

    .line 666
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 671
    :cond_1
    return v2
.end method

.method private createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V
    .locals 24
    .param p1, "transit"    # I
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "openingLayer"    # I
    .param p4, "closingLayer"    # I

    .prologue
    .line 696
    if-nez p2, :cond_1

    const/16 v19, 0x0

    .line 697
    :goto_0
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v3, :cond_2

    .line 698
    :cond_0
    return-void

    .line 696
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v19, v0

    .local v19, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto :goto_0

    .line 700
    .end local v19    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v0, v3, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v20, v0

    .line 702
    .local v20, "taskId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v21

    .line 703
    .local v21, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    if-nez v21, :cond_4

    .line 704
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No thumbnail header bitmap for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_3
    return-void

    .line 709
    :cond_4
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v12, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 712
    .local v12, "dirty":Landroid/graphics/Rect;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    .line 713
    .local v15, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v13

    .line 714
    .local v13, "display":Landroid/view/Display;
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v16

    .line 717
    .local v16, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v23

    .line 718
    .local v23, "window":Lcom/android/server/wm/WindowState;
    new-instance v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 719
    const-string/jumbo v4, "thumbnail anim"

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 721
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/server/wm/AppWindowToken;->windowType:I

    .line 722
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 720
    :goto_1
    const/4 v7, -0x3

    const/4 v8, 0x4

    .line 718
    invoke-direct/range {v2 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIII)V

    .line 723
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v13}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 724
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_5

    .line 725
    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  THUMBNAIL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": CREATE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_5
    new-instance v17, Landroid/view/Surface;

    invoke-direct/range {v17 .. v17}, Landroid/view/Surface;-><init>()V

    .line 730
    .local v17, "drawSurface":Landroid/view/Surface;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 731
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 732
    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->release()V

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionAspectScaled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 740
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v22

    .line 741
    .local v22, "win":Lcom/android/server/wm/WindowState;
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    .line 743
    .local v4, "appRect":Landroid/graphics/Rect;
    :goto_2
    if-eqz v22, :cond_8

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 744
    :goto_3
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 749
    .local v14, "displayConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 750
    iget v8, v14, Landroid/content/res/Configuration;->uiMode:I

    .line 751
    iget v9, v14, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v6, v21

    move/from16 v7, v20

    .line 749
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;

    move-result-object v11

    .line 752
    .local v11, "anim":Landroid/view/animation/Animation;
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionScaleUp()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 753
    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    .line 759
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v14    # "displayConfig":Landroid/content/res/Configuration;
    .end local v22    # "win":Lcom/android/server/wm/WindowState;
    :goto_4
    const-wide/16 v6, 0x2710

    invoke-virtual {v11, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 762
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 763
    move/from16 v0, p3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 764
    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    move/from16 v0, v20

    invoke-virtual {v3, v0, v6}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 771
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v11    # "anim":Landroid/view/animation/Animation;
    .end local v13    # "display":Landroid/view/Display;
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v17    # "drawSurface":Landroid/view/Surface;
    .end local v23    # "window":Lcom/android/server/wm/WindowState;
    :goto_5
    return-void

    .line 722
    .restart local v13    # "display":Landroid/view/Display;
    .restart local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v16    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v23    # "window":Lcom/android/server/wm/WindowState;
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    goto/16 :goto_1

    .line 742
    .restart local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .restart local v17    # "drawSurface":Landroid/view/Surface;
    .restart local v22    # "win":Lcom/android/server/wm/WindowState;
    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v4    # "appRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 743
    :cond_8
    const/4 v5, 0x0

    .local v5, "insets":Landroid/graphics/Rect;
    goto :goto_3

    .line 756
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v5    # "insets":Landroid/graphics/Rect;
    .end local v22    # "win":Lcom/android/server/wm/WindowState;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 757
    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, v16

    iget v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 756
    move/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .restart local v11    # "anim":Landroid/view/animation/Animation;
    goto :goto_4

    .line 766
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v11    # "anim":Landroid/view/animation/Animation;
    .end local v13    # "display":Landroid/view/Display;
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v17    # "drawSurface":Landroid/view/Surface;
    .end local v23    # "window":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v18

    .line 767
    .local v18, "e":Landroid/view/Surface$OutOfResourcesException;
    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t allocate thumbnail/Canvas surface w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 768
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 767
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 768
    const-string/jumbo v7, " h="

    .line 767
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 768
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 767
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto :goto_5
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .locals 10
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "layerAndToken"    # Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .prologue
    const/4 v2, 0x0

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 445
    .local v7, "appsCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_5

    .line 446
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 453
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->markSavedSurfaceExiting()V

    .line 455
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 456
    .local v6, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Now closing app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 458
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    move-object v1, p2

    move v3, p1

    move v4, v2

    move v5, p3

    .line 461
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 462
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 466
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 467
    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 470
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 471
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 476
    if-eqz p2, :cond_3

    .line 477
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v9

    .line 478
    .local v9, "layer":I
    iget-object v1, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_2

    iget v1, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    if-le v9, v1, :cond_3

    .line 479
    :cond_2
    iput-object v0, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 480
    iput v9, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    .line 483
    .end local v9    # "layer":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 484
    iget v1, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    .line 445
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 487
    .end local v0    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_5
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .locals 7
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 490
    if-ne p1, v5, :cond_0

    .line 491
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 492
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 494
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    .line 493
    :goto_0
    invoke-interface {v4, v1}, Landroid/view/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 495
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 501
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    if-eq p1, v5, :cond_1

    .line 502
    if-ne p1, v6, :cond_2

    .line 510
    :cond_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4

    .line 511
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    .line 512
    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No animation needed, skip set keyguard exit anim"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 494
    goto :goto_0

    .line 515
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 516
    if-ne p1, v6, :cond_5

    move v1, v2

    .line 517
    :goto_2
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_6

    .line 515
    :goto_3
    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZ)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 516
    goto :goto_2

    :cond_6
    move v2, v3

    .line 517
    goto :goto_3
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;
    .locals 13
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "topClosingLayer"    # I

    .prologue
    .line 392
    const/4 v11, 0x0

    .line 393
    .local v11, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    .line 394
    .local v8, "appsCount":I
    const/4 v9, 0x0

    .end local v11    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_9

    .line 395
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 396
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v7, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 397
    .local v7, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Now opening app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-boolean v2, v7, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    if-nez v2, :cond_1

    .line 400
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 401
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 404
    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    move v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 411
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 412
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setAllAppWinAnimators()V

    .line 414
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 415
    const-string/jumbo v3, ">>> OPEN TRANSACTION handleAppTransitionReadyLocked()"

    .line 414
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 418
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 421
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 422
    const-string/jumbo v3, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    .line 421
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v2, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 426
    const/4 v12, 0x0

    .line 427
    .local v12, "topOpeningLayer":I
    if-eqz p2, :cond_6

    .line 428
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v10

    .line 429
    .local v10, "layer":I
    if-eqz v11, :cond_5

    if-lez v10, :cond_6

    .line 430
    :cond_5
    move-object v11, v1

    .line 431
    .local v11, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move v12, v10

    .line 434
    .end local v10    # "layer":I
    .end local v11    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 435
    move/from16 v0, p4

    invoke-direct {p0, p1, v1, v12, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    .line 394
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 419
    .end local v12    # "topOpeningLayer":I
    :catchall_0
    move-exception v2

    .line 420
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 421
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 422
    const-string/jumbo v4, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    .line 421
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_8
    throw v2

    .line 438
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_9
    return-object v11
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .locals 9
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z

    .prologue
    const/4 v8, 0x0

    .line 603
    if-nez p1, :cond_0

    .line 604
    return v8

    .line 608
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 609
    .local v4, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 610
    const/4 v1, 0x0

    .line 611
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 612
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 613
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v3

    .line 614
    .local v3, "openingCanBeWallpaperTarget":Z
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 615
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New wallpaper target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 616
    const-string/jumbo v7, ", oldWallpaper="

    .line 615
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 617
    const-string/jumbo v7, ", openingApps="

    .line 615
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 618
    const-string/jumbo v7, ", closingApps="

    .line 615
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 614
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v8, v5, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    .line 620
    if-eqz v3, :cond_4

    const/16 v5, 0x14

    if-ne p1, v5, :cond_4

    .line 621
    const/16 p1, 0x15

    .line 622
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 623
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New transit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 622
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_2
    :goto_1
    return p1

    .line 610
    .end local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v3    # "openingCanBeWallpaperTarget":Z
    :cond_3
    move-object v1, v4

    .local v1, "oldWallpaper":Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 627
    .end local v1    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .restart local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v3    # "openingCanBeWallpaperTarget":Z
    :cond_4
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 628
    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    .line 629
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Wallpaper animation!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 642
    :goto_2
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New transit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 642
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 634
    :pswitch_0
    const/16 p1, 0xe

    .line 635
    goto :goto_2

    .line 639
    :pswitch_1
    const/16 p1, 0xf

    .line 640
    goto :goto_2

    .line 644
    :cond_6
    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 645
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 644
    if-eqz v5, :cond_7

    .line 646
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 644
    if-eqz v5, :cond_7

    .line 648
    const/16 p1, 0xc

    .line 649
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New transit away from wallpaper: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 650
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    .line 649
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 651
    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 652
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 651
    if-eqz v5, :cond_8

    .line 655
    const/16 p1, 0xd

    .line 656
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New transit into wallpaper: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 657
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    .line 656
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 659
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    goto/16 :goto_1

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performSurfacePlacementLoop()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x20

    const/4 v8, 0x0

    .line 153
    iget-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v5, :cond_1

    .line 154
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 155
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Recursive call!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 157
    :cond_0
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 158
    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v5, :cond_2

    .line 166
    return-void

    .line 169
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v5, :cond_3

    .line 171
    return-void

    .line 174
    :cond_3
    const-string/jumbo v5, "wmLayout"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 175
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "recoveringMemory":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 179
    const/4 v2, 0x1

    .line 181
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 182
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 183
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_0

    .line 186
    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    :cond_4
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 188
    .local v3, "tmp":Ljava/lang/Object;
    monitor-enter v3

    .line 190
    const-wide/16 v6, 0xfa

    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    .line 197
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 199
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 201
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 202
    iget v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v6, 0x6

    if-ge v5, v6, :cond_7

    .line 203
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 212
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    .line 213
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 214
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_6
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 222
    return-void

    .line 191
    .restart local v3    # "tmp":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 188
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 205
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_7
    :try_start_2
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Performed 6 layouts in a row. Skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 216
    :catch_1
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/RuntimeException;
    iput-boolean v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 218
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unhandled exception while laying out windows"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 209
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_8
    const/4 v5, 0x0

    :try_start_3
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .locals 6
    .param p1, "transit"    # I

    .prologue
    .line 675
    const/16 v3, 0x11

    if-ne p1, v3, :cond_1

    .line 677
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 678
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1

    .line 679
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 680
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v0, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 681
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_0

    .line 682
    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Now animating app in place "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 684
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 685
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/WindowManagerService;->updateTokenInPlaceLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 686
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 687
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->setAllAppWinAnimators()V

    .line 688
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v4, v3, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, v3, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 689
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 692
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void
.end method

.method private transitionGoodToGo(ILandroid/util/SparseIntArray;)Z
    .locals 13
    .param p1, "appsCount"    # I
    .param p2, "outReasons"    # Landroid/util/SparseIntArray;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 524
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 525
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Checking "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " opening apps (frozen="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 526
    iget-object v12, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 525
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 526
    const-string/jumbo v12, " timeout="

    .line 525
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 527
    iget-object v12, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v12

    .line 525
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 527
    const-string/jumbo v12, ")..."

    .line 525
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 524
    invoke-static {v8, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    .line 532
    .local v3, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 533
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v8

    if-nez v8, :cond_11

    .line 540
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 541
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->rotationNeedsUpdateLocked()Z

    move-result v8

    .line 540
    if-eqz v8, :cond_2

    .line 542
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v8, :cond_1

    .line 543
    sget-object v8, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Delaying app transition for screen rotation animation to finish"

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_1
    return v9

    .line 547
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_a

    .line 548
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 549
    .local v7, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 550
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Check opening app="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": allDrawn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 551
    iget-boolean v12, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 551
    const-string/jumbo v12, " startingDisplayed="

    .line 550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 552
    iget-boolean v12, v7, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 552
    const-string/jumbo v12, " startingMoved="

    .line 550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 553
    iget-boolean v12, v7, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 553
    const-string/jumbo v12, " isRelaunching()="

    .line 550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 554
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v12

    .line 550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 549
    invoke-static {v8, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_3
    iget-boolean v1, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 557
    .local v1, "drawnBeforeRestoring":Z
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->restoreSavedSurfaceForInterestingWindows()V

    .line 559
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v8

    xor-int/lit8 v0, v8, 0x1

    .line 560
    :goto_1
    if-nez v0, :cond_5

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    .line 561
    return v9

    .line 559
    :cond_4
    const/4 v0, 0x0

    .local v0, "allDrawn":Z
    goto :goto_1

    .line 563
    .end local v0    # "allDrawn":Z
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 564
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_6

    iget v5, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 565
    .local v5, "stackId":I
    :goto_2
    if-eqz v0, :cond_8

    .line 566
    if-eqz v1, :cond_7

    const/4 v8, 0x2

    :goto_3
    invoke-virtual {p2, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 547
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 564
    .end local v5    # "stackId":I
    :cond_6
    const/4 v5, -0x1

    .restart local v5    # "stackId":I
    goto :goto_2

    :cond_7
    move v8, v9

    .line 567
    goto :goto_3

    .line 569
    :cond_8
    iget-object v8, v7, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    instance-of v8, v8, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v8, :cond_9

    move v8, v10

    :goto_5
    invoke-virtual {p2, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    .line 571
    :cond_9
    const/4 v8, 0x4

    goto :goto_5

    .line 576
    .end local v1    # "drawnBeforeRestoring":Z
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v5    # "stackId":I
    .end local v7    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_a
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 577
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v8, :cond_b

    sget-object v8, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isFetchingAppTransitionSpecs=true"

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_b
    return v9

    .line 581
    :cond_c
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v8}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v8

    if-nez v8, :cond_e

    .line 582
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v8, :cond_d

    .line 583
    sget-object v8, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unknownApps is not empty: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 584
    iget-object v11, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v11}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v11

    .line 583
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_d
    return v9

    .line 590
    :cond_e
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 591
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v6

    .line 592
    :goto_6
    if-eqz v6, :cond_10

    .line 593
    return v10

    .line 590
    :cond_f
    const/4 v6, 0x1

    .local v6, "wallpaperReady":Z
    goto :goto_6

    .line 595
    .end local v6    # "wallpaperReady":Z
    :cond_10
    return v9

    .line 597
    .end local v2    # "i":I
    :cond_11
    return v10
.end method


# virtual methods
.method continueLayout()V
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 125
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 128
    :cond_0
    return-void
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pendingLayoutChanges"    # I

    .prologue
    .line 225
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 226
    sget-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    const-string/jumbo v2, ", mPendingLayoutChanges = 0x"

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    return-void
.end method

.method deferLayout()V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 118
    return-void
.end method

.method destroyAfterTransaction(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    return-void
.end method

.method destroyPendingSurfaces()V
    .locals 2

    .prologue
    .line 793
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 794
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 793
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 797
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mHoldScreenWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mObscuringWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method handleAppTransitionReadyLocked()I
    .locals 29

    .prologue
    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 240
    .local v11, "appsCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(ILandroid/util/SparseIntArray;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    const/4 v4, 0x0

    return v4

    .line 243
    :cond_0
    const-string/jumbo v4, "AppTransitionReady"

    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 245
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "**** GOOD TO GO"

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v5

    .line 247
    .local v5, "transit":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v4, :cond_2

    invoke-static {v5}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 248
    const/4 v5, -0x1

    .line 250
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xd

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v16

    .line 259
    .local v16, "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 262
    const/4 v10, 0x0

    .line 263
    .local v10, "animLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v12, -0x1

    .line 264
    .local v12, "bestAnimLayer":I
    const/16 v18, 0x0

    .line 265
    .local v18, "fullscreenAnim":Z
    const/16 v25, 0x0

    .line 268
    .local v25, "voiceInteraction":Z
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v11, :cond_3

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/AppWindowToken;

    .line 274
    .local v28, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 268
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 281
    .end local v28    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 282
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 281
    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/util/ArraySet;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v26

    .line 285
    .local v26, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .line 286
    .local v21, "openingAppHasWallpaper":Z
    const/4 v13, 0x0

    .line 294
    .local v13, "closingAppHasWallpaper":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 295
    .local v14, "closingAppsCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int v11, v14, v4

    .line 296
    const/16 v19, 0x0

    .end local v10    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v25    # "voiceInteraction":Z
    :goto_1
    move/from16 v0, v19

    if-ge v0, v11, :cond_8

    .line 298
    move/from16 v0, v19

    if-ge v0, v14, :cond_6

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/AppWindowToken;

    .line 300
    .restart local v28    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v26, :cond_4

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 301
    const/4 v13, 0x1

    .line 310
    :cond_4
    :goto_2
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    or-int v25, v25, v4

    .line 312
    .local v25, "voiceInteraction":Z
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 313
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v27

    .line 314
    .local v27, "ws":Lcom/android/server/wm/WindowState;
    if-eqz v27, :cond_5

    .line 315
    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 316
    .local v10, "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v27

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 317
    const/16 v18, 0x1

    .line 296
    .end local v10    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "ws":Lcom/android/server/wm/WindowState;
    :cond_5
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 304
    .end local v25    # "voiceInteraction":Z
    .end local v28    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sub-int v8, v19, v14

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/AppWindowToken;

    .line 305
    .restart local v28    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v26, :cond_4

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 306
    const/16 v21, 0x1

    goto :goto_2

    .line 319
    .restart local v25    # "voiceInteraction":Z
    :cond_7
    if-nez v18, :cond_5

    .line 320
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v27

    .line 321
    .restart local v27    # "ws":Lcom/android/server/wm/WindowState;
    if-eqz v27, :cond_5

    .line 322
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v4, v12, :cond_5

    .line 323
    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 324
    .restart local v10    # "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v27

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_3

    .line 330
    .end local v10    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v25    # "voiceInteraction":Z
    .end local v27    # "ws":Lcom/android/server/wm/WindowState;
    .end local v28    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v5

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v4

    if-nez v4, :cond_a

    .line 336
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 337
    const-string/jumbo v8, "Animations disallowed by keyguard or dream."

    .line 336
    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_9
    const/4 v10, 0x0

    .line 341
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v5, v10, v1, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget-object v0, v4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    .line 346
    .local v22, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget v0, v4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    move/from16 v23, v0

    .line 348
    .local v23, "topClosingLayer":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v5, v10, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;

    move-result-object v24

    .line 351
    .local v24, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 353
    if-nez v24, :cond_b

    const/4 v6, 0x0

    .line 355
    :goto_4
    if-nez v22, :cond_c

    const/4 v7, 0x0

    .line 358
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v17

    .line 359
    .local v17, "flags":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 360
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 359
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)I

    move-result v20

    .line 361
    .local v20, "layoutRedo":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNonAppWindowsInTransition(II)V

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting()V

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v4}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 373
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    .line 377
    .local v15, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x2

    .line 379
    const/4 v9, 0x1

    .line 378
    invoke-virtual {v4, v8, v9}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 383
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v8

    .line 382
    const/16 v9, 0x2f

    invoke-virtual {v4, v9, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 385
    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 387
    or-int/lit8 v4, v20, 0x1

    or-int/lit8 v4, v4, 0x2

    return v4

    .line 354
    .end local v15    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "flags":I
    .end local v20    # "layoutRedo":I
    :cond_b
    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v6, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_4

    .line 356
    .end local v6    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_c
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v7, "closingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_5
.end method

.method isInLayout()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method isLayoutDeferred()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method synthetic lambda$-com_android_server_wm_WindowSurfacePlacer_5337()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 107
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method final performSurfacePlacement()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 136
    return-void
.end method

.method final performSurfacePlacement(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 139
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_0

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x6

    .line 144
    .local v0, "loopCount":I
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    add-int/lit8 v0, v0, -0x1

    .line 148
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v1, :cond_2

    if-gtz v0, :cond_1

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 150
    return-void
.end method

.method requestTraversal()V
    .locals 2

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 778
    :cond_0
    return-void
.end method
