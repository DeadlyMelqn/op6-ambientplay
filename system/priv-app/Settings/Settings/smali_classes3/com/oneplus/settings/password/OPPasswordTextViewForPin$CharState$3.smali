.class Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;
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
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 415
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->reset(Z)V

    .line 419
    return-void
.end method
