.class Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPPasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 444
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 448
    return-void
.end method
