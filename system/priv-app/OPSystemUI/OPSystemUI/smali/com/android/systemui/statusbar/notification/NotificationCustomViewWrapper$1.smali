.class Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationCustomViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

.field final synthetic val$dark:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->val$dark:Z

    .line 75
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->val$dark:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 81
    :cond_0
    return-void
.end method
