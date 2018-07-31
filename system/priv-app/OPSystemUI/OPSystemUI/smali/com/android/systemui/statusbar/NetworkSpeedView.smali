.class public Lcom/android/systemui/statusbar/NetworkSpeedView;
.super Landroid/widget/LinearLayout;
.source "NetworkSpeedView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mColor:I

.field private mDarkIconColor:I

.field private mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mDarkIntensity:F

.field private mDensity:I

.field private mFontScale:F

.field private mIconTint:I

.field private mIsStatusBar:Z

.field private mNetSpeedColor:I

.field private mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

.field private mOrientation:I

.field private mSpeedView:Landroid/widget/TextView;

.field private final mTintArea:Landroid/graphics/Rect;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-string/jumbo v0, "NetworkSpeedView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIconTint:I

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTintArea:Landroid/graphics/Rect;

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mFontScale:F

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsStatusBar:Z

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mOrientation:I

    .line 63
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11052f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsStatusBar:Z

    .line 68
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    goto :goto_0
.end method

.method private updateSpeedViewSize()V
    .locals 4

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070415

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mFontScale:F

    mul-float v0, v2, v3

    .line 179
    .local v0, "speedsize":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070488

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mFontScale:F

    mul-float v1, v2, v3

    .line 180
    .local v1, "unitsize":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 111
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;->addCallback(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 159
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 160
    .local v2, "fontScale":F
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 161
    .local v1, "density":I
    iget v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mFontScale:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDensity:I

    if-eq v3, v1, :cond_1

    .line 162
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mFontScale:F

    .line 163
    iput v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDensity:I

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateSpeedViewSize()V

    .line 168
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_2

    .line 169
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mOrientation:I

    .line 170
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsStatusBar:Z

    if-eqz v3, :cond_2

    .line 171
    iget v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    :cond_2
    return-void

    .line 171
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mVisibility:I

    goto :goto_0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 44
    float-to-int v0, p2

    iget v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIconColor:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetSpeedColor:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 124
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;->removeCallback(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 81
    const v1, 0x7f0a01f7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    const/4 v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateViews(F)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 84
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mFontScale:F

    .line 85
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDensity:I

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateSpeedViewSize()V

    .line 87
    return-void
.end method

.method public onSpeedChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onSpeedShow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 130
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibility(I)V

    .line 131
    return-void

    .line 130
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onTintUpdate()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTintArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIconTint:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mColor:I

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public readRenovateMods()V
    .locals 1

    sget v0, Lcom/android/mwilky/Renovate;->mNetSpeedColorOP:I

    iput v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetSpeedColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIconColor:I

    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F
    .param p3, "tintArea"    # Landroid/graphics/Rect;

    .prologue
    .line 135
    invoke-static {p3, p0, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 137
    .local v1, "color":I
    iget v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIconTint:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIntensity:F

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 140
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIconTint:I

    .line 141
    iput p2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIntensity:F

    .line 142
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 143
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->onTintUpdate()V

    .line 146
    :cond_1
    return-void

    .line 138
    .end local v0    # "changed":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 137
    if-nez v2, :cond_0

    .line 138
    iget v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mColor:I

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mVisibility:I

    .line 193
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsStatusBar:Z

    if-eqz v0, :cond_0

    .line 194
    iget v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 p1, 0x8

    .line 197
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    return-void

    .line 194
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mVisibility:I

    goto :goto_0
.end method

.method public updateViews(F)V
    .locals 2

    float-to-int v0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->readRenovateMods()V

    iget v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDarkIconColor:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetSpeedColor:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mSpeedView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    return-void
.end method
