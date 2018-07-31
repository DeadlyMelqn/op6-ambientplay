.class Lcom/oneplus/doze/DozeService$3;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Lcom/oneplus/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAlwaysDisplayOn()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAlwaysDisplayOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/oneplus/doze/DozeService;->-wrap7(Lcom/oneplus/doze/DozeService;I)V

    .line 542
    return-void
.end method

.method public onEnterDisplayPeriod(Z)V
    .locals 3
    .param p1, "enter"    # Z

    .prologue
    .line 553
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnterDisplayPeriod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get5(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeService$MotionCheck;->setListening(Z)V

    .line 555
    return-void
.end method

.method public onNewNotifications()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNewNotifications (noop)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-wrap5(Lcom/oneplus/doze/DozeService;)V

    .line 521
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 530
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0, p1}, Lcom/oneplus/doze/DozeService;->-set1(Lcom/oneplus/doze/DozeService;Z)Z

    .line 531
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPowerSaveChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->-get7(Lcom/oneplus/doze/DozeService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->-get3(Lcom/oneplus/doze/DozeService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get7(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get3(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-wrap4(Lcom/oneplus/doze/DozeService;)V

    .line 535
    :cond_0
    return-void
.end method

.method public onThreeKeyChanged()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-wrap8(Lcom/oneplus/doze/DozeService;)V

    .line 526
    return-void
.end method

.method public onTriggerDetectLight()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTriggerDetectLight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$3;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-wrap1(Lcom/oneplus/doze/DozeService;)V

    .line 548
    return-void
.end method
