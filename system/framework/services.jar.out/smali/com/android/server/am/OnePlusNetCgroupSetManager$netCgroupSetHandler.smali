.class Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;
.super Landroid/os/Handler;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusNetCgroupSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "netCgroupSetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 314
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 315
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 319
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[netCgroupSet] netCgroupSetHandler handleMessage msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 322
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap7(Lcom/android/server/am/OnePlusNetCgroupSetManager;III)V

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v4, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap7(Lcom/android/server/am/OnePlusNetCgroupSetManager;III)V

    goto :goto_0

    .line 328
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap7(Lcom/android/server/am/OnePlusNetCgroupSetManager;III)V

    goto :goto_0

    .line 331
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap5(Lcom/android/server/am/OnePlusNetCgroupSetManager;Ljava/util/HashSet;II)V

    goto :goto_0

    .line 334
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap4(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)V

    goto :goto_0

    .line 337
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap6(Lcom/android/server/am/OnePlusNetCgroupSetManager;II)V

    goto :goto_0

    .line 340
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->-wrap3(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
