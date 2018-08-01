.class Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingConfirmationSnackbarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$3;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .line 205
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$3;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$3;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 215
    const v2, 0x10c000d

    .line 214
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 216
    const-wide/16 v2, 0xfa

    .line 213
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$3;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->setVisibility(I)V

    .line 209
    return-void
.end method
