.class public Lcom/android/systemui/plugin/PreventModeView;
.super Landroid/widget/RelativeLayout;
.source "PreventModeView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mInnerView:Landroid/widget/LinearLayout;

.field private mPhone:Landroid/widget/ImageView;

.field private mRippleView:Lcom/android/systemui/plugin/RippleView;

.field private mTag:Landroid/widget/TextView;

.field private mTag2:Landroid/widget/TextView;

.field private mTagNum1:Landroid/widget/TextView;

.field private mTagNum2:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-string/jumbo v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string/jumbo v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string/jumbo v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const-string/jumbo v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private getDisplayHeight()I
    .locals 4

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 130
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 131
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    return v2
.end method

.method private playRippleAniamor()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->prepare()V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->startRipple()V

    .line 113
    return-void
.end method

.method private relayout()V
    .locals 6

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->getDisplayHeight()I

    move-result v0

    .line 104
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

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
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 81
    const v1, 0x7f0a0259

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    .line 82
    const v1, 0x7f0a025c

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0a025a

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mPhone:Landroid/widget/ImageView;

    .line 84
    const v1, 0x7f0a025d

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0a025e

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0a025f

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag2:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0a0260

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mTagNum1:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0a0261

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mTagNum2:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0a028a

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugin/RippleView;

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    .line 90
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mConfig:Landroid/content/res/Configuration;

    .line 92
    invoke-static {}, Lcom/android/systemui/util/Utils;->getDeviceTag()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "deviceTag":Ljava/lang/String;
    const-string/jumbo v1, "17801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mPhone:Landroid/widget/ImageView;

    const v2, 0x7f0803b5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->relayout()V

    .line 100
    return-void

    .line 95
    :cond_1
    const-string/jumbo v1, "17819"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mPhone:Landroid/widget/ImageView;

    const v2, 0x7f0803b6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1103f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    const v1, 0x7f1103fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    const v1, 0x7f1103fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag2:Landroid/widget/TextView;

    const v1, 0x7f1103fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mConfig:Landroid/content/res/Configuration;

    .line 78
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 120
    if-eqz p2, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->stopRipple()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->playRippleAniamor()V

    goto :goto_0
.end method
