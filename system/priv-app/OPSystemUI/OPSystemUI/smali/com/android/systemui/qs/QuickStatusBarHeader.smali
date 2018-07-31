.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "QuickStatusBarHeader.java"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field mBattery:Lcom/android/systemui/BatteryMeterView;

.field mBatteryLeft:Lcom/android/systemui/BatteryMeterViewLeft;

.field private mBtFooterHeight:F

.field private mCarrierText:Landroid/widget/TextView;

.field private mExpanded:Z

.field private mHasBTFooter:Z

.field public mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHeaderView:Landroid/view/View;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mListening:Z

.field private mNetworkSpeedText:Landroid/widget/TextView;

.field private mOrientation:I

.field private mPanelMarginTop:I

.field private mPanelMarginTopCustom:I

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mSignalClusterView:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mStatusIcons:Landroid/widget/LinearLayout;

.field private mSystemIcons:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasBTFooter:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBtFooterHeight:F

    .line 83
    invoke-static {}, Lcom/android/systemui/util/Utils;->a()V

    return-void
.end method

.method private updateResources()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method private updateThemeColor()V
    .locals 3

    .prologue
    .line 164
    sget v2, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    invoke-static {v2}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 165
    .local v1, "textColor":I
    sget v2, Lcom/android/systemui/util/ThemeColorUtils;->QS_BATTERY_BACKGROUND:I

    invoke-static {v2}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 167
    .local v0, "batteryBackgroundColor":I
    const v2, 0x7f0a030d

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    const v2, 0x7f0a003a

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBattery:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBattery:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/BatteryMeterView;->setIconTint(II)V

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryLeft:Lcom/android/systemui/BatteryMeterViewLeft;

    invoke-virtual {v2, v1}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryLeft:Lcom/android/systemui/BatteryMeterViewLeft;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/BatteryMeterView;->setIconTint(II)V

    .line 174
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSignalClusterView:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconTint(I)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 188
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNetworkSpeedText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCarrierText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_qs_QuickStatusBarHeader_11246()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setClickable(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_0

    .line 207
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mOrientation:I

    .line 209
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 211
    .local v1, "portrait":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIcons:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickQSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 213
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPanelMarginTopCustom:I

    :goto_2
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 214
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 216
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_4

    .line 217
    const v2, 0x105016a

    .line 216
    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 221
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "portrait":Z
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasBTFooter:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeight(Z)V

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 224
    return-void

    .line 210
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "portrait":Z
    goto :goto_0

    .line 211
    :cond_2
    const/16 v2, 0x8

    goto :goto_1

    .line 213
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPanelMarginTop:I

    goto :goto_2

    .line 218
    :cond_4
    const v2, 0x7f070388

    goto :goto_3
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 278
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 279
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 90
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0a0279

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 110
    const v3, 0x7f0a0058

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/BatteryMeterView;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBattery:Lcom/android/systemui/BatteryMeterView;

    const-string v0, "battery_left"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/BatteryMeterViewLeft;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryLeft:Lcom/android/systemui/BatteryMeterViewLeft;

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryLeft:Lcom/android/systemui/BatteryMeterViewLeft;

    invoke-virtual {v3, v5}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 111
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBattery:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mOrientation:I

    .line 115
    const v3, 0x7f0a0274

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderView:Landroid/view/View;

    .line 116
    const v3, 0x7f0a0278

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIcons:Landroid/view/View;

    .line 118
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070393

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPanelMarginTop:I

    .line 119
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070394

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPanelMarginTopCustom:I

    .line 121
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 122
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mOrientation:I

    if-ne v3, v5, :cond_1

    const/4 v1, 0x1

    .line 123
    .local v1, "portrait":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIcons:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const v3, 0x7f0a02d9

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSignalClusterView:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 125
    const v3, 0x7f0a02ee

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 126
    const v3, 0x7f0a01f7

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNetworkSpeedText:Landroid/widget/TextView;

    .line 127
    const v3, 0x7f0a026d

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCarrierText:Landroid/widget/TextView;

    .line 134
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 135
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIcons:Landroid/widget/LinearLayout;

    const-string/jumbo v5, "qs"

    .line 134
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 136
    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 138
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickQSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 139
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_3

    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPanelMarginTopCustom:I

    :goto_2
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 141
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v1, :cond_4

    .line 143
    const v3, 0x105016a

    .line 142
    :goto_3
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 145
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v1, :cond_5

    .line 146
    const v3, 0x7f070387

    .line 145
    :goto_4
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 148
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 149
    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070256

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 148
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 157
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "portrait":Z
    :cond_0
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateThemeColor()V

    .line 159
    const-class v3, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 160
    return-void

    .line 122
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "portrait":Z
    goto/16 :goto_0

    .line 123
    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_1

    .line 139
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPanelMarginTop:I

    goto :goto_2

    .line 144
    :cond_4
    const v3, 0x7f070388

    goto :goto_3

    .line 147
    :cond_5
    const v3, 0x7f070386

    goto :goto_4

    .line 151
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "portrait":Z
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 230
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 1
    .param p1, "qsPanelCallback"    # Lcom/android/systemui/qs/QSDetail$Callback;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 307
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 266
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateEverything()V

    .line 269
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    .line 286
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    .line 287
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 295
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setupHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 296
    return-void
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 303
    return-void
.end method

.method public updateEverything()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/android/systemui/qs/-$Lambda$aQqB1EGWxYUnP1gzYBQy1EITKlo;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/-$Lambda$aQqB1EGWxYUnP1gzYBQy1EITKlo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method public updateHeight(Z)V
    .locals 5
    .param p1, "hasBtFooter"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasBTFooter:Z

    .line 239
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 240
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07042d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 243
    .local v1, "header_height":F
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBtFooterHeight:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBtFooterHeight:F

    .line 247
    :cond_0
    if-eqz p1, :cond_2

    .line 248
    iget v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBtFooterHeight:F

    .line 251
    .local v0, "footer_height":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 252
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    add-float v3, v1, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 253
    return-void

    .line 241
    .end local v0    # "footer_height":F
    .end local v1    # "header_height":F
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07042c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .restart local v1    # "header_height":F
    goto :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "footer_height":F
    goto :goto_1
.end method
