.class Lcom/android/systemui/volume/VolumeDialogImpl$3;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 1388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1391
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get9(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1392
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get10(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 1393
    .local v0, "newExpand":Z
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1394
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1, v0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap12(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V

    .line 1395
    return-void
.end method
