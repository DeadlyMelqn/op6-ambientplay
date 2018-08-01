.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2612
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2613
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2614
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 2617
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2619
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "double_tap_sleep_gesture"

    .line 2618
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2619
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2618
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2620
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->update()V

    .line 2621
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 2630
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->update()V

    .line 2631
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2635
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->update()V

    .line 2636
    return-void
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 2624
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2625
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2626
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2639
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2640
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2641
    const-string/jumbo v4, "double_tap_sleep_gesture"

    const/4 v5, -0x2

    .line 2640
    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 2642
    return-void

    :cond_0
    move v1, v2

    .line 2640
    goto :goto_0
.end method
