.class Lcom/android/systemui/qs/customize/QSCustomizer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 512
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->-wrap0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    .line 537
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->-wrap0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    .line 526
    return-void
.end method
