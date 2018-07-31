.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;
    .param p2, "-this1"    # Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x0

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 503
    const-string/jumbo v5, "availableArray"

    .line 502
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 505
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "tetherArray"

    .line 504
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 507
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "erroredArray"

    .line 506
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 508
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 509
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 510
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 508
    invoke-static {v8, v5, v6, v7}, Lcom/android/settings/TetherSettings;->-wrap6(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 511
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5}, Lcom/android/settings/TetherSettings;->-get7(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 512
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Z

    move-result v5

    .line 511
    if-eqz v5, :cond_0

    .line 513
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings/TetherSettings;->-set3(Lcom/android/settings/TetherSettings;Z)Z

    .line 517
    const-string/jumbo v5, "TetheringSettings"

    const-string/jumbo v6, "Restarting WifiAp due to prior config change."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings/TetherSettings;->-wrap3(Lcom/android/settings/TetherSettings;I)V

    .line 560
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const-string/jumbo v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 521
    const-string/jumbo v5, "wifi_state"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 522
    .local v4, "state":I
    if-ne v4, v10, :cond_0

    .line 523
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Z

    move-result v5

    .line 522
    if-eqz v5, :cond_0

    .line 524
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings/TetherSettings;->-set3(Lcom/android/settings/TetherSettings;Z)Z

    .line 528
    const-string/jumbo v5, "TetheringSettings"

    const-string/jumbo v6, "Restarting WifiAp due to prior config change."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings/TetherSettings;->-wrap3(Lcom/android/settings/TetherSettings;I)V

    goto :goto_0

    .line 531
    .end local v4    # "state":I
    :cond_2
    const-string/jumbo v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 532
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/settings/TetherSettings;->-set2(Lcom/android/settings/TetherSettings;Z)Z

    .line 533
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 534
    :cond_3
    const-string/jumbo v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 535
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings/TetherSettings;->-set2(Lcom/android/settings/TetherSettings;Z)Z

    .line 536
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 537
    :cond_4
    const-string/jumbo v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 538
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v6, "connected"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/TetherSettings;->-set4(Lcom/android/settings/TetherSettings;Z)Z

    .line 539
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 540
    :cond_5
    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 541
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5}, Lcom/android/settings/TetherSettings;->-get1(Lcom/android/settings/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 543
    const-string/jumbo v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    .line 542
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 558
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    .line 545
    :sswitch_0
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/settings/TetherSettings;->-wrap3(Lcom/android/settings/TetherSettings;I)V

    .line 546
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings/TetherSettings;->-set0(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    .line 551
    :sswitch_1
    iget-object v5, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings/TetherSettings;->-set0(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    .line 542
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
