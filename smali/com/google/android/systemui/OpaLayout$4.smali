.class Lcom/google/android/systemui/OpaLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/OpaLayout;->getDiamondAnimatorSet()Landroid/util/ArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$4;->this$0:Lcom/google/android/systemui/OpaLayout;

    .line 351
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$4;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0}, Lcom/google/android/systemui/OpaLayout;->-get1(Lcom/google/android/systemui/OpaLayout;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 354
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$4;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0}, Lcom/google/android/systemui/OpaLayout;->-wrap2(Lcom/google/android/systemui/OpaLayout;)V

    .line 358
    return-void
.end method
