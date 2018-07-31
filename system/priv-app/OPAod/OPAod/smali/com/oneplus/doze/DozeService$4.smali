.class Lcom/oneplus/doze/DozeService$4;
.super Lcom/oneplus/doze/DozeService$ProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/DozeService;

.field final synthetic val$performedProxCheck:Z

.field final synthetic val$reason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService;JIZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;
    .param p2, "this$0_1"    # Lcom/oneplus/doze/DozeService;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    iput-wide p3, p0, Lcom/oneplus/doze/DozeService$4;->val$start:J

    iput p5, p0, Lcom/oneplus/doze/DozeService$4;->val$reason:I

    iput-boolean p6, p0, Lcom/oneplus/doze/DozeService$4;->val$performedProxCheck:Z

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/DozeService$ProximityCheck;-><init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$ProximityCheck;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 7
    .param p1, "result"    # I

    .prologue
    .line 295
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    .line 296
    .local v2, "isNear":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 297
    .local v0, "end":J
    iget-object v3, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v3}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/oneplus/doze/DozeService$4;->val$start:J

    sub-long v4, v0, v4

    iget v6, p0, Lcom/oneplus/doze/DozeService$4;->val$reason:I

    invoke-static {v3, v2, v4, v5, v6}, Lcom/oneplus/doze/DozeLog;->traceProximityResult(Landroid/content/Context;ZJI)V

    .line 298
    iget-boolean v3, p0, Lcom/oneplus/doze/DozeService$4;->val$performedProxCheck:Z

    if-eqz v3, :cond_1

    .line 300
    return-void

    .line 295
    .end local v0    # "end":J
    .end local v2    # "isNear":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isNear":Z
    goto :goto_0

    .line 302
    .restart local v0    # "end":J
    :cond_1
    const-string/jumbo v3, "DozeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isNear = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-eqz v2, :cond_2

    .line 305
    iget-object v3, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/oneplus/doze/DozeService;->-set2(Lcom/oneplus/doze/DozeService;Z)Z

    .line 306
    iget-object v3, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v3}, Lcom/oneplus/doze/DozeService;->-get13(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 308
    iget-object v3, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v3}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/aod/DisplayViewManager;->resetViewState()V

    .line 309
    return-void

    .line 311
    :cond_2
    iget-object v3, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    iget v4, p0, Lcom/oneplus/doze/DozeService$4;->val$reason:I

    invoke-static {v3, v4}, Lcom/oneplus/doze/DozeService;->-wrap2(Lcom/oneplus/doze/DozeService;I)V

    .line 312
    return-void
.end method
