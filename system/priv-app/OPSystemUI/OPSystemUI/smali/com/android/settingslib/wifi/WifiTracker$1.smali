.class Lcom/android/settingslib/wifi/WifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 813
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 816
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const-string/jumbo v3, "wifi_state"

    .line 820
    const/4 v4, 0x4

    .line 819
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap5(Lcom/android/settingslib/wifi/WifiTracker;I)V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 822
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v2, v4, v5, v4}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 828
    :cond_2
    const-string/jumbo v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 829
    const-string/jumbo v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 828
    if-eqz v2, :cond_4

    .line 830
    :cond_3
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v2, v4}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 831
    :cond_4
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 832
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 834
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/settingslib/wifi/WifiTracker;->-get0(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 835
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/settingslib/wifi/WifiTracker;->-get0(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 836
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v2, v4}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 839
    :cond_5
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v2, v5, v1}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 841
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v2, v4}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 842
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_6
    const-string/jumbo v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 844
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/settingslib/wifi/WifiTracker;->-get1(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v3}, Lcom/android/settingslib/wifi/WifiTracker;->-get7(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 845
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v2, v5, v1}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 847
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_7
    const-string/jumbo v2, "android.intent.action.AUTH_PASSWORD_WRONG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    sget v2, Lcom/android/settingslib/R$string;->wifi_auth_password_wrong:I

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
