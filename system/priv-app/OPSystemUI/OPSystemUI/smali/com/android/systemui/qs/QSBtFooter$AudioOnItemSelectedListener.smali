.class public Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;
.super Ljava/lang/Object;
.source "QSBtFooter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBtFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioOnItemSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBtFooter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 575
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSBtFooter;->-get0(Lcom/android/systemui/qs/QSBtFooter;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBtFooter$AudioItem;

    .line 576
    .local v0, "item":Lcom/android/systemui/qs/QSBtFooter$AudioItem;
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemSelected: item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    const-string/jumbo v3, ", type = "

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->getType()I

    move-result v3

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    const-string/jumbo v3, ", pos = "

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSBtFooter;->-get6(Lcom/android/systemui/qs/QSBtFooter;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 580
    return-void

    .line 582
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 595
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/QSBtFooter;->-set2(Lcom/android/systemui/qs/QSBtFooter;I)I

    .line 596
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSBtFooter;->-wrap2(Lcom/android/systemui/qs/QSBtFooter;)V

    .line 597
    return-void

    .line 584
    :pswitch_0
    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    .line 588
    :pswitch_1
    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    .line 592
    :pswitch_2
    const/4 v1, 0x4

    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 601
    const-string/jumbo v0, "QSBtFooter"

    const-string/jumbo v1, "onNothingSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method
