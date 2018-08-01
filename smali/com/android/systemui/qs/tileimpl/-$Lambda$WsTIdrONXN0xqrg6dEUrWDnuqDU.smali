.class final synthetic Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:F

.field private final synthetic -$f1:F

.field private final synthetic -$f2:F

.field private final synthetic -$f3:F

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f0:F

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f1:F

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f2:F

    iget v3, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f3:F

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f4:Ljava/lang/Object;

    check-cast v4, Landroid/widget/ImageView;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->lambda$-com_android_systemui_qs_tileimpl_QSIconViewImpl_6437(FFFFLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f0:F

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f1:F

    iput p3, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f2:F

    iput p4, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f3:F

    iput-object p5, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/-$Lambda$WsTIdrONXN0xqrg6dEUrWDnuqDU;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
