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

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 582
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

    aput-object v6, v5, v2

    const/4 v6, 0x7

    invoke-static {v4, v6, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 583
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 585
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 586
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    .line 587
    .local v1, "wasMin":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    :cond_0
    invoke-interface {v3, v4, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 615
    .end local v1    # "wasMin":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set16(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    .line 616
    return-void

    .line 586
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "wasMin":Z
    goto :goto_0

    .line 589
    .end local v1    # "wasMin":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 590
    .local v0, "vmute":Z
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    :goto_3
    invoke-interface {v4, v5, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_1

    .line 589
    .end local v0    # "vmute":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "vmute":Z
    goto :goto_2

    :cond_4
    move v2, v3

    .line 590
    goto :goto_3
.end method
