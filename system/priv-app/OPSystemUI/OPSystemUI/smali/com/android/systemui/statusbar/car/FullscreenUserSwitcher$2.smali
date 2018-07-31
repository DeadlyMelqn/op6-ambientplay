.class Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullscreenUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->crossFade(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

.field final synthetic val$outgoing:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;->this$0:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;->val$outgoing:Landroid/view/View;

    .line 116
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;->val$outgoing:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void
.end method
