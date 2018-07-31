.class public Lcom/android/systemui/statusbar/phone/OPFacelockLightView;
.super Landroid/widget/RelativeLayout;
.source "OPFacelockLightView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mButton:Landroid/widget/Button;

.field private mClockView:Lcom/android/keyguard/clock/OPTextClock;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mDateView:Lcom/android/keyguard/clock/OPTextClock;

.field private mInnerView:Landroid/widget/LinearLayout;

.field private mNotify:Landroid/widget/TextView;

.field private mNotifyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const-string/jumbo v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-string/jumbo v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-string/jumbo v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const-string/jumbo v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->refreshTime()V

    .line 136
    return-void
.end method

.method private relayout()V
    .locals 6

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 104
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 106
    int-to-double v2, v0

    const-wide v4, 0x3fc645a1cac08312L    # 0.174

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    const v3, 0x7f0a00f1

    .line 87
    const v1, 0x7f0a00ed

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    .line 88
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotify:Landroid/widget/TextView;

    .line 89
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mConfig:Landroid/content/res/Configuration;

    .line 90
    const v1, 0x7f0a00eb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/clock/OPTextClock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    .line 91
    const v1, 0x7f0a00ec

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/clock/OPTextClock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotifyView:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f0a00f0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mButton:Landroid/widget/Button;

    .line 94
    const v1, 0x7f0a00ef

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    .local v0, "img":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 97
    const-string/jumbo v1, "OPFacelockLightView"

    const-string/jumbo v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->relayout()V

    .line 99
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotify:Landroid/widget/TextView;

    const v2, 0x7f110216

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mButton:Landroid/widget/Button;

    const v2, 0x7f11005c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 68
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mConfig:Landroid/content/res/Configuration;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 70
    invoke-virtual {v1, v4, v2}, Lcom/android/keyguard/clock/OPTextClock;->setTextSize(IF)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/clock/OPTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 74
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    const v2, 0x7f070076

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/OPTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07030f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 77
    invoke-virtual {v1, v4, v2}, Lcom/android/keyguard/clock/OPTextClock;->setTextSize(IF)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotifyView:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 79
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mButton:Landroid/widget/Button;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 81
    invoke-virtual {v1, v4, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 84
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 113
    if-nez p2, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->refresh()V

    .line 116
    :cond_0
    return-void
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public setClockY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 122
    return-void
.end method
