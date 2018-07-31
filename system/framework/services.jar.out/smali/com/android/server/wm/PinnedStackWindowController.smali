.class public Lcom/android/server/wm/PinnedStackWindowController;
.super Lcom/android/server/wm/StackWindowController;
.source "PinnedStackWindowController.java"


# instance fields
.field private mTmpFromBounds:Landroid/graphics/Rect;

.field private mTmpToBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/PinnedStackWindowListener;IZLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "listener"    # Lcom/android/server/wm/PinnedStackWindowListener;
    .param p3, "displayId"    # I
    .param p4, "onTop"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    .line 44
    return-void
.end method


# virtual methods
.method public animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .locals 12
    .param p1, "toBounds"    # Landroid/graphics/Rect;
    .param p2, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p3, "animationDuration"    # I
    .param p4, "fromFullscreen"    # Z

    .prologue
    .line 83
    iget-object v10, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pinned stack container not found :("

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    :goto_0
    monitor-exit v10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 89
    :cond_0
    :try_start_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 90
    .local v6, "fromBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 94
    const/4 v8, 0x0

    .line 95
    .local v8, "schedulePipModeChangedState":I
    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 96
    .local v2, "toFullscreen":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 97
    if-eqz p4, :cond_2

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Should not defer scheduling PiP mode change on animation to fullscreen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local v2    # "toFullscreen":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "toFullscreen":Z
    goto :goto_1

    .line 101
    :cond_2
    const/4 v8, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .local v9, "toBounds":Landroid/graphics/Rect;
    move-object p1, v9

    .line 116
    .end local v9    # "toBounds":Landroid/graphics/Rect;
    .restart local p1    # "toBounds":Landroid/graphics/Rect;
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p2, p1, v2}, Lcom/android/server/wm/TaskStack;->setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 118
    move-object v7, p1

    .line 119
    .local v7, "finalToBounds":Landroid/graphics/Rect;
    move v4, v8

    .line 121
    .local v4, "finalSchedulePipModeChangedState":I
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v11

    new-instance v0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;

    move/from16 v1, p4

    move v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;-><init>(ZZIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    .line 83
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 130
    return-void

    .line 109
    .end local v4    # "finalSchedulePipModeChangedState":I
    .end local v7    # "finalToBounds":Landroid/graphics/Rect;
    :cond_4
    :try_start_2
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .restart local v9    # "toBounds":Landroid/graphics/Rect;
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object p1, v9

    .end local v9    # "toBounds":Landroid/graphics/Rect;
    .restart local p1    # "toBounds":Landroid/graphics/Rect;
    goto :goto_2

    .line 112
    :cond_5
    if-eqz p4, :cond_3

    .line 113
    const/4 v8, 0x2

    goto :goto_2

    .line 83
    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .restart local v9    # "toBounds":Landroid/graphics/Rect;
    :catchall_1
    move-exception v0

    move-object p1, v9

    .end local v9    # "toBounds":Landroid/graphics/Rect;
    .restart local p1    # "toBounds":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->deferScheduleMultiWindowModeChanged()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    .line 177
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 178
    return v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "aspectRatio"    # F
    .param p2, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 53
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v3

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    return-object v4

    .line 57
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 58
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_2

    monitor-exit v3

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    return-object v4

    .line 63
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    .line 64
    .local v1, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    if-nez p2, :cond_3

    .line 66
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 69
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    const/4 v2, 0x1

    .line 70
    invoke-virtual {v1, p2, p1, v2}, Lcom/android/server/wm/PinnedStackController;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit v3

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 70
    return-object v2

    :cond_4
    monitor-exit v3

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    return-object p2

    .line 52
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    .line 186
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 187
    return v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method synthetic lambda$-com_android_server_wm_PinnedStackWindowController_5117(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 8
    .param p1, "fromBounds"    # Landroid/graphics/Rect;
    .param p2, "finalToBounds"    # Landroid/graphics/Rect;
    .param p3, "animationDuration"    # I
    .param p4, "finalSchedulePipModeChangedState"    # I
    .param p5, "fromFullscreen"    # Z
    .param p6, "toFullscreen"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/BoundsAnimationTarget;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/BoundsAnimationController;->animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    return-void
.end method

.method public pinnedStackResizeDisallowed()Z
    .locals 2

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 196
    return v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setPictureInPictureActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 163
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 165
    return-void

    .line 168
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 163
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 170
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setPictureInPictureAspectRatio(F)V
    .locals 6
    .param p1, "aspectRatio"    # F

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 136
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 138
    return-void

    .line 142
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    .line 144
    .local v0, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/PinnedStackWindowController;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 150
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 149
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/wm/PinnedStackWindowController;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 153
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    .end local p1    # "aspectRatio":F
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    .line 136
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 157
    return-void

    .line 154
    .restart local p1    # "aspectRatio":F
    :cond_4
    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    .line 136
    .end local v0    # "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    .end local p1    # "aspectRatio":F
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowListener;

    .line 209
    .local v0, "listener":Lcom/android/server/wm/PinnedStackWindowListener;
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/PinnedStackWindowListener;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 212
    .end local v0    # "listener":Lcom/android/server/wm/PinnedStackWindowListener;
    :cond_0
    return-void
.end method
