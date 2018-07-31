.class public Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;
.super Ljava/lang/Object;
.source "FullscreenUserSwitcher.java"


# instance fields
.field private final mAnimUpdateIntervalMs:I

.field private final mContainer:Landroid/view/View;

.field private final mLoginTimeoutMs:I

.field private final mParent:Landroid/view/View;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mShortAnimDuration:I

.field private mShowing:Z

.field private final mSwitchingUsers:Landroid/widget/ProgressBar;

.field private mTimer:Landroid/os/CountDownTimer;

.field private final mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mLoginTimeoutMs:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->automaticallySelectUser()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/view/ViewStub;)V
    .locals 6
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "userSwitcherController"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p3, "containerStub"    # Landroid/view/ViewStub;

    .prologue
    const/4 v5, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 53
    invoke-virtual {p3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    .line 54
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    const v3, 0x7f0a0095

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    const v3, 0x7f0a0344

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/car/UserGridView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    .line 56
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v2, p1, v3, v5}, Lcom/android/systemui/statusbar/car/UserGridView;->init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    new-instance v3, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/car/UserGridView;->setUserSelectionListener(Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;)V

    .line 63
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    const v3, 0x7f0a0347

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/PageIndicator;

    .line 64
    .local v0, "pageIndicator":Lcom/android/systemui/statusbar/car/PageIndicator;
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/car/PageIndicator;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    const v3, 0x7f0a00a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mProgressBar:Landroid/widget/ProgressBar;

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mLoginTimeoutMs:I

    .line 69
    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mAnimUpdateIntervalMs:I

    .line 70
    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShortAnimDuration:I

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    const v3, 0x7f0a02ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po;

    invoke-direct {v3, v5, p0}, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    new-instance v3, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/car/UserGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    const v3, 0x7f0a02fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mSwitchingUsers:Landroid/widget/ProgressBar;

    .line 87
    return-void
.end method

.method private automaticallySelectUser()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/UserGridView;->showOfflineAuthUi()V

    .line 172
    return-void
.end method

.method private cancelTimer()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 163
    iput-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mTimer:Landroid/os/CountDownTimer;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 166
    :cond_0
    return-void
.end method

.method private crossFade(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "incoming"    # Landroid/view/View;
    .param p2, "outgoing"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 103
    const/high16 v1, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShortAnimDuration:I

    int-to-long v2, v1

    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$1;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;Landroid/view/View;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 115
    iget v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShortAnimDuration:I

    int-to-long v2, v1

    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;Landroid/view/View;)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 122
    return-void
.end method

.method private toggleSwitchInProgress(Z)V
    .locals 2
    .param p1, "inProgress"    # Z

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mSwitchingUsers:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->crossFade(Landroid/view/View;Landroid/view/View;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mSwitchingUsers:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->crossFade(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShowing:Z

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->cancelTimer()V

    .line 156
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->toggleSwitchInProgress(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_FullscreenUserSwitcher_2135(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 58
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->toggleSwitchInProgress(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_FullscreenUserSwitcher_2868(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->cancelTimer()V

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->automaticallySelectUser()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_FullscreenUserSwitcher_3060(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->cancelTimer()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_FullscreenUserSwitcher_3147(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->cancelTimer()V

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/UserGridView;->onUserSwitched(I)V

    .line 91
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShowing:Z

    if-eqz v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShowing:Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->cancelTimer()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    return-void

    .line 137
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$3;

    iget v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mLoginTimeoutMs:I

    int-to-long v2, v1

    iget v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mAnimUpdateIntervalMs:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$3;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;JJ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mTimer:Landroid/os/CountDownTimer;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 151
    return-void
.end method
