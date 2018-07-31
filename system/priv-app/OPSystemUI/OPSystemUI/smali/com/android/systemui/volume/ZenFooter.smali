.class public Lcom/android/systemui/volume/ZenFooter;
.super Landroid/widget/LinearLayout;
.source "ZenFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenFooter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mIcon:Landroid/widget/ImageView;

.field private mSettingIcon:Landroid/widget/ImageView;

.field private mSummaryLine1:Landroid/widget/TextView;

.field private mSysui:Lcom/android/systemui/SystemUI;

.field private mVolumeDialog:Lcom/android/systemui/volume/VolumeDialogImpl;

.field private mZen:I

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private mZenIntroduction:Landroid/view/View;

.field private mZenIntroductionConfirm:Landroid/view/View;

.field private mZenIntroductionMessage:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/SystemUI;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSysui:Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/volume/VolumeDialogImpl;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mVolumeDialog:Lcom/android/systemui/volume/VolumeDialogImpl;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/ZenFooter;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/ZenFooter;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/ZenFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->confirmZenIntroduction()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/ZenFooter;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "zen"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setZen(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 236
    new-instance v1, Lcom/android/systemui/volume/ZenFooter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$1;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    .line 74
    new-instance v1, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 75
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 76
    .local v0, "layoutTransition":Landroid/animation/LayoutTransition;
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 78
    return-void
.end method

.method private confirmZenIntroduction()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DndConfirmedAlarmIntroduction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->updateIntroduction()V

    .line 173
    return-void
.end method

.method private isZenAlarms()Z
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenPriority()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 176
    iget v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 168
    return-void
.end method

.method private setZen(I)V
    .locals 2
    .param p1, "zen"    # I

    .prologue
    .line 156
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v0, p1, :cond_0

    return-void

    .line 157
    :cond_0
    iput p1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 159
    new-instance v0, Lcom/android/systemui/volume/-$Lambda$ui5EvSWNOuZ0Tj08Tw94S7U8DmA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/volume/-$Lambda$ui5EvSWNOuZ0Tj08Tw94S7U8DmA;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public init(Lcom/android/systemui/SystemUI;Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 2
    .param p1, "sysui"    # Lcom/android/systemui/SystemUI;
    .param p2, "volumeDialog"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 127
    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 128
    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 129
    iput-object p3, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 132
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mSysui:Lcom/android/systemui/SystemUI;

    .line 133
    iput-object p2, p0, Lcom/android/systemui/volume/ZenFooter;->mVolumeDialog:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSettingIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$3;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->updateIntroduction()V

    .line 149
    return-void
.end method

.method synthetic lambda$-com_android_systemui_volume_ZenFooter_6171()V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->updateIntroduction()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const-string/jumbo v0, "ZenFooter"

    const-string/jumbo v1, "disable setting button in ZenFooter because device is not provisioned!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSettingIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 256
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSettingIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 234
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 83
    const v0, 0x7f0a0359

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0a035a

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSettingIcon:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0a035b

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0a0373

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroduction:Landroid/view/View;

    .line 96
    const v0, 0x7f0a0376

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionMessage:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionMessage:Landroid/widget/TextView;

    const v2, 0x7f110606

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 98
    const v0, 0x7f0a0374

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionConfirm:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionConfirm:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$2;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroduction:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->shouldShowIntroduction()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    .line 112
    return-void
.end method

.method public shouldShowIntroduction()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0802c3

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "isVibrateWhenSlient":Z
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_vibrate_under_silent"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v0, 0x1

    .line 212
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1105a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "line1":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 217
    return-void

    .line 203
    .end local v0    # "isVibrateWhenSlient":Z
    .end local v1    # "line1":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0802c6

    goto :goto_0

    .line 204
    :cond_2
    const v2, 0x7f0802c4

    goto :goto_0

    .line 208
    .restart local v0    # "isVibrateWhenSlient":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 213
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1105a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "line1":Ljava/lang/String;
    goto :goto_2

    .end local v1    # "line1":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1105a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "line1":Ljava/lang/String;
    goto :goto_2

    .line 214
    .end local v1    # "line1":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1105a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "line1":Ljava/lang/String;
    goto :goto_2
.end method

.method public updateIntroduction()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroduction:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->shouldShowIntroduction()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 230
    return-void
.end method
