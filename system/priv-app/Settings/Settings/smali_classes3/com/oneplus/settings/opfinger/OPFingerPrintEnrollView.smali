.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;
.super Landroid/widget/RelativeLayout;
.source "OPFingerPrintEnrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mLayoutResId:I

.field private mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

.field private mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsWarning:Landroid/widget/TextView;

.field private mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

.field private mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

.field public mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

.field private mPercent:I

.field private mView:Landroid/view/View;

.field private useDefaultColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mHandler:Landroid/os/Handler;

    .line 46
    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mPercent:I

    .line 48
    const v0, 0x7f0400e8

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mLayoutResId:I

    .line 51
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->useDefaultColor:Z

    .line 57
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mHandler:Landroid/os/Handler;

    .line 46
    iput v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mPercent:I

    .line 48
    const v1, 0x7f0400e8

    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mLayoutResId:I

    .line 51
    iput-boolean v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->useDefaultColor:Z

    .line 66
    sget-object v1, Lcom/android/settings/R$styleable;->OPFingerPrintEnrollView:[I

    .line 65
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->useDefaultColor:Z

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mHandler:Landroid/os/Handler;

    .line 46
    iput v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mPercent:I

    .line 48
    const v1, 0x7f0400e8

    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mLayoutResId:I

    .line 51
    iput-boolean v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->useDefaultColor:Z

    .line 84
    sget-object v1, Lcom/android/settings/R$styleable;->OPFingerPrintEnrollView:[I

    .line 83
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->useDefaultColor:Z

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mContext:Landroid/content/Context;

    .line 117
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->useDefaultColor:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 119
    const v1, 0x7f0400e9

    .line 118
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 127
    const v1, 0x7f0a021d

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 131
    const v1, 0x7f0a021c

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 135
    const v1, 0x7f0a0219

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 137
    const v1, 0x7f0a021b

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 139
    const v1, 0x7f0a021e

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 141
    const v1, 0x7f0a021f

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    .line 143
    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void

    .line 121
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    const v1, 0x7f0400e8

    .line 121
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public doEnroll(IIZ)V
    .locals 4
    .param p1, "totalStep"    # I
    .param p2, "remainingStep"    # I
    .param p3, "success"    # Z

    .prologue
    const/4 v3, 0x0

    .line 284
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doEnroll--1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doEnroll--2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x7

    if-lt p2, v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0, p2, v3, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, p2, v3, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    goto :goto_0
.end method

.method public doRecognition(IIZ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "percent"    # I
    .param p3, "success"    # Z

    .prologue
    .line 300
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result v0

    .line 301
    .local v0, "scaleAnimationStep":I
    if-gt p1, v0, :cond_1

    .line 302
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    goto :goto_0
.end method

.method public enrollFailed()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 337
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 338
    const v1, 0x7f0f0321

    .line 337
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 339
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 340
    const v1, 0x7f0f0322

    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 347
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 349
    :cond_1
    return-void
.end method

.method public getWarningTipsView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideHeaderView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 102
    const v4, 0x7f0a0218

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 103
    .local v3, "titleBgView":Landroid/widget/ImageView;
    const v4, 0x7f0a021a

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 104
    .local v2, "titleBgShadowView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 105
    const v5, 0x7f0a0219

    .line 104
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, "fingerInputTipsTitle":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 107
    const v5, 0x7f0a021b

    .line 106
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, "fingerInputTipsSubTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public hideWarningTips()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public resetTextAndBtn()V
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 317
    const v2, 0x7f0f022e

    .line 316
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    const v0, 0x7f0f0450

    .line 326
    .local v0, "stringId":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 328
    .end local v0    # "stringId":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 331
    :cond_2
    return-void

    .line 324
    :cond_3
    const v0, 0x7f0f022f

    .restart local v0    # "stringId":I
    goto :goto_0
.end method

.method public resetWithAnimation()V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetTextAndBtn()V

    .line 373
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithAnimation()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 379
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 381
    :cond_1
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetTextAndBtn()V

    .line 362
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 367
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 369
    :cond_1
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->revealWithoutAnimation()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->revealWithoutAnimation()V

    .line 358
    :cond_1
    return-void
.end method

.method public setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

    .line 163
    return-void
.end method

.method public setSubTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "subTitleView"    # Landroid/widget/TextView;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method public setTipsCompletedContent()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 236
    const v1, 0x7f0f0232

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 238
    const v1, 0x7f0f0233

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 240
    return-void
.end method

.method public setTipsContinueContent()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 247
    const v1, 0x7f0f031d

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 249
    const v1, 0x7f0f031e

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 251
    return-void
.end method

.method public setTipsProgressContent(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "percent"    # I

    .prologue
    const/16 v2, 0x8

    .line 166
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 168
    const v1, 0x7f0f031d

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 170
    const v1, 0x7f0f031e

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 185
    :goto_0
    return-void

    .line 172
    :cond_0
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 174
    const v1, 0x7f0f031f

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 176
    const v1, 0x7f0f0320

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 180
    const v1, 0x7f0f0230

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 182
    const v1, 0x7f0f0231

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTipsStatusContent(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 229
    :goto_0
    :pswitch_0
    return-void

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 216
    const v1, 0x7f0f022e

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 218
    const v1, 0x7f0f022f

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 222
    const v1, 0x7f0f031b

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 224
    const v1, 0x7f0f031c

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method public showContinueView()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 257
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 258
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 259
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 260
    .local v9, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 261
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 263
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 266
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 267
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 270
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, v10}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->start()V

    .line 281
    return-void
.end method

.method public showWarningTips(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "warningMsg"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :cond_0
    return-void
.end method
