.class Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 385
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->-get0(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    return-void
.end method
