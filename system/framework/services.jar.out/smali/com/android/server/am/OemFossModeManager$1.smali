.class Lcom/android/server/am/OemFossModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OemFossModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemFossModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemFossModeManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemFossModeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/OemFossModeManager$1;->this$0:Lcom/android/server/am/OemFossModeManager;

    .line 129
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "OemFossModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[OemFossMode] # mGeneralReceiver # onReceive # action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string/jumbo v3, "com.fossmode.action.debug"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    const-string/jumbo v3, "code"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "code":Ljava/lang/String;
    const-string/jumbo v3, "OemFossModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[OemFossMode] # mGeneralReceiver # onReceive # code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string/jumbo v3, "dump"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager$1;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v3}, Lcom/android/server/am/OemFossModeManager;->-wrap1(Lcom/android/server/am/OemFossModeManager;)V

    .line 139
    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager$1;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v3}, Lcom/android/server/am/OemFossModeManager;->-wrap2(Lcom/android/server/am/OemFossModeManager;)V

    .line 145
    .end local v1    # "code":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager$1;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v3}, Lcom/android/server/am/OemFossModeManager;->-get2(Lcom/android/server/am/OemFossModeManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 143
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager$1;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v3}, Lcom/android/server/am/OemFossModeManager;->-get2(Lcom/android/server/am/OemFossModeManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/OemFossModeManager;->-get3()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
