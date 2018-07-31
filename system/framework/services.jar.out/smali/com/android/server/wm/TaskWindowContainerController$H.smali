.class final Lcom/android/server/wm/TaskWindowContainerController$H;
.super Landroid/os/Handler;
.source "TaskWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskWindowContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "H"
.end annotation


# static fields
.field static final REPORT_SNAPSHOT_CHANGED:I = 0x0

.field static final REQUEST_RESIZE:I = 0x1


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/wm/TaskWindowContainerController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/wm/TaskWindowContainerController;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "controller":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/wm/TaskWindowContainerController;>;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    iput-object p1, p0, Lcom/android/server/wm/TaskWindowContainerController$H;->mController:Ljava/lang/ref/WeakReference;

    .line 244
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/server/wm/TaskWindowContainerController$H;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskWindowContainerController;

    .line 249
    .local v0, "controller":Lcom/android/server/wm/TaskWindowContainerController;
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, v0, Lcom/android/server/wm/TaskWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v1, Lcom/android/server/wm/TaskWindowContainerListener;

    .line 251
    :goto_0
    if-nez v1, :cond_1

    .line 252
    return-void

    .line 250
    :cond_0
    const/4 v1, 0x0

    .local v1, "listener":Lcom/android/server/wm/TaskWindowContainerListener;
    goto :goto_0

    .line 254
    .end local v1    # "listener":Lcom/android/server/wm/TaskWindowContainerListener;
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 262
    :goto_1
    return-void

    .line 256
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-interface {v1, v2}, Lcom/android/server/wm/TaskWindowContainerListener;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    goto :goto_1

    .line 259
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/TaskWindowContainerListener;->requestResize(Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
