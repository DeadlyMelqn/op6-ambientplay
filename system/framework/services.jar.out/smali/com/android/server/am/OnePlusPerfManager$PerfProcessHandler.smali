.class Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPerfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusPerfManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    .line 660
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 661
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 664
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 665
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 676
    :goto_0
    return-void

    .line 667
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusPerfManager;->-wrap3(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusPerfManager;->-wrap0(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->-wrap1(Lcom/android/server/am/OnePlusPerfManager;)V

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
