.class Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintLocationAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView;->startAlphaAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView$5;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView;

    .line 168
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView$5;->this$0:Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView;->-set0(Lcom/android/settings/hydrogen/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 172
    return-void
.end method
