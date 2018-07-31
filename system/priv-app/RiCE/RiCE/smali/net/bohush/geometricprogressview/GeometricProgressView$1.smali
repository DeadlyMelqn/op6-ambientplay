.class Lnet/bohush/geometricprogressview/GeometricProgressView$1;
.super Ljava/lang/Object;
.source "GeometricProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bohush/geometricprogressview/GeometricProgressView;->setupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bohush/geometricprogressview/GeometricProgressView;

.field final synthetic val$figure:Lnet/bohush/geometricprogressview/Figure;


# direct methods
.method constructor <init>(Lnet/bohush/geometricprogressview/GeometricProgressView;Lnet/bohush/geometricprogressview/Figure;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lnet/bohush/geometricprogressview/GeometricProgressView$1;->this$0:Lnet/bohush/geometricprogressview/GeometricProgressView;

    iput-object p2, p0, Lnet/bohush/geometricprogressview/GeometricProgressView$1;->val$figure:Lnet/bohush/geometricprogressview/Figure;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView$1;->val$figure:Lnet/bohush/geometricprogressview/Figure;

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bohush/geometricprogressview/Figure;->setAlpha(I)V

    .line 249
    iget-object p0, p0, Lnet/bohush/geometricprogressview/GeometricProgressView$1;->this$0:Lnet/bohush/geometricprogressview/GeometricProgressView;

    invoke-virtual/range {p0 .. p0}, Lnet/bohush/geometricprogressview/GeometricProgressView;->invalidate()V

    return-void
.end method
