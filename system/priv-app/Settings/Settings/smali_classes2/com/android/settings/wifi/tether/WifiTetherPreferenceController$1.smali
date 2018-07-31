.class Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 118
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
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    const-string/jumbo v5, "wifi_state"

    const/16 v6, 0xe

    .line 123
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 125
    .local v4, "state":I
    const-string/jumbo v5, "wifi_ap_error_code"

    .line 126
    const/4 v6, 0x0

    .line 125
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 127
    .local v3, "reason":I
    iget-object v5, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v5, v4, v3}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->-wrap1(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;II)V

    .line 137
    .end local v3    # "reason":I
    .end local v4    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string/jumbo v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    const-string/jumbo v5, "tetherArray"

    .line 129
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 132
    .local v1, "active":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "erroredArray"

    .line 131
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 133
    .local v2, "errored":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->-wrap2(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    .end local v1    # "active":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "errored":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v5}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->-wrap0(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    goto :goto_0
.end method
