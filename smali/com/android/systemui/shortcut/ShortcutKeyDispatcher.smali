.class public Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;
.super Lcom/android/systemui/SystemUI;
.source "ShortcutKeyDispatcher.java"

# interfaces
.implements Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;


# instance fields
.field protected final ALT_MASK:J

.field protected final CTRL_MASK:J

.field protected final META_MASK:J

.field protected final SC_DOCK_LEFT:J

.field protected final SC_DOCK_RIGHT:J

.field protected final SHIFT_MASK:J

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 59
    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    .line 60
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 61
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mActivityManager:Landroid/app/IActivityManager;

    .line 63
    const-wide/high16 v0, 0x1000000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->META_MASK:J

    .line 64
    const-wide v0, 0x200000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->ALT_MASK:J

    .line 65
    const-wide v0, 0x100000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->CTRL_MASK:J

    .line 66
    const-wide v0, 0x100000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SHIFT_MASK:J

    .line 68
    const-wide v0, 0x1000000000047L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_LEFT:J

    .line 69
    const-wide v0, 0x1000000000048L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_RIGHT:J

    .line 54
    return-void
.end method

.method private handleDockKey(J)V
    .locals 15
    .param p1, "shortcutCode"    # J

    .prologue
    .line 100
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v10}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v4

    .line 101
    .local v4, "dockSide":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    .line 103
    const-class v10, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v10}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/Recents;

    .line 104
    .local v6, "recents":Lcom/android/systemui/recents/Recents;
    const-wide v10, 0x1000000000047L

    cmp-long v10, p1, v10

    if-nez v10, :cond_1

    .line 105
    const/4 v3, 0x0

    .line 108
    .local v3, "dockMode":I
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    .line 109
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 108
    const/4 v12, 0x1

    .line 109
    const/4 v13, -0x2

    const/4 v14, 0x0

    .line 108
    invoke-virtual {v10, v12, v13, v14, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v9

    .line 111
    .local v9, "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x0

    .line 110
    invoke-virtual {v6, v10, v11}, Lcom/android/systemui/recents/Recents;->showRecentApps(ZZ)V

    .line 113
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 114
    iget-object v10, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    .line 115
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v10, v10, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 114
    invoke-virtual {v11, v10, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startTaskInDockedMode(II)Z

    .line 134
    .end local v3    # "dockMode":I
    .end local v4    # "dockSide":I
    .end local v6    # "recents":Lcom/android/systemui/recents/Recents;
    .end local v9    # "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    :goto_1
    return-void

    .line 106
    .restart local v4    # "dockSide":I
    .restart local v6    # "recents":Lcom/android/systemui/recents/Recents;
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "dockMode":I
    goto :goto_0

    .line 119
    .end local v3    # "dockMode":I
    .end local v6    # "recents":Lcom/android/systemui/recents/Recents;
    :cond_2
    const-class v10, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v10}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v10}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v2

    .line 120
    .local v2, "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v7

    .line 121
    .local v7, "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    .line 123
    .local v1, "dividerPosition":I
    invoke-virtual {v7, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 124
    .local v0, "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const-wide v10, 0x1000000000047L

    cmp-long v10, p1, v10

    if-nez v10, :cond_3

    .line 125
    invoke-virtual {v7, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v8

    .line 127
    .local v8, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_2
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 128
    iget v10, v8, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 129
    const/4 v13, 0x1

    .line 128
    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    .end local v0    # "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v1    # "dividerPosition":I
    .end local v2    # "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    .end local v4    # "dockSide":I
    .end local v7    # "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v8    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :catch_0
    move-exception v5

    .line 132
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShortcutKeyDispatcher"

    const-string/jumbo v11, "handleDockKey() failed."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v1    # "dividerPosition":I
    .restart local v2    # "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    .restart local v4    # "dockSide":I
    .restart local v7    # "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    :cond_3
    :try_start_1
    invoke-virtual {v7, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_2
.end method


# virtual methods
.method public onShortcutKeyPressed(J)V
    .locals 5
    .param p1, "shortcutCode"    # J

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 86
    .local v0, "orientation":I
    const-wide v2, 0x1000000000047L

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-wide v2, 0x1000000000048L

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 87
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->handleDockKey(J)V

    .line 90
    :cond_1
    return-void
.end method

.method public registerShortcutKey(J)V
    .locals 3
    .param p1, "shortcutCode"    # J

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-interface {v1, p1, p2, v2}, Landroid/view/IWindowManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 94
    const-wide v0, 0x1000000000047L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    .line 95
    const-wide v0, 0x1000000000048L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    .line 96
    return-void
.end method
