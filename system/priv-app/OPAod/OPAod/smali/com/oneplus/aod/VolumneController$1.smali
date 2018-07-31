.class Lcom/oneplus/aod/VolumneController$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/VolumneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/VolumneController;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/VolumneController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/VolumneController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x29

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    const-string/jumbo v2, "switch_state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, "zen":I
    const-string/jumbo v2, "VolumneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_NONE:I

    if-ne v1, v2, :cond_0

    .line 77
    return-void

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get3(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    iget-object v3, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v3}, Lcom/oneplus/aod/VolumneController;->-wrap0(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/aod/VolumneController;->-set0(Lcom/oneplus/aod/VolumneController;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get3(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 85
    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_SILENCE:I

    if-ne v1, v2, :cond_5

    .line 86
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get3(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200cd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get5(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    iget-object v3, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v3}, Lcom/oneplus/aod/VolumneController;->-wrap1(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/aod/VolumneController;->-set1(Lcom/oneplus/aod/VolumneController;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get5(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 99
    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_SILENCE:I

    if-ne v1, v2, :cond_8

    .line 100
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get5(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d0021

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2, v1}, Lcom/oneplus/aod/VolumneController;->-set2(Lcom/oneplus/aod/VolumneController;I)I

    .line 108
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get0(Lcom/oneplus/aod/VolumneController;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->onZenModeChange(I)V

    .line 109
    return-void

    .line 87
    :cond_5
    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    if-ne v1, v2, :cond_7

    .line 88
    new-array v2, v6, [I

    aput v7, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    const v0, 0x7f0200ca

    .line 90
    .local v0, "id":I
    :goto_2
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get3(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    .end local v0    # "id":I
    :cond_6
    const v0, 0x7f0200cb

    .restart local v0    # "id":I
    goto :goto_2

    .line 92
    .end local v0    # "id":I
    :cond_7
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get3(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200cc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 101
    :cond_8
    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    if-ne v1, v2, :cond_a

    .line 102
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get5(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v3

    new-array v2, v6, [I

    aput v7, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f0d0022

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_9
    const v2, 0x7f0d0023

    goto :goto_3

    .line 104
    :cond_a
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->-get5(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d0024

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
