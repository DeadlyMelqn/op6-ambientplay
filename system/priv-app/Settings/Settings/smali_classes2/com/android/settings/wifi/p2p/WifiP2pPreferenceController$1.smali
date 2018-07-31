.class Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->-wrap0(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    .line 49
    return-void
.end method
