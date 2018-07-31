.class public Lcom/oneplus/aod/clock/DateTimeView;
.super Landroid/widget/GridLayout;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/clock/DateTimeView$1;,
        Lcom/oneplus/aod/clock/DateTimeView$Patterns;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DateTimeView"


# instance fields
.field private mClockStyle:I

.field private mClockView:Lcom/oneplus/aod/clock/OPTextClock;

.field private mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

.field private mContext:Landroid/content/Context;

.field private mDateView:Lcom/oneplus/aod/clock/OPTextDate;

.field private mInfoCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/clock/DateTimeView;)Lcom/oneplus/aod/clock/ClockViewCtrl;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/clock/DateTimeView;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/aod/clock/DateTimeView;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/DateTimeView;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/clock/DateTimeView;->getClockCtrl()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/aod/clock/DateTimeView;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/DateTimeView;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/clock/DateTimeView;->refresh()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/aod/clock/DateTimeView;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/DateTimeView;
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/DateTimeView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/aod/clock/DateTimeView;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/DateTimeView;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/clock/DateTimeView;->updateOwnerInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/clock/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/clock/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lcom/oneplus/aod/clock/DateTimeView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/DateTimeView$1;-><init>(Lcom/oneplus/aod/clock/DateTimeView;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mInfoCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 125
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 126
    iput-object p1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    .line 127
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mInfoCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 128
    return-void
.end method

.method private getClockCtrl()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getClockViewCtrl()Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    .line 235
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/ClockViewCtrl;->setShowCurrentUserTime(Z)V

    .line 237
    :cond_0
    return-void
.end method

.method private getOwnerInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "info":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    .line 254
    .end local v1    # "info":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v3, "DateTimeView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getOwnerInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v1

    .line 248
    .restart local v1    # "info":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 249
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 248
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v2

    .line 250
    .local v2, "ownerInfoEnabled":Z
    if-eqz v2, :cond_0

    .line 251
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "info":Ljava/lang/String;
    goto :goto_0

    .line 256
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "ownerInfoEnabled":Z
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DateTimeView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-virtual {v1}, Lcom/oneplus/aod/clock/ClockViewCtrl;->getClockStyle()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->update(Landroid/content/Context;ZI)V

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/DateTimeView;->refreshTime()V

    .line 161
    return-void
.end method

.method private setEnableMarquee(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 133
    :cond_0
    return-void
.end method

.method private updateOwnerInfo()V
    .locals 3

    .prologue
    .line 164
    const-string/jumbo v1, "DateTimeView"

    const-string/jumbo v2, "updateOwnerInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0e004b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/oneplus/aod/clock/ClockViewCtrl;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "ownerInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 180
    const-string/jumbo v3, "DateTimeView"

    const-string/jumbo v4, "onAttachedToWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/oneplus/aod/clock/DateTimeView;->updateOwnerInfo()V

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/DateTimeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    .line 185
    .local v2, "topMargin":I
    iget v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v3, v4, :cond_2

    .line 186
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 195
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 196
    .local v0, "additionalMargin":I
    invoke-static {}, Lcom/oneplus/aod/Utils;->getDeviceTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "17819"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 197
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0123

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 203
    :goto_1
    add-int v3, v2, v0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 204
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/clock/DateTimeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mDateView:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-virtual {v3}, Lcom/oneplus/aod/clock/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 207
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0132

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 208
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mDateView:Lcom/oneplus/aod/clock/OPTextDate;

    invoke-virtual {v3, v1}, Lcom/oneplus/aod/clock/OPTextDate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    if-nez v3, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/oneplus/aod/clock/DateTimeView;->getClockCtrl()V

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-virtual {v3}, Lcom/oneplus/aod/clock/ClockViewCtrl;->updateClockVisibility()V

    .line 216
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 217
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-eq v3, v4, :cond_7

    .line 218
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 222
    :goto_2
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    return-void

    .line 187
    .end local v0    # "additionalMargin":I
    :cond_2
    iget v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-ne v3, v4, :cond_3

    .line 188
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 189
    :cond_3
    iget v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_ANALOG:I

    if-ne v3, v4, :cond_4

    .line 190
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0121

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_0

    .line 191
    :cond_4
    iget v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    if-ne v3, v4, :cond_0

    .line 192
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0122

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_0

    .line 198
    .restart local v0    # "additionalMargin":I
    :cond_5
    invoke-static {}, Lcom/oneplus/aod/Utils;->getDeviceTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "17801"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 199
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_1

    .line 201
    :cond_6
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0125

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_1

    .line 220
    :cond_7
    iget-object v3, p0, Lcom/oneplus/aod/clock/DateTimeView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    :goto_3
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_8
    const/4 v3, 0x3

    goto :goto_3
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 229
    const-string/jumbo v0, "DateTimeView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 138
    const-string/jumbo v0, "DateTimeView"

    const-string/jumbo v1, "onFinishInflate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/clock/DateTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/clock/OPTextDate;

    iput-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mDateView:Lcom/oneplus/aod/clock/OPTextDate;

    .line 140
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mDateView:Lcom/oneplus/aod/clock/OPTextDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/OPTextDate;->setShowCurrentUserTime(Z)V

    .line 141
    return-void
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 150
    const-string/jumbo v0, "DateTimeView"

    const-string/jumbo v1, "refreshTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mDateView:Lcom/oneplus/aod/clock/OPTextDate;

    sget-object v1, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/OPTextDate;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mDateView:Lcom/oneplus/aod/clock/OPTextDate;

    sget-object v1, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/OPTextDate;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    sget-object v1, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/ClockViewCtrl;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    sget-object v1, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/ClockViewCtrl;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public setClockStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/oneplus/aod/clock/DateTimeView;->mClockStyle:I

    .line 313
    return-void
.end method
