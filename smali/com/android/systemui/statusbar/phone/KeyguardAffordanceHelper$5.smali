.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field final synthetic val$right:Z

.field final synthetic val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$right:Z

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 302
    .local v0, "newRadius":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadiusWithoutAnimation(F)V

    .line 303
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F

    move-result v1

    .line 304
    .local v1, "translation":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$right:Z

    if-eqz v3, :cond_0

    neg-float v1, v1

    .end local v1    # "translation":F
    :cond_0
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->-set3(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F

    .line 305
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->-wrap2(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    .line 306
    return-void
.end method
