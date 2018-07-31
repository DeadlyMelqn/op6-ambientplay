.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/InCallService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 83
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 86
    iget-object v10, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v10}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v10

    if-nez v10, :cond_0

    iget v10, p1, Landroid/os/Message;->what:I

    if-eq v10, v8, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v8}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "callingPackage":Ljava/lang/String;
    iget-object v9, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v10, Landroid/telecom/Phone;

    new-instance v11, Landroid/telecom/InCallAdapter;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v11, v8}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    .line 94
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v8}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 93
    invoke-direct {v10, v11, v2, v8}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V

    invoke-static {v9, v10}, Landroid/telecom/InCallService;->-set0(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    .line 95
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    iget-object v9, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v9}, Landroid/telecom/InCallService;->-get2(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 96
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v9, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v9}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    goto :goto_0

    .line 99
    .end local v2    # "callingPackage":Ljava/lang/String;
    :pswitch_1
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/ParcelableCall;

    invoke-virtual {v9, v8}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/ParcelableCall;

    invoke-virtual {v9, v8}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 107
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "callId":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 109
    .local v6, "remaining":Ljava/lang/String;
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8, v1, v6}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 110
    .end local v1    # "callId":Ljava/lang/String;
    .end local v6    # "remaining":Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 111
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 110
    throw v8

    .line 116
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/CallAudioState;

    invoke-virtual {v9, v8}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    goto/16 :goto_0

    .line 119
    :pswitch_5
    iget-object v10, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v10}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v8, :cond_1

    :goto_1
    invoke-virtual {v10, v8}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    goto/16 :goto_0

    :cond_1
    move v8, v9

    goto :goto_1

    .line 122
    :pswitch_6
    iget-object v10, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v10}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v8, :cond_2

    :goto_2
    invoke-virtual {v10, v8}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    goto/16 :goto_0

    :cond_2
    move v8, v9

    goto :goto_2

    .line 125
    :pswitch_7
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Phone;->internalSilenceRinger()V

    goto/16 :goto_0

    .line 128
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 130
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 131
    .restart local v1    # "callId":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, "event":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 133
    .local v4, "extras":Landroid/os/Bundle;
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8, v1, v3, v4}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 134
    .end local v1    # "callId":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "extras":Landroid/os/Bundle;
    :catchall_1
    move-exception v8

    .line 135
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 134
    throw v8

    .line 140
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 141
    .restart local v1    # "callId":Ljava/lang/String;
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 142
    .local v7, "requestId":I
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8, v1, v7}, Landroid/telecom/Phone;->internalOnRttUpgradeRequest(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 146
    .end local v1    # "callId":Ljava/lang/String;
    .end local v7    # "requestId":I
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 147
    .restart local v1    # "callId":Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 148
    .local v5, "reason":I
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Landroid/telecom/Phone;->internalOnRttInitiationFailure(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
