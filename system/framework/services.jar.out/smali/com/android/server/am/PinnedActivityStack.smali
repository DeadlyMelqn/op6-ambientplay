.class Lcom/android/server/am/PinnedActivityStack;
.super Lcom/android/server/am/ActivityStack;
.source "PinnedActivityStack.java"

# interfaces
.implements Lcom/android/server/wm/PinnedStackWindowListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/ActivityStack",
        "<",
        "Lcom/android/server/wm/PinnedStackWindowController;",
        ">;",
        "Lcom/android/server/wm/PinnedStackWindowListener;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/RecentTasks;Z)V
    .locals 0
    .param p1, "display"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p2, "stackId"    # I
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p4, "recentTasks"    # Lcom/android/server/am/RecentTasks;
    .param p5, "onTop"    # Z

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/RecentTasks;Z)V

    .line 38
    return-void
.end method

.method private skipResizeAnimation(Z)Z
    .locals 4
    .param p1, "toFullscreen"    # Z

    .prologue
    const/4 v2, 0x0

    .line 62
    if-nez p1, :cond_0

    .line 63
    return v2

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 66
    .local v0, "parentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->topRunningNonOverlayTaskActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 67
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .locals 3
    .param p1, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p2, "toBounds"    # Landroid/graphics/Rect;
    .param p3, "animationDuration"    # I
    .param p4, "fromFullscreen"    # Z

    .prologue
    const/4 v1, 0x1

    .line 53
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/PinnedActivityStack;->skipResizeAnimation(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/server/am/PinnedActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/PinnedActivityStack;->mStackId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->moveTasksToFullscreenStack(IZ)V

    .line 59
    :goto_1
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/wm/PinnedStackWindowController;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    goto :goto_1
.end method

.method createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/PinnedStackWindowController;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "onTop"    # Z
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 43
    new-instance v0, Lcom/android/server/wm/PinnedStackWindowController;

    iget v1, p0, Lcom/android/server/am/PinnedActivityStack;->mStackId:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/PinnedStackWindowController;-><init>(ILcom/android/server/wm/PinnedStackWindowListener;IZLandroid/graphics/Rect;)V

    return-object v0
.end method

.method bridge synthetic createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/PinnedActivityStack;->createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/PinnedStackWindowController;

    move-result-object v0

    return-object v0
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/PinnedActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackWindowController;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    return v0
.end method

.method getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;
    .locals 2
    .param p1, "aspectRatio"    # F

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    .line 48
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/PinnedStackWindowController;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method isAnimatingBoundsToFullscreen()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackWindowController;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    return v0
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .locals 1
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
    .line 75
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackWindowController;->setPictureInPictureActions(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackWindowController;->setPictureInPictureAspectRatio(F)V

    .line 72
    return-void
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V
    .locals 4
    .param p1, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/server/am/PinnedActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v2, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->updatePictureInPictureMode(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 106
    return-void

    .line 99
    .end local v0    # "i":I
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
