.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$leftTarget:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;->val$leftTarget:F

    .line 1418
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;->cancelled:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;->cancelled:Z

    .line 1424
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1428
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;->cancelled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;->val$leftTarget:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get8(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 1432
    :cond_0
    return-void
.end method