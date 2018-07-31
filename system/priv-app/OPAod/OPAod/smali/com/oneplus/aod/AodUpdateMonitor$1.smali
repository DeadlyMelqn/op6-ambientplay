.class Lcom/oneplus/aod/AodUpdateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodUpdateMonitor;
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
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 669
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 672
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap4(Lcom/oneplus/aod/AodUpdateMonitor;)V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get0(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get16(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v1

    sget v2, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    if-eq v1, v2, :cond_0

    .line 677
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get11(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/DisplayViewManager;->resetMainViewPosition()V

    .line 678
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap3(Lcom/oneplus/aod/AodUpdateMonitor;)V

    .line 679
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap1(Lcom/oneplus/aod/AodUpdateMonitor;Z)V

    .line 680
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get3(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get13(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireDetectLight()V

    goto :goto_0
.end method
