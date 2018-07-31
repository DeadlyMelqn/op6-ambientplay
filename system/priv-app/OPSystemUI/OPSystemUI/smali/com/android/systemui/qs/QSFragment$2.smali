.class Lcom/android/systemui/qs/QSFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$2;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 451
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$2;->this$0:Lcom/android/systemui/qs/QSFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSFragment;->-set0(Lcom/android/systemui/qs/QSFragment;Z)Z

    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$2;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFragment;->-wrap0(Lcom/android/systemui/qs/QSFragment;)V

    .line 456
    return-void
.end method
