.class Lcom/android/systemui/statusbar/NotificationSnooze$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationSnooze.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationSnooze;->animateSnoozeOptions(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationSnooze;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationSnooze;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationSnooze;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze$1;->this$0:Lcom/android/systemui/statusbar/NotificationSnooze;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationSnooze$1;->val$show:Z

    .line 332
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$1;->cancelled:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$1;->cancelled:Z

    .line 338
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$1;->val$show:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$1;->cancelled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$1;->this$0:Lcom/android/systemui/statusbar/NotificationSnooze;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->-get0(Lcom/android/systemui/statusbar/NotificationSnooze;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$1;->this$0:Lcom/android/systemui/statusbar/NotificationSnooze;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->-get0(Lcom/android/systemui/statusbar/NotificationSnooze;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 346
    :cond_0
    return-void
.end method
