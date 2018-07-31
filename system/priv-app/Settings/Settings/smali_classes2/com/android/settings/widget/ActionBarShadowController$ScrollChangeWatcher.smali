.class final Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ActionBarShadowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ActionBarShadowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScrollChangeWatcher"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAnchorView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/widget/ActionBarShadowController;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/app/Activity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/widget/ActionBarShadowController;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->this$0:Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/widget/ActionBarShadowController;
    .param p2, "anchorView"    # Landroid/view/View;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->this$0:Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    .line 112
    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->updateDropShadow(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public updateDropShadow(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x41000000    # 8.0f

    const/4 v3, 0x0

    .line 121
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    .line 122
    .local v1, "shouldShowShadow":Z
    iget-object v4, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setElevation(F)V

    .line 130
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    iget-object v4, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 126
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 127
    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setElevation(F)V

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method
