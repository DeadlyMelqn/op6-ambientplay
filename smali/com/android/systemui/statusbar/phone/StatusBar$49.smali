.class Lcom/android/systemui/statusbar/phone/StatusBar$49;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$intent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49;->val$intent:Landroid/app/PendingIntent;

    .line 7396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7399
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$49;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;->start()V

    .line 7425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    .line 7429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 7431
    return v2

    .line 7433
    :cond_0
    return v3
.end method