.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$12$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    .line 608
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, -0x80000000

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I

    .line 614
    return-void
.end method
