.class Landroid/view/WindowId$FocusObserver$1;
.super Landroid/view/IWindowFocusObserver$Stub;
.source "WindowId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId$FocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/WindowId$FocusObserver;


# direct methods
.method constructor <init>(Landroid/view/WindowId$FocusObserver;)V
    .locals 0
    .param p1, "this$1"    # Landroid/view/WindowId$FocusObserver;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    .line 48
    invoke-direct {p0}, Landroid/view/IWindowFocusObserver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public focusGained(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .prologue
    .line 53
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v2, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v2

    .line 54
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "token":Landroid/view/WindowId;
    monitor-exit v2

    .line 56
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v2, v2, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    :goto_0
    return-void

    .line 53
    .end local v0    # "token":Landroid/view/WindowId;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 59
    .restart local v0    # "token":Landroid/view/WindowId;
    :cond_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    invoke-virtual {v1, v0}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    goto :goto_0
.end method

.method public focusLost(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .prologue
    .line 66
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v2, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "token":Landroid/view/WindowId;
    monitor-exit v2

    .line 69
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    iget-object v2, v2, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    :goto_0
    return-void

    .line 66
    .end local v0    # "token":Landroid/view/WindowId;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 72
    .restart local v0    # "token":Landroid/view/WindowId;
    :cond_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    invoke-virtual {v1, v0}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    goto :goto_0
.end method
