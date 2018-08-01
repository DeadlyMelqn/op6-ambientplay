.class public Lcom/android/systemui/statusbar/car/UserGridView;
.super Landroid/support/v4/view/ViewPager;
.source "UserGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/UserGridView$Adapter;,
        Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;,
        Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private mHeightChildren:I

.field private mShowing:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTargetHeight:I

.field private mUserSelectionListener:Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/UserGridView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mUserSelectionListener:Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/UserGridView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/car/UserGridView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/UserGridView;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method private animateHeightChange(II)V
    .locals 4
    .param p1, "oldHeight"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 138
    if-eq p1, p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mTargetHeight:I

    if-ne p2, v0, :cond_1

    .line 139
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 147
    :cond_2
    iput p2, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mTargetHeight:I

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mTargetHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/car/UserGridView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/UserGridView$1;-><init>(Lcom/android/systemui/statusbar/car/UserGridView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    if-ge p1, p2, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 185
    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_car_UserGridView-mthref-0()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->showOfflineAuthUi()V

    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mShowing:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/car/UserGridView;->animateHeightChange(II)V

    .line 88
    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V
    .locals 2
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "userSwitcherController"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p3, "showInitially"    # Z

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;-><init>(Lcom/android/systemui/statusbar/car/UserGridView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/UserGridView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/UserGridView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mShowing:Z

    .line 74
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mShowing:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_UserGridView_5435(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 151
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->requestLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "height":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 109
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 130
    :cond_0
    :goto_0
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 132
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 133
    return-void

    .line 111
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/car/UserGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "child":Landroid/view/View;
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 113
    invoke-virtual {v0, p1, v3}, Landroid/view/View;->measure(II)V

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightChildren:I

    .line 121
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mShowing:Z

    if-nez v3, :cond_3

    .line 122
    const/4 v1, 0x0

    .line 126
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 127
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/UserGridView;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public setUserSelectionListener(Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;)V
    .locals 0
    .param p1, "userSelectionListener"    # Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mUserSelectionListener:Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;

    .line 97
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mShowing:Z

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mHeightChildren:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/car/UserGridView;->animateHeightChange(II)V

    .line 83
    return-void
.end method

.method showOfflineAuthUi()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 102
    return-void
.end method
