.class final Lcom/android/settingslib/wifi/WifiTracker$MainHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_ACCESS_POINT_CHANGED:I = 0x2

.field static final MSG_CONNECTED_CHANGED:I = 0x0

.field static final MSG_WIFI_STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 832
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 833
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 837
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 838
    return-void

    .line 840
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 872
    :cond_1
    :goto_0
    return-void

    .line 842
    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onConnectedChanged()V

    goto :goto_0

    .line 845
    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onWifiStateChanged(I)V

    goto :goto_0

    .line 851
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get6(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker;Z)V

    goto :goto_0

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker;Z)V

    .line 855
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onAccessPointsChanged()V

    goto :goto_0

    .line 859
    :pswitch_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    goto :goto_0

    .line 864
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get4(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/WifiTracker;->-set2(Lcom/android/settingslib/wifi/WifiTracker;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method removePendingMessages()V
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    .line 877
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    .line 878
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    .line 879
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    .line 880
    return-void
.end method
