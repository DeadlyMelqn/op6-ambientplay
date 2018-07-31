.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionContinueView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

.field private useDefaultColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->useDefaultColor:Z

    .line 69
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->useDefaultColor:Z

    .line 57
    sget-object v1, Lcom/android/settings/R$styleable;->OPFingerPrintRecognitionContinueView:[I

    .line 56
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->useDefaultColor:Z

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->useDefaultColor:Z

    .line 41
    sget-object v1, Lcom/android/settings/R$styleable;->OPFingerPrintRecognitionContinueView:[I

    .line 40
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->useDefaultColor:Z

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 144
    const v2, 0x7f0400e4

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/SvgView;

    .line 145
    .local v0, "svgView":Lcom/oneplus/settings/opfinger/SvgView;
    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/SvgView;->setSvgResource(I)V

    .line 146
    return-object v0
.end method


# virtual methods
.method public doRecognition(IZ)V
    .locals 6
    .param p1, "percent"    # I
    .param p2, "success"    # Z

    .prologue
    const/16 v5, 0x5a

    const/16 v4, 0x55

    const/16 v3, 0x50

    const/16 v2, 0x4b

    const/16 v1, 0x46

    .line 213
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 214
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 216
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 217
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 218
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 219
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 221
    :cond_4
    if-lt p1, v4, :cond_5

    if-ge p1, v5, :cond_5

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 223
    :cond_5
    if-lt p1, v5, :cond_6

    const/16 v0, 0x5f

    if-ge p1, v0, :cond_6

    .line 224
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 225
    :cond_6
    const/16 v0, 0x5f

    if-lt p1, v0, :cond_7

    const/16 v0, 0x64

    if-ge p1, v0, :cond_7

    .line 226
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 227
    :cond_7
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0
.end method

.method public doRecognitionByCount(IIZ)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "percent"    # I
    .param p3, "success"    # Z

    .prologue
    const/16 v2, 0x64

    .line 238
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result v0

    .line 239
    .local v0, "startStep":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 240
    add-int/lit8 p1, p1, 0x2

    .line 242
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 253
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 256
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 261
    :pswitch_5
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 266
    :pswitch_6
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 271
    :pswitch_7
    if-lt p2, v2, :cond_4

    .line 272
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_3

    .line 276
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 288
    :pswitch_8
    if-lt p2, v2, :cond_6

    .line 289
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_5

    .line 290
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 292
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 296
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 302
    :pswitch_9
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto/16 :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 89
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const v0, 0x7f090020

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    .line 92
    const v0, 0x7f090021

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    .line 93
    const v0, 0x7f090022

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    .line 94
    const v0, 0x7f090023

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    .line 95
    const v0, 0x7f090024

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    .line 96
    const v0, 0x7f090025

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    .line 97
    const v0, 0x7f090026

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    .line 98
    const v0, 0x7f090027

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 125
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 140
    :cond_1
    return-void

    .line 100
    :cond_2
    const v0, 0x7f090031

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    .line 101
    const v0, 0x7f090032

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    .line 102
    const v0, 0x7f090033

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    .line 103
    const v0, 0x7f090034

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    goto :goto_0

    .line 110
    :cond_3
    const v0, 0x7f090012

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    .line 111
    const v0, 0x7f090013

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    .line 112
    const v0, 0x7f090014

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    .line 113
    const v0, 0x7f090015

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    .line 114
    const v0, 0x7f090016

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    .line 115
    const v0, 0x7f090017

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    .line 116
    const v0, 0x7f090028

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    .line 117
    const v0, 0x7f090035

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    .line 118
    const v0, 0x7f090036

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    .line 119
    const v0, 0x7f090037

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    goto/16 :goto_0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 76
    const v1, 0x7f0400e3

    .line 75
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    .line 78
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->useDefaultColor:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const v1, 0x7f02036a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 86
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const v1, 0x7f020369

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public resetWithAnimation()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 196
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 200
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 204
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 207
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 208
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 210
    :cond_1
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 184
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 186
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 189
    :cond_1
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 168
    :cond_1
    return-void
.end method

.method public setBackGround(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 315
    :cond_0
    return-void
.end method
