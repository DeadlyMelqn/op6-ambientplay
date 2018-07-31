.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSCustomizer$1;,
        Lcom/android/systemui/qs/customize/QSCustomizer$2;,
        Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;
    }
.end annotation


# instance fields
.field private isShown:Z

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCustomizing:Z

.field private mDragLabel:Landroid/widget/TextView;

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mFinishedFetchingTiles:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasNavBar:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsShowingNavBackdrop:Z

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private final mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mSpace:Landroid/view/View;

.field private mToolbar:Landroid/widget/Toolbar;

.field mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mX:I

.field private mY:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/QSEditPageManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "customizing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "shouldShow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackdrop(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x7f12041c

    invoke-direct {v1, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHandler:Landroid/os/Handler;

    .line 98
    iput-boolean v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    .line 480
    new-instance v1, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 489
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 512
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizer$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 106
    new-instance v1, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d0102

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    const v1, 0x102017d

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 113
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 114
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v4, 0x101030b

    invoke-virtual {v1, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 115
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v6, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 115
    invoke-virtual {v1, v4}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance v4, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v1, v4}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1, p0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    const v4, 0x7f11040e

    invoke-virtual {v1, v4}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 145
    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 146
    const v1, 0x7f0a033a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditViewPager;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 147
    const v1, 0x7f0a01a9

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditViewPager;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 148
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    const v1, 0x7f0a0339

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 149
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    const v1, 0x7f0a01a8

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 150
    const v1, 0x7f0a00d1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    .line 151
    const v1, 0x7f0a02e1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpace:Landroid/view/View;

    .line 152
    new-instance v1, Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    invoke-direct {v1, p1, v4, v5, v6}, Lcom/android/systemui/qs/customize/QSEditPageManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/QSEditViewPager;Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    .line 153
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isLayoutRtl()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setLayoutRTL(Z)V

    .line 155
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizer$4;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "buttons_show_on_screen_navkeys"

    const/4 v6, 0x0

    invoke-direct {v1, p0, v4, v6, v5}, Lcom/android/systemui/qs/customize/QSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 162
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SystemSetting;->getValue(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    .line 164
    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackdrop(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSpace:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 167
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 169
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 171
    return-void

    :cond_0
    move v1, v3

    .line 163
    goto :goto_0
.end method

.method private queryTiles()V
    .locals 5

    .prologue
    .line 348
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    .line 350
    new-instance v0, Lcom/android/systemui/qs/customize/-$Lambda$3wtCMwN4ebVvuc-6mIdikfyMI50;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/customize/-$Lambda$3wtCMwN4ebVvuc-6mIdikfyMI50;-><init>(BLjava/lang/Object;)V

    .line 358
    .local v0, "tileQueryFetchCompletion":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method private reset()V
    .locals 6

    .prologue
    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v2, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v4, 0x7f110470

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "defTiles":Ljava/lang/String;
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 426
    .local v1, "tile":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "tile":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    .line 431
    return-void
.end method

.method private save()V
    .locals 2

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    .line 449
    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 3
    .param p1, "customizing"    # Z

    .prologue
    .line 401
    const-string/jumbo v0, "QSCustomizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCustomizing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 404
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    .line 405
    return-void
.end method

.method private setTileSpecs()V
    .locals 4

    .prologue
    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v0, "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 436
    .local v1, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    .end local v1    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setTileSpecs(Ljava/util/List;)V

    .line 441
    return-void
.end method

.method private updateNavBackdrop(Z)V
    .locals 2
    .param p1, "shouldShow"    # Z

    .prologue
    .line 275
    const v1, 0x7f0a01ec

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, "navBackdrop":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 277
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 280
    return-void

    .line 277
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateNavColors()V
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setQsCustomizing(Z)V

    .line 285
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hide(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 363
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "QSCustomizer"

    const-string/jumbo v1, "hide edit UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 368
    iput-boolean v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 370
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 371
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    .line 376
    const v1, 0x7f110064

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 382
    :cond_0
    return-void
.end method

.method public hideNoAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 387
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 388
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 389
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    .line 391
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 392
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_QSCustomizer_13488()V
    .locals 3

    .prologue
    .line 351
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 352
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/qs/customize/-$Lambda$3wtCMwN4ebVvuc-6mIdikfyMI50;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/qs/customize/-$Lambda$3wtCMwN4ebVvuc-6mIdikfyMI50;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_QSCustomizer_13596()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    .line 354
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->recalcSpecs()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_QSCustomizer_17553()V
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hideNoAnimation()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 186
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide(II)V

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackdrop(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 195
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 196
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 197
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateThemeColor()V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v3, 0x104055f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 214
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 216
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070372

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 220
    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 419
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 415
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x167

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isLayoutRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setLayoutRTL(Z)V

    .line 205
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 460
    const-string/jumbo v1, "qs_customizing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 461
    .local v0, "customizing":Z
    if-eqz v0, :cond_0

    .line 462
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 463
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizer$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$5;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 473
    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 454
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 456
    :cond_0
    const-string/jumbo v0, "qs_customizing"

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 457
    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0
    .param p1, "notificationsQsContainer"    # Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 296
    return-void
.end method

.method public setEditLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 476
    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 477
    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 478
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 292
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0
    .param p1, "qs"    # Lcom/android/systemui/plugins/qs/QS;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 300
    return-void
.end method

.method public show(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 305
    const-string/jumbo v0, "QSCustomizer"

    const-string/jumbo v1, "show edit UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 308
    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 310
    iput-boolean v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 311
    iput-boolean v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v5, 0x64

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;I)V

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    .line 321
    const v1, 0x7f110065

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 327
    :cond_0
    return-void
.end method

.method public showImmediately()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 331
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailClipper;->showBackground()V

    .line 334
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 336
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 345
    :cond_0
    return-void
.end method

.method protected updateThemeColor()V
    .locals 12

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "back":Landroid/widget/ImageButton;
    const/4 v9, 0x0

    .line 225
    .local v9, "title":Landroid/widget/TextView;
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v10, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v10}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v5

    .end local v1    # "back":Landroid/widget/ImageButton;
    .end local v9    # "title":Landroid/widget/TextView;
    .local v5, "count":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 226
    iget-object v10, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v10, v6}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 227
    .local v4, "child":Landroid/view/View;
    instance-of v10, v4, Landroid/widget/ImageButton;

    if-eqz v10, :cond_1

    move-object v1, v4

    .line 228
    check-cast v1, Landroid/widget/ImageButton;

    .line 225
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 229
    :cond_1
    instance-of v10, v4, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    move-object v9, v4

    .line 230
    check-cast v9, Landroid/widget/TextView;

    .local v9, "title":Landroid/widget/TextView;
    goto :goto_1

    .line 234
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "title":Landroid/widget/TextView;
    :cond_2
    sget v10, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    invoke-static {v10}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v7

    .line 235
    .local v7, "primaryColor":I
    sget v10, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    invoke-static {v10}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    .line 236
    .local v3, "buttonColor":I
    sget v10, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    invoke-static {v10}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v8

    .line 239
    .local v8, "primaryTextColor":I
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 240
    const/4 v0, -0x1

    .line 243
    .local v0, "accentColor":I
    :goto_2
    sget v10, Lcom/android/systemui/util/ThemeColorUtils;->QS_EDIT_BOTTOM:I

    invoke-static {v10}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    .line 245
    .local v2, "bottomColor":I
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/qs/customize/QSCustomizer;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 246
    iget-object v10, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v10, v7}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setBackgroundColor(I)V

    .line 247
    const v10, 0x7f0a0315

    invoke-virtual {p0, v10}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 248
    const v10, 0x7f0a033b

    invoke-virtual {p0, v10}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 250
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 251
    const v10, 0x7f0803df

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 252
    iget-object v10, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getPopTheme()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 253
    iget-object v10, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v10}, Landroid/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 255
    iget-object v10, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    return-void

    .line 241
    .end local v0    # "accentColor":I
    .end local v2    # "bottomColor":I
    :cond_3
    sget v10, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v10}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .restart local v0    # "accentColor":I
    goto :goto_2
.end method
