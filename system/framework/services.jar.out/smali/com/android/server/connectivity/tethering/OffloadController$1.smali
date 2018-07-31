.class Lcom/android/server/connectivity/tethering/OffloadController$1;
.super Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/tethering/OffloadController;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/OffloadController;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    .line 152
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onNatTimeoutUpdate(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .param p1, "proto"    # I
    .param p2, "srcAddr"    # Ljava/lang/String;
    .param p3, "srcPort"    # I
    .param p4, "dstAddr"    # Ljava/lang/String;
    .param p5, "dstPort"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap6(Lcom/android/server/connectivity/tethering/OffloadController;ILjava/lang/String;ILjava/lang/String;I)V

    .line 223
    return-void
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStarted"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onStoppedError()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStoppedError"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onStoppedLimitReached()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStoppedLimitReached"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap8(Lcom/android/server/connectivity/tethering/OffloadController;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap4(Lcom/android/server/connectivity/tethering/OffloadController;)V

    .line 215
    return-void
.end method

.method public onStoppedUnsupported()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStoppedUnsupported"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap7(Lcom/android/server/connectivity/tethering/OffloadController;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap4(Lcom/android/server/connectivity/tethering/OffloadController;)V

    .line 177
    return-void
.end method

.method public onSupportAvailable()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onSupportAvailable"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap7(Lcom/android/server/connectivity/tethering/OffloadController;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap4(Lcom/android/server/connectivity/tethering/OffloadController;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    sget-object v1, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap0(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    .line 192
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap5(Lcom/android/server/connectivity/tethering/OffloadController;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap2(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z

    .line 194
    return-void
.end method
