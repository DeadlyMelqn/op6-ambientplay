.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 238
    const v1, 0x7f0f08ae

    .line 239
    const/4 v2, 0x1

    .line 237
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method