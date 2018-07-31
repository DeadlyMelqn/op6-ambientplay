.class public Lcom/android/systemui/volume/VolumeDialogMotion;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogMotion$Callback;,
        Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;,
        Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimating:Z

.field private final mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

.field private final mChevron:Landroid/view/View;

.field private mChevronPositionAnimator:Landroid/animation/ValueAnimator;

.field private final mContents:Landroid/view/ViewGroup;

.field private mContentsPositionAnimator:Landroid/animation/ValueAnimator;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDialogView:Landroid/view/View;

.field private mDismissing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mShowing:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogMotion;)Lcom/android/systemui/volume/VolumeDialogMotion$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/app/Dialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogMotion;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronPosY()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;
    .param p1, "dismissing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;
    .param p1, "showing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "dialogView"    # Landroid/view/View;
    .param p3, "contents"    # Landroid/view/ViewGroup;
    .param p4, "chevron"    # Landroid/view/View;
    .param p5, "callback"    # Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    .line 59
    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    .line 60
    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$1;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$2;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 76
    return-void
.end method

.method private chevronDistance()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private chevronPosY()I
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .local v0, "tag":Ljava/lang/Object;
    goto :goto_0

    .line 128
    .end local v0    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method private static scaledDuration(I)I
    .locals 2
    .param p0, "base"    # I

    .prologue
    .line 265
    int-to-float v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setDismissing(Z)V
    .locals 3
    .param p1, "dismissing"    # Z

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 91
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    .line 92
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDismissing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->updateAnimating()V

    .line 94
    return-void
.end method

.method private setShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 84
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    .line 85
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->updateAnimating()V

    .line 87
    return-void
.end method

.method private startShowAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x3ecccccd    # 0.4f

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 132
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 135
    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 133
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>()V

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 137
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/android/systemui/volume/-$Lambda$FeP6WQ9udtwStQlGHdOGywTkHZE;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$Lambda$FeP6WQ9udtwStQlGHdOGywTkHZE;-><init>(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$3;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronDistance()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v8

    const/4 v1, 0x1

    aput v4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 159
    const/16 v1, 0x190

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 158
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$4;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$5;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 188
    const/16 v1, 0x96

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 186
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v4, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronDistance()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v8

    const/4 v1, 0x1

    aput v4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 193
    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 192
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v7, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 200
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 198
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 201
    const/16 v1, 0x96

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 198
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 202
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v7, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 204
    return-void
.end method

.method private updateAnimating()V
    .locals 4

    .prologue
    .line 97
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    .line 98
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    .local v0, "animating":Z
    goto :goto_0

    .line 99
    .end local v0    # "animating":Z
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    .line 100
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAnimating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/volume/VolumeDialogMotion$Callback;->onAnimatingChanged(Z)V

    .line 104
    :cond_3
    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_volume_VolumeDialogMotion_4860(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 141
    .local v1, "v":F
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronPosY()I

    move-result v0

    .line 144
    .local v0, "posY":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    int-to-float v3, v0

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .end local v0    # "posY":I
    .end local v1    # "v":F
    :cond_1
    return-void
.end method

.method public startDismiss(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_1

    return-void

    .line 209
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 224
    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 222
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;-><init>()V

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$6;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion$7;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;Ljava/lang/Runnable;)V

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 262
    return-void
.end method

.method public startShow()V
    .locals 2

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    .line 109
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V

    .line 118
    :cond_2
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mDialog.show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 120
    return-void
.end method
