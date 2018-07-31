.class Lcom/android/server/OemSceneModeController$WlanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WlanReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method private constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$WlanReceiver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OemSceneModeController;Lcom/android/server/OemSceneModeController$WlanReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;
    .param p2, "-this1"    # Lcom/android/server/OemSceneModeController$WlanReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController$WlanReceiver;-><init>(Lcom/android/server/OemSceneModeController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v6, 0xa

    const/16 v5, 0x9

    .line 441
    if-eqz p2, :cond_2

    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 445
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/android/server/OemSceneModeController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OemSceneModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[gameMode netboost] WLANBroadcastReceiver --> NETWORK_STATE_CHANGED_ACTION info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    if-eqz v1, :cond_2

    .line 447
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 448
    iget-object v2, p0, Lcom/android/server/OemSceneModeController$WlanReceiver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->-get3(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Lcom/android/server/OemSceneModeController$WlanReceiver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->-get3(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    :cond_1
    iget-object v2, p0, Lcom/android/server/OemSceneModeController$WlanReceiver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->-get3(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 461
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 453
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/server/OemSceneModeController$WlanReceiver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->-get3(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    iget-object v2, p0, Lcom/android/server/OemSceneModeController$WlanReceiver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->-get3(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    :cond_4
    iget-object v2, p0, Lcom/android/server/OemSceneModeController$WlanReceiver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->-get3(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
