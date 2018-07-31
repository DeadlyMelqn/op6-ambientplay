.class Lcom/oneplus/aod/AodUpdateMonitor$2;
.super Landroid/app/UserSwitchObserver;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/AodUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$2;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 139
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    const-string/jumbo v0, "AodUpdateMonitor"

    const-string/jumbo v1, "onUserSwitchComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$2;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->-set2(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    .line 147
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$2;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/aod/Utils;->updateDozeSettings(Landroid/content/Context;I)V

    .line 148
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$2;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDisplayPeriod()V

    .line 149
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$2;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap5(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    .line 150
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 142
    return-void
.end method
