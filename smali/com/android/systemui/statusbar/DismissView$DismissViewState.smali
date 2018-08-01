.class public Lcom/android/systemui/statusbar/DismissView$DismissViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "DismissView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DismissView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DismissView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/DismissView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/DismissView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/DismissView$DismissViewState;->this$0:Lcom/android/systemui/statusbar/DismissView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 86
    instance-of v2, p1, Lcom/android/systemui/statusbar/DismissView;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/android/systemui/statusbar/DismissView;

    .line 88
    .local v0, "dismissView":Lcom/android/systemui/statusbar/DismissView;
    iget v2, p0, Lcom/android/systemui/statusbar/DismissView$DismissViewState;->clipTopAmount:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/DismissView$DismissViewState;->this$0:Lcom/android/systemui/statusbar/DismissView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DismissView;->-get0(Lcom/android/systemui/statusbar/DismissView;)I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    .line 89
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(Z)V

    .line 91
    .end local v0    # "dismissView":Lcom/android/systemui/statusbar/DismissView;
    .end local v1    # "visible":Z
    :cond_0
    return-void

    .line 88
    .restart local v0    # "dismissView":Lcom/android/systemui/statusbar/DismissView;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0

    .line 89
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
