.class Lcom/android/settings/TetherSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    .line 220
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

    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get7(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/TetherSettings$2$1;

    invoke-direct {v3, p0}, Lcom/android/settings/TetherSettings$2$1;-><init>(Lcom/android/settings/TetherSettings$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string/jumbo v2, "codeaurora.net.conn.TETHER_AUTO_SHUT_DOWN_SOFTAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 236
    :cond_2
    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get7(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get7(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    .line 238
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hotspot_auto_shut_down"

    invoke-static {v2, v3, v4, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 239
    .local v1, "mHotspotAutoShutDownValue":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 240
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const v3, 0x7f0f032c

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 244
    :goto_2
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get0(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v3}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 245
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 238
    .end local v1    # "mHotspotAutoShutDownValue":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "mHotspotAutoShutDownValue":Z
    goto :goto_1

    .line 242
    :cond_4
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const v3, 0x7f0f041a

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 247
    .end local v1    # "mHotspotAutoShutDownValue":Z
    :cond_5
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get0(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v3}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0
.end method
