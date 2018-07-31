.class final synthetic Lcom/oneplus/doze/-$Lambda$LIpuzc4i484-BWnMpfZe3B4fZlI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/-$Lambda$LIpuzc4i484-BWnMpfZe3B4fZlI;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Lcom/oneplus/doze/NotificationDozeHelper;->lambda$-com_oneplus_doze_NotificationDozeHelper_2967(Ljava/util/function/Consumer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/doze/-$Lambda$LIpuzc4i484-BWnMpfZe3B4fZlI;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/doze/-$Lambda$LIpuzc4i484-BWnMpfZe3B4fZlI;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
