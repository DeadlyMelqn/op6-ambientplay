.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mDark:Z

.field private mHasItemsInStableShelf:Z

.field private mHideBackground:Z

.field private mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mIconAppearTopPadding:I

.field private mIconSize:I

.field private mInteractive:Z

.field private mMaxLayoutHeight:I

.field private mMaxShelfEnd:F

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

.field private mShowNotificationShelf:Z

.field private mStatusBarHeight:I

.field private mStatusBarPaddingStart:I

.field private mStatusBarState:I

.field private mTmp:[I

.field private mTouchActive:Z

.field private mVibrationOnAnimation:Z

.field private mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p1, "hasItemsInStableShelf"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p1, "openedAmount"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    const-string/jumbo v0, "debug.icon_opening_animations"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    .line 57
    const-string/jumbo v0, "debug.icon_scroll_animations"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 56
    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 91
    return-void
.end method

.method private getFullyClosedTranslation()F
    .locals 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 129
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f070296

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .line 130
    const v4, 0x7f070431

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 131
    const v4, 0x7f070439

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarPaddingStart:I

    .line 132
    const v4, 0x7f070293

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 136
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const v4, 0x7f0702aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 137
    .local v0, "height":I
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    if-ge v0, v4, :cond_0

    .line 138
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 140
    :cond_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const v4, 0x7f07040c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 145
    .local v2, "padding":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v4, v2, v5, v2, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setPadding(IIII)V

    .line 146
    const v4, 0x7f0703f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 147
    const v4, 0x7f05002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 148
    const v4, 0x105016b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    .line 150
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v4, :cond_1

    .line 151
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationShelf;->setVisibility(I)V

    .line 153
    :cond_1
    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1
    .param p1, "hasItemsInStableShelf"    # Z

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    .line 730
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 731
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 733
    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1
    .param p1, "hideBackground"    # Z

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    .line 651
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackground()V

    .line 653
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateOutline()V

    .line 655
    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V
    .locals 23
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "transitionAmount"    # F
    .param p3, "iconTransformDistance"    # F
    .param p4, "usingLinearInterpolation"    # Z
    .param p5, "isLastChild"    # Z

    .prologue
    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 561
    .local v5, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v7

    .line 563
    .local v7, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationIcon()Landroid/view/View;

    move-result-object v15

    .line 564
    .local v15, "rowIcon":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContentTranslation()F

    move-result v21

    add-float v13, v20, v21

    .line 565
    .local v13, "notificationIconPosition":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isTransformingIntoShelf()Z

    move-result v20

    xor-int/lit8 v19, v20, 0x1

    .line 566
    :goto_0
    if-eqz p4, :cond_0

    xor-int/lit8 v20, v19, 0x1

    if-eqz v20, :cond_0

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v20

    sub-float v13, v20, p3

    .line 573
    :cond_0
    const/4 v14, 0x0

    .line 575
    .local v14, "notificationIconSize":F
    if-eqz v15, :cond_a

    .line 576
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v8

    .line 577
    .local v8, "iconTopPadding":I
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v14, v0

    .line 581
    :goto_1
    int-to-float v0, v8

    move/from16 v20, v0

    add-float v13, v13, v20

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v20

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v17, v20, v21

    .line 583
    .local v17, "shelfIconPosition":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v17, v17, v20

    .line 585
    sub-float v20, v13, v17

    .line 586
    const/16 v21, 0x0

    .line 584
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    .line 588
    .local v9, "iconYTranslation":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v21

    mul-float v18, v20, v21

    .line 589
    .local v18, "shelfIconSize":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 590
    .local v3, "alpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v20

    xor-int/lit8 v12, v20, 0x1

    .line 591
    .local v12, "noIcon":Z
    if-eqz v12, :cond_1

    .line 593
    move/from16 v3, p2

    .line 594
    const/high16 v20, 0x40000000    # 2.0f

    div-float v14, v18, v20

    .line 597
    :cond_1
    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    .line 599
    .local v11, "newSize":F
    if-eqz v7, :cond_8

    .line 600
    div-float v20, v11, v18

    move/from16 v0, v20

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    .line 601
    iget v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    .line 602
    const/16 v20, 0x0

    cmpl-float v20, p2, v20

    if-nez v20, :cond_b

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isAnimating(Landroid/view/View;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    :goto_2
    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 603
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDrawingAppearAnimation()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v20

    xor-int/lit8 v10, v20, 0x1

    .line 604
    :goto_3
    if-eqz v10, :cond_2

    .line 605
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 606
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 608
    :cond_2
    iput v3, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    .line 609
    iput v9, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->yTranslation:F

    .line 610
    if-eqz v19, :cond_3

    .line 611
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 612
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    .line 613
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    .line 614
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    .line 615
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 617
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v20

    if-nez v20, :cond_6

    if-eqz p5, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v20

    if-nez v20, :cond_5

    .line 618
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_6

    .line 619
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 621
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getBackgroundColorWithoutTint()I

    move-result v4

    .line 622
    .local v4, "backgroundColor":I
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result v16

    .line 623
    .local v16, "shelfColor":I
    if-nez v12, :cond_7

    if-eqz v16, :cond_7

    .line 624
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v6

    .line 626
    .local v6, "iconColor":I
    iget v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v20, v0

    .line 625
    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v16

    .line 628
    .end local v6    # "iconColor":I
    :cond_7
    move/from16 v0, v16

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 630
    .end local v4    # "backgroundColor":I
    .end local v16    # "shelfColor":I
    :cond_8
    return-void

    .line 565
    .end local v3    # "alpha":F
    .end local v8    # "iconTopPadding":I
    .end local v9    # "iconYTranslation":F
    .end local v11    # "newSize":F
    .end local v12    # "noIcon":Z
    .end local v14    # "notificationIconSize":F
    .end local v17    # "shelfIconPosition":F
    .end local v18    # "shelfIconSize":F
    :cond_9
    const/16 v19, 0x0

    .local v19, "stayingInShelf":Z
    goto/16 :goto_0

    .line 579
    .end local v19    # "stayingInShelf":Z
    .restart local v14    # "notificationIconSize":F
    :cond_a
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .restart local v8    # "iconTopPadding":I
    goto/16 :goto_1

    .line 602
    .restart local v3    # "alpha":F
    .restart local v9    # "iconYTranslation":F
    .restart local v11    # "newSize":F
    .restart local v12    # "noIcon":Z
    .restart local v17    # "shelfIconPosition":F
    .restart local v18    # "shelfIconSize":F
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 603
    :cond_c
    const/4 v10, 0x0

    .local v10, "isAppearing":Z
    goto/16 :goto_3
.end method

.method private setOpenedAmount(F)V
    .locals 9
    .param p1, "openedAmount"    # F

    .prologue
    const/4 v6, 0x0

    .line 685
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    .line 686
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    .line 687
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelFullWidth()Z

    move-result v6

    if-nez v6, :cond_1

    .line 689
    const/high16 p1, 0x3f800000    # 1.0f

    .line 691
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 692
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 693
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v7

    sub-int v4, v6, v7

    .line 695
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    .line 696
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v7

    int-to-float v7, v7

    .line 695
    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    float-to-int v5, v6

    .line 698
    .local v5, "width":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    .line 699
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v1

    .line 700
    .local v1, "hasOverflow":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    .line 701
    .local v0, "collapsedPadding":I
    if-nez v1, :cond_3

    .line 704
    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconSize()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 706
    :cond_3
    int-to-float v6, v0

    .line 707
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v7

    int-to-float v7, v7

    .line 706
    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    .line 709
    .local v2, "padding":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    .line 710
    int-to-float v6, v4

    .line 711
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v7

    int-to-float v7, v7

    .line 710
    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v3

    .line 712
    .local v3, "paddingStart":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    .line 713
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    .line 714
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getVisualOverflowAdaption()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVisualOverflowAdaption(F)V

    .line 715
    return-void
.end method

.method private updateContinuousClipping(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const v5, 0x7f0a00a0

    .line 360
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v0, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 361
    .local v0, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v2

    .line 362
    .local v2, "needsContinuousClipping":Z
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 363
    .local v1, "isContinuousClipping":Z
    :goto_0
    if-eqz v2, :cond_0

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 365
    new-instance v3, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 378
    .local v3, "predrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 379
    invoke-virtual {v0, v5, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 381
    .end local v3    # "predrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    :cond_0
    return-void

    .line 362
    .end local v1    # "isContinuousClipping":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isContinuousClipping":Z
    goto :goto_0
.end method

.method private updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F
    .locals 23
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "expandAmount"    # F
    .param p3, "scrolling"    # Z
    .param p4, "scrollingFast"    # Z
    .param p5, "expandingAnimated"    # Z
    .param p6, "isLastChild"    # Z

    .prologue
    .line 416
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v15, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 417
    .local v15, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v16

    .line 418
    .local v16, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-nez v16, :cond_0

    .line 419
    const/4 v2, 0x0

    return v2

    .line 423
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v22

    .line 424
    .local v22, "viewStart":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int v13, v2, v3

    .line 425
    .local v13, "fullHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v6, v2, v3

    .line 426
    .local v6, "iconTransformDistance":F
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3fc00000    # 1.5f

    move/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    mul-float/2addr v6, v2

    .line 427
    int-to-float v2, v13

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 428
    if-eqz p6, :cond_1

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v2

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    .line 430
    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 433
    :cond_1
    int-to-float v2, v13

    add-float v21, v22, v2

    .line 434
    .local v21, "viewEnd":F
    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v2

    if-nez v2, :cond_2

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 434
    if-eqz v2, :cond_2

    .line 435
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    xor-int/lit8 v2, v2, 0x1

    .line 434
    if-eqz v2, :cond_2

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getIntrinsicPadding()I

    move-result v2

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v3

    .line 443
    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    .line 445
    .local v19, "position":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    sub-int v18, v2, v3

    .line 446
    .local v18, "maxShelfStart":I
    move/from16 v0, v18

    int-to-float v2, v0

    cmpg-float v2, v19, v2

    if-gez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v19

    move/from16 v0, v18

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    cmpg-float v2, v2, v19

    if-gez v2, :cond_2

    .line 448
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    .line 449
    const/high16 v2, -0x80000000

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 451
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v2, v2, v19

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 451
    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    const/4 v11, 0x1

    .line 453
    .local v11, "forceInShelf":Z
    :goto_0
    if-nez v11, :cond_2

    .line 456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    .line 456
    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v2, v2, v19

    float-to-int v2, v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 463
    .end local v11    # "forceInShelf":Z
    .end local v18    # "maxShelfStart":I
    .end local v19    # "position":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v20

    .line 464
    .local v20, "shelfStart":F
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 465
    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 466
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    int-to-float v6, v2

    .line 468
    :cond_3
    const/4 v14, 0x1

    .line 469
    .local v14, "fullyInOrOut":Z
    cmpl-float v2, v21, v20

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 470
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v2

    if-nez v2, :cond_5

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 469
    if-eqz v2, :cond_9

    .line 472
    :cond_5
    cmpg-float v2, v22, v20

    if-gez v2, :cond_8

    .line 473
    sub-float v2, v20, v22

    int-to-float v3, v13

    div-float v12, v2, v3

    .line 474
    .local v12, "fullAmount":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 475
    sget-object v2, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v17

    .line 477
    .local v17, "interpolatedAmount":F
    move/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v12, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v17

    .line 479
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v2, v17

    .line 481
    .local v5, "fullTransitionAmount":F
    sub-float v2, v20, v22

    div-float v4, v2, v6

    .line 482
    .local v4, "iconTransitionAmount":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 483
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v2, v4

    .line 484
    const/4 v14, 0x0

    .line 493
    .end local v12    # "fullAmount":F
    .end local v17    # "interpolatedAmount":F
    :goto_1
    if-eqz v14, :cond_6

    xor-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_6

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v2, :cond_6

    .line 494
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    .line 495
    const/high16 v2, -0x80000000

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    :cond_6
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 497
    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V

    .line 499
    return v5

    .line 451
    .end local v4    # "iconTransitionAmount":F
    .end local v5    # "fullTransitionAmount":F
    .end local v14    # "fullyInOrOut":Z
    .end local v20    # "shelfStart":F
    .restart local v18    # "maxShelfStart":I
    .restart local v19    # "position":F
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "forceInShelf":Z
    goto/16 :goto_0

    .line 486
    .end local v11    # "forceInShelf":Z
    .end local v18    # "maxShelfStart":I
    .end local v19    # "position":F
    .restart local v14    # "fullyInOrOut":Z
    .restart local v20    # "shelfStart":F
    :cond_8
    const/high16 v5, 0x3f800000    # 1.0f

    .line 487
    .restart local v5    # "fullTransitionAmount":F
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "iconTransitionAmount":F
    goto :goto_1

    .line 490
    .end local v4    # "iconTransitionAmount":F
    .end local v5    # "fullTransitionAmount":F
    :cond_9
    const/4 v5, 0x0

    .line 491
    .restart local v5    # "fullTransitionAmount":F
    const/4 v4, 0x0

    .restart local v4    # "iconTransitionAmount":F
    goto :goto_1
.end method

.method private updateIconClipAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 8
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    .line 348
    .local v2, "maxTop":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v1, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 349
    .local v1, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationY()F

    move-result v6

    add-float v3, v5, v6

    .line 350
    .local v3, "shelfIconPosition":F
    cmpg-float v5, v3, v2

    if-gez v5, :cond_0

    .line 351
    sub-float v5, v2, v3

    float-to-int v4, v5

    .line 352
    .local v4, "top":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v0, v7, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 353
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 357
    .end local v0    # "clipRect":Landroid/graphics/Rect;
    .end local v4    # "top":I
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "iconTransitionAmount"    # F
    .param p3, "fullTransitionAmount"    # F
    .param p4, "iconTransformDistance"    # F
    .param p5, "scrolling"    # Z
    .param p6, "scrollingFast"    # Z
    .param p7, "expandingAnimated"    # Z
    .param p8, "isLastChild"    # Z

    .prologue
    .line 505
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v10, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 506
    .local v10, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v11

    .line 507
    .local v11, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-nez v11, :cond_0

    .line 508
    return-void

    .line 510
    :cond_0
    iget-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_a

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    .line 511
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_b

    const/high16 v7, 0x3f800000    # 1.0f

    .line 512
    .local v7, "clampedAmount":F
    :goto_1
    cmpl-float v1, v7, p3

    if-nez v1, :cond_2

    .line 513
    if-nez p6, :cond_1

    if-eqz p7, :cond_c

    :cond_1
    xor-int/lit8 v1, v9, 0x1

    :goto_2
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 514
    iget-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v1, :cond_d

    .line 515
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v1, :cond_e

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_e

    .line 514
    .end local p5    # "scrolling":Z
    :goto_3
    move/from16 v0, p5

    iput-boolean v0, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 516
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v1, :cond_f

    .line 517
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 516
    :goto_4
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 518
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 519
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    .line 518
    sub-float/2addr v1, v2

    .line 519
    const/4 v2, 0x0

    .line 518
    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 521
    :cond_2
    if-nez v9, :cond_4

    if-nez p6, :cond_3

    if-eqz p7, :cond_4

    .line 522
    iget-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 521
    if-eqz v1, :cond_4

    .line 522
    invoke-static {v10}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 521
    if-eqz v1, :cond_4

    .line 523
    :cond_3
    invoke-virtual {v11, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->cancelAnimations(Landroid/view/View;)V

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 525
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 527
    :cond_4
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 528
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 530
    :cond_5
    iget-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_6

    .line 531
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 534
    :cond_6
    if-nez p8, :cond_7

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_7

    iget-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v1, :cond_7

    .line 535
    iget-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 534
    if-eqz v1, :cond_11

    .line 536
    :cond_7
    move v3, p2

    .line 543
    .local v3, "transitionAmount":F
    :goto_6
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_8

    .line 544
    iget-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 543
    if-eqz v1, :cond_13

    .end local p3    # "fullTransitionAmount":F
    :cond_8
    :goto_7
    iput p3, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 547
    iput v7, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 548
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 549
    if-nez p8, :cond_9

    iget-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 548
    if-eqz v1, :cond_14

    .line 550
    :cond_9
    move v8, p2

    .line 552
    .local v8, "contentTransformationAmount":F
    :goto_8
    move/from16 v0, p8

    invoke-virtual {p1, v8, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    .line 554
    cmpl-float v1, v7, v3

    if-eqz v1, :cond_15

    const/4 v5, 0x1

    :goto_9
    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p4

    move/from16 v6, p8

    .line 553
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V

    .line 555
    return-void

    .line 510
    .end local v3    # "transitionAmount":F
    .end local v7    # "clampedAmount":F
    .end local v8    # "contentTransformationAmount":F
    .restart local p3    # "fullTransitionAmount":F
    .restart local p5    # "scrolling":Z
    :cond_a
    const/4 v9, 0x0

    .local v9, "forceInShelf":Z
    goto/16 :goto_0

    .line 511
    .end local v9    # "forceInShelf":Z
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "clampedAmount":F
    goto/16 :goto_1

    .line 513
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 514
    :cond_d
    const/16 p5, 0x1

    goto/16 :goto_3

    .line 515
    :cond_e
    const/16 p5, 0x0

    goto/16 :goto_3

    .line 516
    .end local p5    # "scrolling":Z
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 518
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 539
    :cond_11
    move v3, v7

    .line 540
    .restart local v3    # "transitionAmount":F
    iget v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_12

    .line 541
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    xor-int/lit8 v1, v1, 0x1

    .line 540
    :goto_a
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    goto :goto_6

    :cond_12
    const/4 v1, 0x0

    goto :goto_a

    :cond_13
    move p3, v3

    .line 546
    goto :goto_7

    .line 551
    .end local p3    # "fullTransitionAmount":F
    :cond_14
    const/4 v8, 0x0

    .restart local v8    # "contentTransformationAmount":F
    goto :goto_8

    .line 554
    :cond_15
    const/4 v5, 0x0

    goto :goto_9
.end method

.method private updateInteractiveness()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 756
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_0

    .line 757
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    xor-int/lit8 v0, v0, 0x1

    .line 756
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 758
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setClickable(Z)V

    .line 759
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setFocusable(Z)V

    .line 760
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setImportantForAccessibility(I)V

    .line 762
    return-void

    .line 756
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 761
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "notificationClipEnd"    # F

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 386
    .local v2, "viewEnd":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v3

    xor-int/lit8 v1, v3, 0x1

    .line 388
    :goto_0
    cmpl-float v3, v2, p2

    if-lez v3, :cond_4

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    xor-int/lit8 v3, v1, 0x1

    .line 388
    if-eqz v3, :cond_4

    .line 390
    :cond_1
    sub-float v3, v2, p2

    float-to-int v0, v3

    .line 391
    .local v0, "clipBottomAmount":I
    if-eqz v1, :cond_2

    .line 392
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 395
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    .line 399
    .end local v0    # "clipBottomAmount":I
    :goto_1
    return-void

    .line 386
    :cond_3
    const/4 v1, 0x0

    .local v1, "isPinned":Z
    goto :goto_0

    .line 397
    .end local v1    # "isPinned":Z
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    goto :goto_1
.end method

.method private updateRelativeOffset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLocationOnScreen([I)V

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLocationOnScreen([I)V

    .line 681
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 682
    return-void
.end method

.method private updateVibrationOnAnimation()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mVibrationOnAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTouchActive:Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVibrateOnAnimation(Z)V

    .line 115
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "hostLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 124
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 125
    return-void
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public getNotGoneIndex()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return v0
.end method

.method public getNotificationMergeSize()I
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public hasItemsInStableShelf()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    return v0
.end method

.method public hasNoContentHeight()Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method protected isInteractive()Z
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    return v0
.end method

.method protected needsOutline()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->needsOutline()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    .line 159
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 96
    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipChildren(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipToPadding(Z)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToActualHeight(Z)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipChildren(Z)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToPadding(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setShowAllIcons(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    const v1, 0x7f050038

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mVibrationOnAnimation:Z

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateVibrationOnAnimation()V

    .line 107
    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 108
    const-wide/16 v2, 0x2bc

    .line 107
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 109
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    .line 111
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 789
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 790
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v1, :cond_0

    .line 791
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 793
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 795
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 794
    const/16 v2, 0x10

    .line 793
    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 796
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 798
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 673
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 674
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 675
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 804
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 776
    if-nez p1, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 780
    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1
    .param p1, "collapsedIcons"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 746
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 165
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDark(ZZJ)V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 168
    return-void
.end method

.method public setDarkOffsetX(I)V
    .locals 1
    .param p1, "offsetX"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDarkOffsetX(I)V

    .line 808
    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 1
    .param p1, "shadowIntensity"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-nez v0, :cond_0

    .line 405
    const/4 p1, 0x0

    .line 407
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    .line 408
    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0
    .param p1, "maxLayoutHeight"    # I

    .prologue
    .line 718
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 719
    return-void
.end method

.method public setMaxShelfEnd(F)V
    .locals 0
    .param p1, "maxShelfEnd"    # F

    .prologue
    .line 770
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxShelfEnd:F

    .line 771
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .prologue
    .line 749
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    .line 750
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 751
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 753
    :cond_0
    return-void
.end method

.method public setTouchActive(Z)V
    .locals 0
    .param p1, "touchActive"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTouchActive:Z

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateVibrationOnAnimation()V

    .line 120
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .prologue
    .line 668
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateAppearance()V
    .locals 33

    .prologue
    .line 239
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v2, :cond_0

    .line 240
    return-void

    .line 243
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v30

    .line 245
    .local v30, "shelfStart":F
    const/16 v26, 0x0

    .line 246
    .local v26, "numViewsInShelf":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v22

    .line 247
    .local v22, "lastChild":Landroid/view/View;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 248
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v32

    mul-int/lit8 v32, v32, 0x2

    sub-int v2, v2, v32

    int-to-float v0, v2

    move/from16 v21, v0

    .line 249
    .local v21, "interpolationStart":F
    const/4 v4, 0x0

    .line 250
    .local v4, "expandAmount":F
    cmpl-float v2, v30, v21

    if-ltz v2, :cond_1

    .line 251
    sub-float v2, v30, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v4, v2, v32

    .line 252
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 255
    :cond_1
    const/16 v25, 0x0

    .line 256
    .local v25, "notificationIndex":I
    const/16 v23, 0x0

    .line 257
    .local v23, "notGoneIndex":I
    const/4 v14, 0x0

    .line 258
    .local v14, "colorOfViewBeforeLast":I
    const/4 v10, 0x0

    .line 259
    .local v10, "backgroundForceHidden":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-get0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 260
    const/4 v10, 0x1

    .line 262
    :cond_2
    const/4 v15, 0x0

    .line 263
    .local v15, "colorTwoBefore":I
    const/16 v28, 0x0

    .line 264
    .local v28, "previousColor":I
    const/16 v31, 0x0

    .line 265
    .local v31, "transitionAmount":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v16

    .line 266
    .local v16, "currentScrollVelocity":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v2, v16, v2

    if-gtz v2, :cond_b

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandingVelocity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v2, v2, v32

    if-lez v2, :cond_c

    const/4 v6, 0x1

    .line 269
    .local v6, "scrollingFast":Z
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_e

    const/4 v5, 0x1

    .line 270
    .local v5, "scrolling":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelTracking()Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    .line 272
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v11

    .line 273
    .local v11, "baseZHeight":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_15

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableView;

    .line 275
    .local v13, "child":Lcom/android/systemui/statusbar/ExpandableView;
    add-int/lit8 v25, v25, 0x1

    .line 276
    instance-of v2, v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_3

    .line 277
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v2

    const/16 v32, 0x8

    move/from16 v0, v32

    if-eq v2, v0, :cond_3

    move-object v3, v13

    .line 280
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 282
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v2

    int-to-float v0, v11

    move/from16 v32, v0

    cmpl-float v2, v2, v32

    if-lez v2, :cond_10

    const/4 v9, 0x1

    .line 283
    .local v9, "aboveShelf":Z
    :goto_4
    move-object/from16 v0, v22

    if-ne v13, v0, :cond_11

    const/4 v8, 0x1

    .line 284
    .local v8, "isLastChild":Z
    :goto_5
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v29

    .line 285
    .local v29, "rowTranslationY":F
    if-eqz v8, :cond_4

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableView;->isInShelf()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    :cond_4
    if-nez v9, :cond_5

    if-eqz v10, :cond_12

    .line 286
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v24, v30, v2

    .line 297
    .local v24, "notificationClipEnd":F
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    move-object/from16 v2, p0

    .line 298
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F

    move-result v20

    .line 300
    .local v20, "inShelfAmount":F
    add-float v26, v26, v20

    .line 301
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v27

    .line 302
    .local v27, "ownColorUntinted":I
    cmpl-float v2, v29, v30

    if-ltz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v2, v0, :cond_13

    .line 303
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 304
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setTintColor(I)V

    .line 305
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOverrideTintColor(IF)V

    .line 311
    :cond_7
    :goto_7
    if-eqz v8, :cond_14

    .line 312
    if-nez v14, :cond_8

    .line 313
    move/from16 v14, v27

    .line 315
    :cond_8
    move/from16 v0, v20

    invoke-virtual {v3, v14, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    .line 320
    :goto_8
    if-nez v23, :cond_9

    xor-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_a

    .line 321
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 323
    :cond_a
    add-int/lit8 v23, v23, 0x1

    .line 324
    move/from16 v28, v27

    goto/16 :goto_3

    .line 266
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "scrolling":Z
    .end local v6    # "scrollingFast":Z
    .end local v8    # "isLastChild":Z
    .end local v9    # "aboveShelf":Z
    .end local v11    # "baseZHeight":I
    .end local v13    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v20    # "inShelfAmount":F
    .end local v24    # "notificationClipEnd":F
    .end local v27    # "ownColorUntinted":I
    .end local v29    # "rowTranslationY":F
    :cond_b
    const/4 v6, 0x1

    .restart local v6    # "scrollingFast":Z
    goto/16 :goto_0

    .line 268
    .end local v6    # "scrollingFast":Z
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "scrollingFast":Z
    goto/16 :goto_0

    .line 267
    .end local v6    # "scrollingFast":Z
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "scrollingFast":Z
    goto/16 :goto_0

    .line 269
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "scrolling":Z
    goto/16 :goto_1

    .line 270
    :cond_f
    const/4 v7, 0x0

    .local v7, "expandingAnimated":Z
    goto/16 :goto_2

    .line 282
    .end local v7    # "expandingAnimated":Z
    .restart local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v11    # "baseZHeight":I
    .restart local v13    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_10
    const/4 v9, 0x0

    .restart local v9    # "aboveShelf":Z
    goto :goto_4

    .line 283
    :cond_11
    const/4 v8, 0x0

    .restart local v8    # "isLastChild":Z
    goto :goto_5

    .line 288
    .restart local v29    # "rowTranslationY":F
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v2, v2

    sub-float v24, v30, v2

    .line 289
    .restart local v24    # "notificationClipEnd":F
    sub-float v17, v24, v29

    .line 290
    .local v17, "height":F
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBelowSpeedBump()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_6

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v29

    .line 293
    move/from16 v0, v30

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v24

    goto/16 :goto_6

    .line 307
    .end local v17    # "height":F
    .restart local v20    # "inShelfAmount":F
    .restart local v27    # "ownColorUntinted":I
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v2, v0, :cond_7

    .line 308
    move/from16 v15, v28

    .line 309
    move/from16 v31, v20

    goto :goto_7

    .line 317
    :cond_14
    move/from16 v14, v27

    .line 318
    const/4 v2, 0x0

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    goto :goto_8

    .line 326
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v8    # "isLastChild":Z
    .end local v9    # "aboveShelf":Z
    .end local v13    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v20    # "inShelfAmount":F
    .end local v24    # "notificationClipEnd":F
    .end local v27    # "ownColorUntinted":I
    .end local v29    # "rowTranslationY":F
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 329
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_18

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 331
    .local v12, "child":Landroid/view/View;
    instance-of v2, v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_16

    .line 332
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v32, 0x8

    move/from16 v0, v32

    if-ne v2, v0, :cond_17

    .line 329
    :cond_16
    :goto_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    :cond_17
    move-object v3, v12

    .line 335
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 336
    .restart local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 337
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_a

    .line 339
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v12    # "child":Landroid/view/View;
    :cond_18
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v26, v2

    if-gez v2, :cond_1a

    const/16 v18, 0x1

    .line 340
    .local v18, "hideBackground":Z
    :goto_b
    if-nez v18, :cond_1b

    .end local v10    # "backgroundForceHidden":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 341
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v2, v0, :cond_19

    .line 342
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 344
    :cond_19
    return-void

    .line 339
    .end local v18    # "hideBackground":Z
    .restart local v10    # "backgroundForceHidden":Z
    :cond_1a
    const/16 v18, 0x0

    .restart local v18    # "hideBackground":Z
    goto :goto_b

    .line 340
    :cond_1b
    const/4 v10, 0x1

    goto :goto_c
.end method

.method public updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 11
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 186
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 187
    .local v0, "lastView":Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    .line 188
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v8

    add-float/2addr v5, v8

    .line 189
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v8

    .line 188
    add-float v2, v5, v8

    .line 190
    .local v2, "maxShelfEnd":F
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v1

    .line 193
    .local v1, "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v1, :cond_3

    .line 194
    iget v5, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v8, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v8, v8

    add-float v4, v5, v8

    .line 195
    .local v4, "viewEnd":F
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 201
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    .line 202
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v9, v9, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v9

    .line 202
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    .line 204
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v8

    int-to-float v8, v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->zTranslation:F

    .line 205
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v5, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v8

    sub-float/2addr v5, v8

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 205
    div-float v3, v5, v8

    .line 207
    .local v3, "openedAmount":F
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 208
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set2(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 209
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->clipTopAmount:I

    .line 210
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    int-to-float v5, v5

    iput v5, v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->alpha:F

    .line 211
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v7

    :goto_2
    iput-boolean v5, v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->belowSpeedBump:Z

    .line 212
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v10, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->shadowAlpha:F

    .line 213
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hideSensitive:Z

    .line 214
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationX()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->xTranslation:F

    .line 215
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 216
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v6, v6, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    iget v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    .line 219
    :cond_0
    if-eqz v1, :cond_1

    .line 220
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 223
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result v7

    .line 223
    :cond_2
    iput-boolean v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    .line 225
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set1(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 231
    .end local v1    # "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v2    # "maxShelfEnd":F
    .end local v3    # "openedAmount":F
    .end local v4    # "viewEnd":F
    :goto_3
    return-void

    .line 197
    .restart local v1    # "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .restart local v2    # "maxShelfEnd":F
    :cond_3
    move v4, v2

    .line 198
    .restart local v4    # "viewEnd":F
    const-string/jumbo v5, "NotificationShelf"

    const-string/jumbo v8, "lastViewState is null"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v3    # "openedAmount":F
    :cond_4
    move v5, v7

    .line 210
    goto :goto_1

    :cond_5
    move v5, v6

    .line 211
    goto :goto_2

    .line 227
    .end local v1    # "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v2    # "maxShelfEnd":F
    .end local v3    # "openedAmount":F
    .end local v4    # "viewEnd":F
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    .line 228
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/16 v7, 0x40

    iput v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->location:I

    .line 229
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    goto :goto_3
.end method
