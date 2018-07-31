.class Lcom/android/systemui/volume/VolumeDialogImpl$4;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V
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
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 292
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 293
    .local v0, "action":I
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 294
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    move v1, v2

    .line 293
    :goto_0
    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set3(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 295
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 296
    return v2

    :cond_0
    move v1, v2

    .line 293
    goto :goto_0

    .line 294
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
