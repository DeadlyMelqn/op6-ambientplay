.class Lcom/android/systemui/pip/phone/PipMenuActivity$1;
.super Ljava/lang/Object;
.source "PipMenuActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 119
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->-get0(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 120
    return-void
.end method