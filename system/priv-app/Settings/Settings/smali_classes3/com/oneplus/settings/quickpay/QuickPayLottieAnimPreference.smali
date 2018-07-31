.class public Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;
.super Landroid/support/v7/preference/Preference;
.source "QuickPayLottieAnimPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;,
        Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;
    }
.end annotation


# static fields
.field private static final MSG_PLAY:I


# instance fields
.field private animFile:Ljava/lang/String;

.field private anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

.field private img_quickpay_play:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;

.field private resid:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->startOrStopAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    const v0, 0x7f04011a

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->resid:I

    .line 34
    const-string/jumbo v0, "op_quickpay_instroduction_anim_enchilada_white.json"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->initViews(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const v0, 0x7f04011a

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->resid:I

    .line 34
    const-string/jumbo v0, "op_quickpay_instroduction_anim_enchilada_white.json"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->initViews(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const v0, 0x7f04011a

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->resid:I

    .line 34
    const-string/jumbo v0, "op_quickpay_instroduction_anim_enchilada_white.json"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->initViews(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mContext:Landroid/content/Context;

    .line 69
    iget v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setLayoutResource(I)V

    .line 70
    return-void
.end method

.method private setAnimFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "animFile"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private startAnim()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 138
    return-void
.end method

.method private startOrStopAnim()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->stopAnim()V

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->startAnim()V

    .line 133
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 75
    const v1, 0x7f0a0274

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    .line 76
    const v1, 0x7f0a0275

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 81
    .local v0, "blackModel":Z
    const-string/jumbo v1, "OP_FEATURE_SETTINGS_QUICKPAY_ANIM_FOR_ENCHILADA"

    invoke-static {v1}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v1, "op_quickpay_instroduction_anim_enchilada_black.json"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->animFile:Ljava/lang/String;

    new-instance v3, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$2;-><init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    .line 109
    return-void

    .line 85
    :cond_0
    const-string/jumbo v1, "op_quickpay_instroduction_anim_enchilada_white.json"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    if-eqz v0, :cond_2

    .line 89
    const-string/jumbo v1, "op_quickpay_instroduction_anim_dumpling_black.json"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    const-string/jumbo v1, "op_quickpay_instroduction_anim_dumpling_white.json"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    if-eqz v0, :cond_4

    .line 95
    const-string/jumbo v1, "op_quickpay_instroduction_anim_cheeseburger_black.json"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_4
    const-string/jumbo v1, "op_quickpay_instroduction_anim_cheeseburger_white.json"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;

    invoke-interface {v0, p1}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;->onPreferenceViewClick(Landroid/view/View;)V

    .line 158
    :cond_0
    return-void
.end method

.method public playOrStopAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    return-void
.end method

.method public setViewOnClick(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;

    .line 113
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->anim_quickpay_instructions:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :cond_1
    return-void
.end method
