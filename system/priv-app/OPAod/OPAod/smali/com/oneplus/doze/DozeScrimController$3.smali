.class Lcom/oneplus/doze/DozeScrimController$3;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/DozeScrimController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeScrimController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/doze/DozeScrimController$3;->this$0:Lcom/oneplus/doze/DozeScrimController;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 187
    const-string/jumbo v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pulse out, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/doze/DozeScrimController$3;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v2}, Lcom/oneplus/doze/DozeScrimController;->-get2(Lcom/oneplus/doze/DozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$3;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->-get2(Lcom/oneplus/doze/DozeScrimController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$3;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->-get0(Lcom/oneplus/doze/DozeScrimController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isWakingUp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/oneplus/doze/DozeScrimController$3;->this$0:Lcom/oneplus/doze/DozeScrimController;

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$3;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->-get1(Lcom/oneplus/doze/DozeScrimController;)Lcom/oneplus/doze/DozeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeParameters;->getPulseOutDuration()I

    move-result v0

    int-to-long v4, v0

    .line 190
    sget-object v6, Lcom/oneplus/doze/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/oneplus/doze/DozeScrimController$3;->this$0:Lcom/oneplus/doze/DozeScrimController;

    invoke-static {v0}, Lcom/oneplus/doze/DozeScrimController;->-get5(Lcom/oneplus/doze/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v7

    .line 189
    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v7}, Lcom/oneplus/doze/DozeScrimController;->-wrap2(Lcom/oneplus/doze/DozeScrimController;ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method
