.class final Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
.super Landroid/app/Dialog;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 1431
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1432
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 1465
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1466
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1468
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1469
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_1

    .line 1470
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1471
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 1473
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 1474
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get19(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1475
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    .line 1477
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap0(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap1(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1476
    const v5, 0x7f11059f

    .line 1475
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    return v8

    .line 1470
    .end local v0    # "isFullScreen":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_0

    .line 1469
    .end local v0    # "isFullScreen":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_0

    .line 1481
    :cond_2
    return v7
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1437
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 1442
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1443
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 1444
    .local v0, "animating":Z
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_0
    if-eqz v0, :cond_1

    .line 1446
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set5(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 1447
    return-void

    .line 1449
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 1450
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1454
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 1457
    return v2

    .line 1460
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
