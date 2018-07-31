.class final Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 680
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 681
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 683
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 685
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "doze_mode_policy"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 686
    const/4 v3, -0x1

    .line 684
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 687
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSettings()V

    .line 688
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSettings()V

    .line 693
    return-void
.end method
