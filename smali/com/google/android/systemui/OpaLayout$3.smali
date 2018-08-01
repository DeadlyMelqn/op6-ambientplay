.class Lcom/google/android/systemui/OpaLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/OpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;
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
    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$3;->this$0:Lcom/google/android/systemui/OpaLayout;

    .line 324
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$3;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0}, Lcom/google/android/systemui/OpaLayout;->-get1(Lcom/google/android/systemui/OpaLayout;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 327
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$3;->this$0:Lcom/google/android/systemui/OpaLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/systemui/OpaLayout;->-set0(Lcom/google/android/systemui/OpaLayout;I)I

    .line 328
    return-void
.end method
