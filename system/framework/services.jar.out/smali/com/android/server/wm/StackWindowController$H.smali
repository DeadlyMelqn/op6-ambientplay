.class final Lcom/android/server/wm/StackWindowController$H;
.super Landroid/os/Handler;
.source "StackWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "H"
.end annotation


# static fields
.field static final REQUEST_RESIZE:I


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/wm/StackWindowController;",
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
            "Lcom/android/server/wm/StackWindowController;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "controller":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/wm/StackWindowController;>;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 399
    iput-object p1, p0, Lcom/android/server/wm/StackWindowController$H;->mController:Ljava/lang/ref/WeakReference;

    .line 400
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 404
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController$H;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackWindowController;

    .line 405
    .local v0, "controller":Lcom/android/server/wm/StackWindowController;
    if-eqz v0, :cond_0

    .line 406
    iget-object v1, v0, Lcom/android/server/wm/StackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v1, Lcom/android/server/wm/StackWindowListener;

    .line 407
    :goto_0
    if-nez v1, :cond_1

    .line 408
    return-void

    .line 406
    :cond_0
    const/4 v1, 0x0

    .local v1, "listener":Lcom/android/server/wm/StackWindowListener;
    goto :goto_0

    .line 410
    .end local v1    # "listener":Lcom/android/server/wm/StackWindowListener;
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 415
    :goto_1
    return-void

    .line 412
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Lcom/android/server/wm/StackWindowListener;->requestResize(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
