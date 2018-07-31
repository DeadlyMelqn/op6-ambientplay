.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardStatusView$1;,
        Lcom/android/keyguard/KeyguardStatusView$Patterns;
    }
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mBatteryDoze:Lcom/android/systemui/ChargingView;

.field private mClockContainer:Landroid/view/ViewGroup;

.field private mClockView:Lcom/android/keyguard/clock/OPTextClock;

.field private mDarkAmount:F

.field private mDateTextColor:I

.field private mDateView:Lcom/android/keyguard/clock/OPTextClock;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardStatusArea:Landroid/view/View;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPendingMarqueeStart:Ljava/lang/Runnable;

.field private mPulsing:Z

.field private mTextColor:I

.field private mVisibleInDoze:[Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardStatusView;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardStatusView;
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 83
    new-instance v0, Lcom/android/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 126
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 127
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 129
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method public static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    const-string/jumbo v2, ""

    return-object v2

    .line 265
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-static {p0, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    const-string/jumbo v1, "EHm"

    .line 269
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 268
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "Ehma"

    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0
.end method

.method private getOwnerInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "info":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 310
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 304
    .restart local v0    # "info":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 305
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 304
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    .line 306
    .local v1, "ownerInfoEnabled":Z
    if-eqz v1, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "info":Ljava/lang/String;
    goto :goto_0
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;Z)V

    .line 228
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 231
    return-void
.end method

.method private setEnableMarquee(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string/jumbo v1, "KeyguardStatusView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Schedule setEnableMarquee: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "Enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/android/keyguard/-$Lambda$ixCe0YZjSUKZcgBoacOfgGDmm1A;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$Lambda$ixCe0YZjSUKZcgBoacOfgGDmm1A;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_0
    :goto_1
    return-void

    .line 135
    :cond_1
    const-string/jumbo v0, "Disable"

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iput-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    .line 149
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    goto :goto_1
.end method

.method private setEnableMarqueeImpl(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 154
    const-string/jumbo v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "Enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " transport text marquee"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 157
    :cond_1
    return-void

    .line 154
    :cond_2
    const-string/jumbo v0, "Disable"

    goto :goto_0
.end method

.method private updateDozeVisibleViews()V
    .locals 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 398
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mVisibleInDoze:[Landroid/view/View;

    const/4 v1, 0x0

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 399
    .local v0, "child":Landroid/view/View;
    iget v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    if-eqz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 398
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 399
    goto :goto_1

    .line 401
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateOwnerInfo()V
    .locals 3

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "ownerInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getClockBottom()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method public getClockTextSize()F
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/OPTextClock;->getTextSize()F

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardStatusView_4487()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 288
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v5, 0x7f07030f

    const/4 v4, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    .line 196
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 195
    invoke-virtual {v1, v4, v2}, Lcom/android/keyguard/clock/OPTextClock;->setTextSize(IF)V

    .line 198
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/clock/OPTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 199
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    const v2, 0x7f070076

    .line 199
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 201
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/OPTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    .line 203
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 202
    invoke-virtual {v1, v4, v2}, Lcom/android/keyguard/clock/OPTextClock;->setTextSize(IF)V

    .line 205
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 207
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 206
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 294
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 162
    const v1, 0x7f0a015b

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockContainer:Landroid/view/ViewGroup;

    .line 166
    const v1, 0x7f0a00ae

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/clock/OPTextClock;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    .line 167
    const v1, 0x7f0a008b

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/clock/OPTextClock;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->setViewsVisibility()V

    .line 168
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/clock/OPTextClock;->setShowCurrentUserTime(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;->isNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    new-instance v2, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/clock/OPTextClock;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 172
    :cond_0
    const v1, 0x7f0a0239

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 173
    const v1, 0x7f0a0059

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ChargingView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mBatteryDoze:Lcom/android/systemui/ChargingView;

    .line 174
    const v1, 0x7f0a016d

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardStatusArea:Landroid/view/View;

    .line 175
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mBatteryDoze:Lcom/android/systemui/ChargingView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardStatusArea:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mVisibleInDoze:[Landroid/view/View;

    .line 176
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/clock/OPTextClock;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/clock/OPTextClock;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateTextColor:I

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 182
    .local v0, "shouldMarquee":Z
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 183
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    .line 184
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/clock/OPTextClock;->setElegantTextHeight(Z)V

    .line 189
    return-void
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method public setDark(F)V
    .locals 8
    .param p1, "darkAmount"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 361
    iget v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 366
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 367
    .local v2, "dark":Z
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 368
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 369
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 370
    .local v1, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mVisibleInDoze:[Landroid/view/View;

    invoke-static {v4, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 366
    .end local v0    # "N":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "dark":Z
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "dark":Z
    goto :goto_0

    .line 373
    .restart local v0    # "N":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    move v4, v5

    :goto_3
    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_3

    .line 375
    .end local v1    # "child":Landroid/view/View;
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 376
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    :goto_4
    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 379
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDozeVisibleViews()V

    .line 380
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mBatteryDoze:Lcom/android/systemui/ChargingView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/ChargingView;->setDark(Z)V

    .line 381
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    iget v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    invoke-static {v5, v7, p1}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/clock/OPTextClock;->setTextColor(I)V

    .line 382
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    iget v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateTextColor:I

    invoke-static {v5, v7, p1}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/clock/OPTextClock;->setTextColor(I)V

    .line 390
    return-void

    :cond_6
    move v5, v6

    .line 376
    goto :goto_4
.end method

.method public setPulsing(Z)V
    .locals 0
    .param p1, "pulsing"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    .line 394
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDozeVisibleViews()V

    .line 395
    return-void
.end method

.method public setViewsVisibility()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/systemui/util/Utils;->a()V

    sget-boolean v0, Lcom/android/mwilky/Renovate;->mHideLockscreenClock:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    if-nez v0, :cond_0

    const v2, 0x0

    goto :goto_0

    :cond_0
    const v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/keyguard/clock/OPTextClock;->setVisibility(I)V

    invoke-virtual {v3, v2}, Lcom/android/keyguard/clock/OPTextClock;->setVisibility(I)V

    return-void
.end method
