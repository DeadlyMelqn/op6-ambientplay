.class Lcom/oneplus/aod/ViewInvertHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewInvertHelper.java"


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

.field final synthetic val$invert:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/ViewInvertHelper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/ViewInvertHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    iput-boolean p2, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->val$invert:Z

    .line 78
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 81
    iget-boolean v1, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->val$invert:Z

    if-nez v1, :cond_0

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-static {v1}, Lcom/oneplus/aod/ViewInvertHelper;->-get1(Lcom/oneplus/aod/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-static {v1}, Lcom/oneplus/aod/ViewInvertHelper;->-get1(Lcom/oneplus/aod/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-void
.end method