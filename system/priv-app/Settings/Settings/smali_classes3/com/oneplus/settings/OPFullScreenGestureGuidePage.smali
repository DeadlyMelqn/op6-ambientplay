.class public Lcom/oneplus/settings/OPFullScreenGestureGuidePage;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFullScreenGestureGuidePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPFullScreenGestureGuidePage$1;,
        Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;,
        Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;
    }
.end annotation


# static fields
.field private static final GUIDE_STATE_BACK:I = 0x3

.field private static final GUIDE_STATE_DEFAULT:I = -0x1

.field private static final GUIDE_STATE_HOME:I = 0x1

.field private static final GUIDE_STATE_MUILT_TASK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OPFullScreenGestureGuidePage"


# instance fields
.field private mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mCanBack:Z

.field private mGestureGuideDone:Landroid/widget/Button;

.field private mGestureGuideTip:Landroid/widget/TextView;

.field private mGuideState:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSystemUiVisibility:I

.field private mSystemUpdateObserver:Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;

.field private performBackGuideAnimRunable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/OPFullScreenGestureGuidePage;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mCanBack:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->isBackLeftVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->isBackRightVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->performBackLeftGuideAnim()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->performBackRightGuideAnim()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/OPFullScreenGestureGuidePage;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->updateUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGuideState:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mCanBack:Z

    .line 42
    new-instance v0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$1;-><init>(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$2;-><init>(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->performBackGuideAnimRunable:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method private delayEnableBackAction()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$3;-><init>(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;)V

    .line 74
    const-wide/16 v2, 0x3e8

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0a0239

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideTip:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a023a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideDone:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideDone:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f0a023b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 82
    const v0, 0x7f0a023c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 83
    const v0, 0x7f0a023d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 84
    return-void
.end method

.method private isBackLeftVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    return v0

    .line 213
    :cond_0
    return v1
.end method

.method private isBackRightVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_0
    return v1
.end method

.method private isGuideStateRight(I)Z
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 156
    iget v2, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGuideState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 157
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 158
    :cond_1
    iget v2, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGuideState:I

    if-ne v2, v0, :cond_3

    .line 159
    if-ne p1, v4, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 160
    :cond_3
    iget v2, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGuideState:I

    if-ne v2, v4, :cond_5

    .line 161
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 163
    :cond_5
    return v1
.end method

.method private performBackGuideAnim()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->performBackGuideAnimRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method private performBackLeftGuideAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "op_gesture_guide_siwpe_up.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 231
    return-void
.end method

.method private performBackRightGuideAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "op_gesture_guide_siwpe_up.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 238
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 239
    return-void
.end method

.method private releaseAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 118
    iput-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 119
    iput-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 120
    iput-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 121
    return-void
.end method

.method private updateUI()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 168
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "op_gesture_button_guide_state"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->isGuideStateRight(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    iput v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGuideState:I

    .line 173
    const-string/jumbo v1, "OPFullScreenGestureGuidePage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oneplus gesture guide state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGuideState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    packed-switch v0, :pswitch_data_0

    .line 200
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideDone:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideTip:Landroid/widget/TextView;

    const v2, 0x7f0f048d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideTip:Landroid/widget/TextView;

    const v2, 0x7f0f048e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideDone:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v2, "op_gesture_guide_siwpe_up_hand.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 183
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideTip:Landroid/widget/TextView;

    const v2, 0x7f0f048f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideDone:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 190
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->performBackGuideAnim()V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideTip:Landroid/widget/TextView;

    const v2, 0x7f0f0490

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGestureGuideDone:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mHomeGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackLeftGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mBackRightGuideAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    iget v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mGuideState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_gesture_guide_completed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_gesture_button_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    const-string/jumbo v0, "op_fullscreen_gesture_enabled"

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_gesture_button_guide_state"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onBackPressed()V

    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a023a

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->onBackPressed()V

    .line 129
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0400ef

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->setContentView(I)V

    .line 56
    const v0, 0x7f100439

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->setTheme(I)V

    .line 57
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0570

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 58
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->delayEnableBackAction()V

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/16 v0, 0x3002

    iput v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mSystemUiVisibility:I

    .line 64
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->initView()V

    .line 65
    new-instance v0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;-><init>(Lcom/oneplus/settings/OPFullScreenGestureGuidePage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mSystemUpdateObserver:Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;

    .line 66
    return-void

    .line 62
    :cond_0
    const/16 v0, 0x1002

    iput v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    .line 111
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->releaseAnim()V

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 135
    :pswitch_0
    iget-boolean v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mCanBack:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->onBackPressed()V

    .line 138
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0, v2, v2}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->overridePendingTransition(II)V

    .line 100
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    .line 101
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_gesture_button_guide"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mSystemUpdateObserver:Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mSystemUpdateObserver:Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->stopObserving()V

    .line 105
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mSystemUiVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_gesture_button_guide"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    invoke-direct {p0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->updateUI()V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/OPFullScreenGestureGuidePage;->mSystemUpdateObserver:Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPFullScreenGestureGuidePage$SystemUpdateObserver;->startObserving()V

    .line 94
    return-void
.end method
