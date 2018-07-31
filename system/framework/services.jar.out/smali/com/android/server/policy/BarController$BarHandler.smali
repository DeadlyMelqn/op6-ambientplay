.class Lcom/android/server/policy/BarController$BarHandler;
.super Landroid/os/Handler;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BarController;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/BarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BarController;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/server/policy/BarController$BarHandler;->this$0:Lcom/android/server/policy/BarController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/BarController;Lcom/android/server/policy/BarController$BarHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BarController;
    .param p2, "-this1"    # Lcom/android/server/policy/BarController$BarHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/BarController$BarHandler;-><init>(Lcom/android/server/policy/BarController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 350
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 352
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 353
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/BarController$BarHandler;->this$0:Lcom/android/server/policy/BarController;

    invoke-static {v1}, Lcom/android/server/policy/BarController;->-get1(Lcom/android/server/policy/BarController;)Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/server/policy/BarController$BarHandler;->this$0:Lcom/android/server/policy/BarController;

    invoke-static {v1}, Lcom/android/server/policy/BarController;->-get1(Lcom/android/server/policy/BarController;)Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;->onBarVisibilityChanged(Z)V

    goto :goto_0

    .line 352
    .end local v0    # "visible":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_1

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
