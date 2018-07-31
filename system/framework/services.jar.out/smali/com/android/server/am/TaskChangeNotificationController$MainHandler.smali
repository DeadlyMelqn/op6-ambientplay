.class Lcom/android/server/am/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/TaskChangeNotificationController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/TaskChangeNotificationController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    .line 144
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/am/TaskChangeNotificationController;->-get17(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 152
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/am/TaskChangeNotificationController;->-get18(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 151
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get16(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get9(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get14(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 166
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get11(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get10(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 172
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get4(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 175
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get13(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 178
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get3(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 181
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get5(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 184
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get6(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 187
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get8(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 190
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get7(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 193
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get1(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 196
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get0(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 199
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get2(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 202
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get12(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 205
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get15(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_10
        :pswitch_11
        :pswitch_b
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method
