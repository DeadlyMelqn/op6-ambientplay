.class public Lcom/android/systemui/qs/car/CarQSFragment;
.super Landroid/app/Fragment;
.source "CarQSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;


# instance fields
.field private mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

.field private mHeader:Landroid/view/View;

.field private mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 0
    .param p1, "delay"    # J

    .prologue
    .line 153
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public closeDetail()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getFooter()Lcom/android/systemui/qs/QSFooter;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    return-object v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public getQsMinExpansionHeight()I
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public hideImmediately()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public notifyBtFooterChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 178
    return-void
.end method

.method public notifyCustomizeChanged()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const v0, 0x7f0d0028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mHeader:Landroid/view/View;

    .line 52
    const v0, 0x7f0a0272

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/car/CarQSFooter;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    .line 54
    const v0, 0x7f0a0344

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/UserGridView;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    .line 55
    iget-object v1, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/car/UserGridView;->init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/car/CarQSFooter;->setUserGridView(Lcom/android/systemui/statusbar/car/UserGridView;)V

    .line 59
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 168
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 173
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "qsExpanded"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0
    .param p1, "qsExpansionEnabled"    # Z

    .prologue
    .line 116
    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/car/CarQSFooter;->setListening(Z)V

    .line 85
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0
    .param p1, "desiredHeight"    # I

    .prologue
    .line 110
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 148
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/car/CarQSFooter;->setListening(Z)V

    .line 90
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0
    .param p1, "overscrolling"    # Z

    .prologue
    .line 127
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0
    .param p1, "notificationPanelView"    # Lcom/android/systemui/plugins/qs/QS$HeightListener;

    .prologue
    .line 105
    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 2
    .param p1, "qsExpansionFraction"    # F
    .param p2, "headerTranslation"    # F

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
