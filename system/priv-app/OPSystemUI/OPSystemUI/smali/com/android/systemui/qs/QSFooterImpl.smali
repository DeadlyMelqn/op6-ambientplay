.class public Lcom/android/systemui/qs/QSFooterImpl;
.super Landroid/widget/FrameLayout;
.source "QSFooterImpl.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAlarmStatusCollapsed:Landroid/view/View;

.field private mAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBtFooterHeight:I

.field private mDate:Landroid/view/View;

.field private mDateTimeGroup:Landroid/view/View;

.field protected mEdit:Landroid/view/View;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field private mIsGuestUser:Z

.field private mIsLandscape:Z

.field private mKeyguardShowing:Z

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEditIcon:Z

.field private mShowEmergencyCallsOnly:Z

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFooterImpl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSFooterImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFooterImpl;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSFooterImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEditIcon:Z

    .line 122
    return-void
.end method

.method private canShowEditIcon()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEditIcon:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mIsGuestUser:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 293
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 294
    .local v0, "animatorBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    const v1, 0x3f5c28f6    # 0.86f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->canShowEditIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 303
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_qs_QSFooterImpl_16468()V
    .locals 0

    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    const/4 v2, 0x1

    .line 487
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 489
    return-void
.end method

.method private updateAlarmVisibilities()V
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 364
    return-void

    .line 363
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateAnimator(I)V
    .locals 11
    .param p1, "width"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 208
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmShowing:Z

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 210
    .local v0, "translate":I
    :goto_0
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    new-array v4, v10, [F

    aput v7, v4, v8

    aput v6, v4, v9

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDateTimeGroup:Landroid/view/View;

    const-string/jumbo v3, "translationX"

    .line 210
    new-array v4, v10, [F

    .line 211
    aput v6, v4, v8

    int-to-float v5, v0

    aput v5, v4, v9

    .line 210
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatus:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    .line 210
    new-array v4, v10, [F

    .line 212
    aput v6, v4, v8

    aput v7, v4, v9

    .line 210
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 213
    new-instance v2, Lcom/android/systemui/qs/QSFooterImpl$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFooterImpl$1;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    .line 210
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 230
    .end local v0    # "translate":I
    :goto_1
    iget v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->setExpansion(F)V

    .line 231
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v0, v1

    .restart local v0    # "translate":I
    goto :goto_0

    .line 225
    .end local v0    # "translate":I
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 226
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 228
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDateTimeGroup:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method private updateListeners()V
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addCallback(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    .line 421
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 423
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeCallback(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    .line 428
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 429
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

.method private updateResources()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatus:Landroid/widget/TextView;

    const v1, 0x7f070354

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateSettingsAnimator()V

    .line 264
    return-void
.end method

.method private updateSettingsAnimator()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->isLayoutRtl()Z

    move-result v0

    .line 270
    .local v0, "isRtl":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/QSFooterImpl$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFooterImpl$2;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_1
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0
.end method

.method private updateThemeColor()V
    .locals 3

    .prologue
    .line 183
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 184
    .local v0, "textColor":I
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatusCollapsed:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 190
    return-void
.end method

.method private updateVisibilities()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 391
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateAlarmVisibilities()V

    .line 400
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->canShowEditIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 401
    goto :goto_0

    :cond_1
    move v2, v1

    .line 410
    goto :goto_1

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_qs_QSFooterImpl_14158()V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateVisibilities()V

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setClickable(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooterImpl_5154(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 138
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooterImpl_5253(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooterImpl_6705(Landroid/view/View;IIIIIIII)V
    .locals 1
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
    .line 172
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->updateAnimator(I)V

    return-void
.end method

.method public notifyBtFooterChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 529
    .local v0, "footerLP":Landroid/widget/FrameLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 530
    iget v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mBtFooterHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 443
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v1, :cond_3

    .line 444
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v2, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo;->$INST$0:Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 447
    return-void

    .line 449
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    .line 450
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x196

    .line 449
    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 471
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->startSettingsActivity()V

    .line 484
    :cond_1
    :goto_1
    return-void

    .line 451
    :cond_2
    const/16 v1, 0x1ea

    goto :goto_0

    .line 473
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDateTimeGroup:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 474
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    .line 475
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 474
    :goto_2
    const/16 v4, 0x3a2

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 476
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 477
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 478
    .local v0, "showIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_1

    .end local v0    # "showIntent":Landroid/app/PendingIntent;
    :cond_4
    move v2, v3

    .line 475
    goto :goto_2

    .line 480
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    .line 481
    const-string/jumbo v4, "android.intent.action.SHOW_ALARMS"

    .line 480
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 237
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mIsLandscape:Z

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 240
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEditIcon:Z

    .line 245
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->canShowEditIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    .line 252
    return-void

    :cond_0
    move v0, v2

    .line 237
    goto :goto_0

    .line 242
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEditIcon:Z

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setListening(Z)V

    .line 359
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 360
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1020003

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->canShowEditIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_0
    const v1, 0x7f0a00ac

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDateTimeGroup:Landroid/view/View;

    .line 144
    const v1, 0x7f0a00ab

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDate:Landroid/view/View;

    .line 148
    const v1, 0x7f0a02cf

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 149
    const v1, 0x7f0a02d0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    .line 150
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v1, 0x7f0a0034

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatusCollapsed:Landroid/view/View;

    .line 153
    const v1, 0x7f0a0033

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatus:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDateTimeGroup:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f0a01e9

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 157
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v2, 0x7f0a01e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 161
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    .line 168
    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 169
    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 170
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 171
    new-instance v1, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateThemeColor()V

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    const v2, 0x7f0702d0

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mBtFooterHeight:I

    .line 179
    return-void
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 7
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const v6, 0x7f110099

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "alarmString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Object;

    .line 327
    aput-object v0, v5, v2

    .line 326
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Object;

    .line 329
    aput-object v0, v5, v2

    .line 328
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 331
    .end local v0    # "alarmString":Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmShowing:Z

    if-eqz p1, :cond_2

    move v3, v1

    :goto_0
    if-eq v4, v3, :cond_1

    .line 332
    if-eqz p1, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmShowing:Z

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->updateAnimator(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 336
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 331
    goto :goto_0

    :cond_3
    move v1, v2

    .line 332
    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    .line 258
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mIsGuestUser:Z

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 493
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 494
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 495
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEmergencyCallsOnly:Z

    .line 496
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 500
    :cond_0
    return-void

    .line 493
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 316
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 318
    return-void
.end method

.method public setExpansion(F)V
    .locals 2
    .param p1, "headerExpansionFraction"    # F

    .prologue
    .line 340
    iput p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    .line 341
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 343
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 342
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateAlarmVisibilities()V

    .line 353
    return-void

    :cond_3
    move v0, p1

    .line 343
    goto :goto_0
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mKeyguardShowing:Z

    .line 310
    iget v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setExpansion(F)V

    .line 311
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateListeners()V

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 376
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 436
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 439
    :cond_0
    return-void
.end method

.method public updateEverything()V
    .locals 2

    .prologue
    .line 384
    new-instance v0, Lcom/android/systemui/qs/-$Lambda$aQqB1EGWxYUnP1gzYBQy1EITKlo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/-$Lambda$aQqB1EGWxYUnP1gzYBQy1EITKlo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->post(Ljava/lang/Runnable;)Z

    .line 388
    return-void
.end method
