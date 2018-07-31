.class public Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;
.super Ljava/lang/Object;
.source "OnePlusWmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OnePlusWmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusWindowManagerService"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mNetBoostFeature:Z

.field private mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    .line 44
    iput-object p1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 45
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mContext:Landroid/content/Context;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x43

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    .line 49
    return-void
.end method


# virtual methods
.method public findFocusedWindow()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->updateTouchWindowUidChange(Ljava/util/HashSet;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 84
    :cond_1
    return-void
.end method

.method public getSysAlertWindowUidsForScreenOff()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    .line 68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getVisibleWindowUids()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;->getVisibleWindowUids()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
