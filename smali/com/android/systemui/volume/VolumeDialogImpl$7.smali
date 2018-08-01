.class Lcom/android/systemui/volume/VolumeDialogImpl$7;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field final synthetic val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 455
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get8(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x7

    invoke-static {v4, v6, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 456
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 457
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 458
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    .line 459
    .local v0, "hasVibrator":Z
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get19(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v4, v7, :cond_4

    .line 460
    if-eqz v0, :cond_1

    .line 461
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    invoke-interface {v4, v8, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 484
    .end local v0    # "hasVibrator":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set16(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    .line 485
    return-void

    .line 463
    .restart local v0    # "hasVibrator":Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .line 464
    .local v2, "wasZero":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    .line 465
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    .line 464
    :cond_2
    invoke-interface {v4, v5, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 463
    .end local v2    # "wasZero":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "wasZero":Z
    goto :goto_1

    .line 468
    .end local v2    # "wasZero":Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    invoke-interface {v4, v7, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 469
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    invoke-interface {v3, v4, v8}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 473
    .end local v0    # "hasVibrator":Z
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    .line 475
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get19(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v4, v7, :cond_0

    .line 476
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_7

    const/4 v1, 0x1

    .line 477
    .local v1, "vmute":Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    :cond_6
    invoke-interface {v4, v5, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 476
    .end local v1    # "vmute":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "vmute":Z
    goto :goto_2

    .line 480
    .end local v1    # "vmute":Z
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne v3, v4, :cond_9

    const/4 v1, 0x1

    .line 481
    .restart local v1    # "vmute":Z
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    .line 482
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    .line 481
    :goto_4
    invoke-interface {v4, v5, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto/16 :goto_0

    .line 480
    .end local v1    # "vmute":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "vmute":Z
    goto :goto_3

    .line 482
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    goto :goto_4
.end method
