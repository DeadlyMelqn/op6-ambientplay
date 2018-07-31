.class Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherSettings.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherChangeReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TetherChangeReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->-get2(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->-get0(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result v2

    .line 178
    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->-set0(Lcom/android/settings/wifi/tether/WifiTetherSettings;Z)Z

    .line 181
    const-string/jumbo v2, "TetherChangeReceiver"

    const-string/jumbo v3, "Restarting WifiAp due to prior config change."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->-get1(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const-string/jumbo v2, "wifi_state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 186
    .local v1, "state":I
    if-ne v1, v4, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->-get0(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result v2

    .line 186
    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->-set0(Lcom/android/settings/wifi/tether/WifiTetherSettings;Z)Z

    .line 189
    const-string/jumbo v2, "TetherChangeReceiver"

    const-string/jumbo v3, "Restarting WifiAp due to prior config change."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->-get1(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    goto :goto_0
.end method
