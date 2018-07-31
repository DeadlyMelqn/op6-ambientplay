.class final synthetic Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/doze/NotificationIconDozeHelper;

    iget-object v1, p0, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/doze/NotificationIconDozeHelper;->lambda$-com_oneplus_doze_NotificationIconDozeHelper_2520(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/doze/NotificationIconDozeHelper;

    iget-object v1, p0, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/doze/NotificationIconDozeHelper;->lambda$-com_oneplus_doze_NotificationIconDozeHelper_2254(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->$id:B

    iput-object p2, p0, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/doze/-$Lambda$P2LRqI0oamewV800DteElZkN1xk;->$m$1(Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
