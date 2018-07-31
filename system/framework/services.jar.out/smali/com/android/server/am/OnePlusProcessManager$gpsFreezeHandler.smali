.class Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "gpsFreezeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 1133
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1134
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1138
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1139
    .local v0, "uid":I
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[GpsFreeze] gpsFreezeHandler uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |arg1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 1164
    :cond_1
    :goto_0
    return-void

    .line 1142
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusProcessManager;->-wrap0(Lcom/android/server/am/OnePlusProcessManager;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1143
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1144
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get7()Lcom/android/server/LocationManagerService;

    invoke-static {v0, v5}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 1146
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1147
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1146
    if-eqz v1, :cond_1

    .line 1148
    :cond_3
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get7()Lcom/android/server/LocationManagerService;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    goto :goto_0

    .line 1153
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1154
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get7()Lcom/android/server/LocationManagerService;

    invoke-static {v0, v4}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 1156
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1157
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1156
    if-eqz v1, :cond_1

    .line 1158
    :cond_5
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get7()Lcom/android/server/LocationManagerService;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    goto :goto_0

    .line 1140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
