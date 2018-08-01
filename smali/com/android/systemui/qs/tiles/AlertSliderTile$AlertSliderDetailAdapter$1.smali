.class Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;
.super Ljava/lang/Object;
.source "AlertSliderTile.java"

# interfaces
.implements Lcom/android/systemui/volume/SegmentedButtons$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onSelected(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "fromClick"    # Z

    .prologue
    .line 381
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)Lcom/android/systemui/volume/SegmentedButtons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 383
    .local v0, "state":I
    if-eqz p2, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x76

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 385
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-set0(Lcom/android/systemui/qs/tiles/AlertSliderTile;Z)Z

    .line 386
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->setSilentMode(I)V

    .line 387
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-wrap5(Lcom/android/systemui/qs/tiles/AlertSliderTile;I)V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;I)V

    .line 391
    .end local v0    # "state":I
    :cond_0
    return-void
.end method
