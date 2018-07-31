.class Lcom/android/settings/datausage/DataSaverBackend$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverBackend;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataSaverBackend;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    .line 203
    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .param p1, "isDataSaving"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get0(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend$1$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/datausage/DataSaverBackend$1$2;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public onUidPoliciesChanged(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "uidPolicies"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get0(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$1$1;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    return-void
.end method
