.class Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5$1;
.super Ljava/lang/Object;
.source "NavigationBarGuide.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5$1;->this$2:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 362
    .local v0, "c":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5$1;->this$2:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->-get0(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 363
    return-void
.end method
