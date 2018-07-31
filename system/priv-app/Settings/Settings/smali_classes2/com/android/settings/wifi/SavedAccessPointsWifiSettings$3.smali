.class Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 91
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 93
    const v1, 0x7f0f088c

    .line 94
    const/4 v2, 0x0

    .line 92
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->-wrap0(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    .line 87
    return-void
.end method
