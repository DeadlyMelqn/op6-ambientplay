.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 793
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 794
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->-get0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 799
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "double_tap_sleep_gesture"

    .line 798
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 799
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 798
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 800
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->update()V

    .line 801
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->update()V

    .line 811
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->update()V

    .line 816
    return-void
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 804
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->-get0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 805
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 806
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 819
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->-get0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 820
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 821
    const-string/jumbo v3, "double_tap_sleep_gesture"

    const/4 v4, -0x2

    .line 820
    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->-set0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Z)Z

    .line 822
    return-void

    .line 820
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
