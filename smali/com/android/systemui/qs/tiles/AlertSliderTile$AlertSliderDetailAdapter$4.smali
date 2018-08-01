.class Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$4;
.super Ljava/lang/Object;
.source "AlertSliderTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->-get2(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->-get2(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 279
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;->-get2(Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)Landroid/widget/Switch;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 281
    .end local v0    # "isChecked":Z
    :cond_0
    return-void
.end method
