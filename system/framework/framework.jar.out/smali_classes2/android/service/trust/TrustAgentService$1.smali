.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/trust/TrustAgentService;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 184
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 186
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v11, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v12, p1, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_1

    const/4 v10, 0x1

    :cond_1
    invoke-virtual {v11, v10}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v11, p1, Landroid/os/Message;->arg1:I

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/service/trust/TrustAgentService;->onDeviceUnlockLockout(J)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/trust/TrustAgentService$ConfigurationData;

    .line 195
    .local v1, "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget-object v11, v1, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    invoke-virtual {v10, v11}, Landroid/service/trust/TrustAgentService;->onConfigure(Ljava/util/List;)Z

    move-result v3

    .line 196
    .local v3, "result":Z
    iget-object v10, v1, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    if-eqz v10, :cond_0

    .line 198
    :try_start_0
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v10}, Landroid/service/trust/TrustAgentService;->-get2(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v10}, Landroid/service/trust/TrustAgentService;->-get0(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v10

    iget-object v12, v1, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    invoke-interface {v10, v3, v12}, Landroid/service/trust/ITrustAgentServiceCallback;->onConfigureCompleted(ZLandroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    const-string/jumbo v11, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    invoke-static {v10, v11}, Landroid/service/trust/TrustAgentService;->-wrap0(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11

    throw v10
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 208
    .end local v1    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .end local v3    # "result":Z
    :pswitch_3
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    goto :goto_0

    .line 214
    :pswitch_5
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    goto :goto_0

    .line 217
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 218
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v10, "token"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 219
    .local v7, "token":[B
    const-string/jumbo v10, "token_handle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 220
    .local v4, "handle":J
    const-string/jumbo v10, "user_handle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 221
    .local v9, "user":Landroid/os/UserHandle;
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10, v7, v4, v5, v9}, Landroid/service/trust/TrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    goto :goto_0

    .line 225
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v4    # "handle":J
    .end local v7    # "token":[B
    .end local v9    # "user":Landroid/os/UserHandle;
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 226
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string/jumbo v11, "token_handle"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 227
    .restart local v4    # "handle":J
    const-string/jumbo v11, "token_state"

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 228
    .local v8, "tokenState":I
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10, v4, v5, v8}, Landroid/service/trust/TrustAgentService;->onEscrowTokenStateReceived(JI)V

    goto/16 :goto_0

    .line 232
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v4    # "handle":J
    .end local v8    # "tokenState":I
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 233
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string/jumbo v10, "token_handle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 234
    .restart local v4    # "handle":J
    const-string/jumbo v10, "token_removed_result"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 235
    .local v6, "success":Z
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10, v4, v5, v6}, Landroid/service/trust/TrustAgentService;->onEscrowTokenRemoved(JZ)V

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
