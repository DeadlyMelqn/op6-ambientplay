.class Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;
.super Landroid/view/IPinnedStackController$Stub;
.source "PinnedStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PinnedStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PinnedStackController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PinnedStackController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/PinnedStackController;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-direct {p0}, Landroid/view/IPinnedStackController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/PinnedStackController;
    .param p2, "-this1"    # Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;-><init>(Lcom/android/server/wm/PinnedStackController;)V

    return-void
.end method


# virtual methods
.method public getDisplayRotation()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->-get3(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->-get1(Lcom/android/server/wm/PinnedStackController;)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 134
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 135
    return v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method synthetic lambda$-com_android_server_wm_PinnedStackController$PinnedStackControllerCallback_4738(Z)V
    .locals 1
    .param p1, "isMinimized"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0, p1}, Lcom/android/server/wm/PinnedStackController;->-set1(Lcom/android/server/wm/PinnedStackController;Z)Z

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->-get4(Lcom/android/server/wm/PinnedStackController;)Lcom/android/internal/policy/PipSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;->setMinimized(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_PinnedStackController$PinnedStackControllerCallback_4973(I)V
    .locals 2
    .param p1, "minEdgeSize"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v1}, Lcom/android/server/wm/PinnedStackController;->-get0(Lcom/android/server/wm/PinnedStackController;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/PinnedStackController;->-set0(Lcom/android/server/wm/PinnedStackController;I)I

    return-void
.end method

.method public setIsMinimized(Z)V
    .locals 2
    .param p1, "isMinimized"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->-get2(Lcom/android/server/wm/PinnedStackController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$JE-Xd_mgkfFanNxg9Cy6vl62umY$1;

    invoke-direct {v1, p1, p0}, Lcom/android/server/wm/-$Lambda$JE-Xd_mgkfFanNxg9Cy6vl62umY$1;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public setMinEdgeSize(I)V
    .locals 2
    .param p1, "minEdgeSize"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->-get2(Lcom/android/server/wm/PinnedStackController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$JE-Xd_mgkfFanNxg9Cy6vl62umY;

    invoke-direct {v1, p1, p0}, Lcom/android/server/wm/-$Lambda$JE-Xd_mgkfFanNxg9Cy6vl62umY;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
