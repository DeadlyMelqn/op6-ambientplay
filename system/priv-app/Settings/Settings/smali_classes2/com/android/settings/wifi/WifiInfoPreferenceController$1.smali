.class Lcom/android/settings/wifi/WifiInfoPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiInfoPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiInfoPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiInfoPreferenceController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;->this$0:Lcom/android/settings/wifi/WifiInfoPreferenceController;

    .line 113
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 117
    if-eqz v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;->this$0:Lcom/android/settings/wifi/WifiInfoPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiInfoPreferenceController;->updateWifiInfo()V

    .line 121
    :cond_1
    return-void
.end method
