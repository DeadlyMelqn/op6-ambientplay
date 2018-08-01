.class public Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;
.super Landroid/widget/RelativeLayout;
.source "SettingConfirmationSnackbarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;,
        Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$2;
    }
.end annotation


# instance fields
.field private final mButtonListener:Landroid/view/View$OnClickListener;

.field private mCallback:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mConfirmButton:Landroid/view/View;

.field private mDenyButton:Landroid/view/View;

.field private mDescription:Landroid/widget/TextView;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mMainHandler:Landroid/os/Handler;

.field private mSettingName:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mCallback:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mConfirmButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mDenyButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;)Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;
    .param p1, "-value"    # Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mCallback:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;
    .param p1, "-value"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mCallbackHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mSettingName:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;-><init>(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$2;-><init>(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mHideRunnable:Ljava/lang/Runnable;

    .line 112
    iput-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mTitle:Landroid/widget/TextView;

    .line 115
    iput-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mDescription:Landroid/widget/TextView;

    .line 118
    iput-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mConfirmButton:Landroid/view/View;

    .line 121
    iput-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mDenyButton:Landroid/view/View;

    .line 124
    iput-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mSettingName:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mCallback:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    .line 130
    iput-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mCallbackHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mMainHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 233
    const v2, 0x10c000d

    .line 232
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 234
    const-wide/16 v2, 0xfa

    .line 231
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$4;-><init>(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 241
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->setTranslationY(F)V

    .line 149
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->setVisibility(I)V

    .line 151
    const v0, 0x7f0a028c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mTitle:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mDescription:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mConfirmButton:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mConfirmButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mConfirmButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 158
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mDenyButton:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mDenyButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mDenyButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 161
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "settingName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    if-nez p2, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "title == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    if-nez p3, :cond_2

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2
    if-nez p4, :cond_3

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_3
    if-nez p5, :cond_4

    .line 190
    iget-object p5, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mMainHandler:Landroid/os/Handler;

    .line 195
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mSettingName:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iput-object p4, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mCallback:Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    .line 199
    iput-object p5, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mCallbackHandler:Landroid/os/Handler;

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 203
    const v2, 0x10c000d

    .line 202
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->getTranslationY()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    int-to-long v2, v0

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$3;-><init>(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    return-void

    .line 204
    :cond_5
    const/16 v0, 0xfa

    goto :goto_0
.end method
