.class Lcom/oneplus/aod/ViewInvertHelper$1;
.super Ljava/lang/Object;
.source "ViewInvertHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/ViewInvertHelper;->fade(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/ViewInvertHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/ViewInvertHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/ViewInvertHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/ViewInvertHelper$1;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/oneplus/aod/ViewInvertHelper$1;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/oneplus/aod/ViewInvertHelper;->-wrap0(Lcom/oneplus/aod/ViewInvertHelper;F)V

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/ViewInvertHelper$1;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-static {v1}, Lcom/oneplus/aod/ViewInvertHelper;->-get1(Lcom/oneplus/aod/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/oneplus/aod/ViewInvertHelper$1;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-static {v1}, Lcom/oneplus/aod/ViewInvertHelper;->-get1(Lcom/oneplus/aod/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/aod/ViewInvertHelper$1;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-static {v2}, Lcom/oneplus/aod/ViewInvertHelper;->-get0(Lcom/oneplus/aod/ViewInvertHelper;)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method
