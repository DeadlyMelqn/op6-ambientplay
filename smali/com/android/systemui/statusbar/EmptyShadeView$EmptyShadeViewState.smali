.class public Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "EmptyShadeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/EmptyShadeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyShadeViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/EmptyShadeView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/EmptyShadeView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 68
    instance-of v2, p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 70
    .local v0, "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    iget v2, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->clipTopAmount:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->-get0(Lcom/android/systemui/statusbar/EmptyShadeView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    const/4 v1, 0x1

    .line 72
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 71
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    .line 74
    .end local v0    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    .end local v1    # "visible":Z
    :cond_0
    return-void

    .line 70
    .restart local v0    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0

    .line 72
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
