.class final Lcom/oneplus/aod/VolumneController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VolumneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/VolumneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final DND_MODE_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/aod/VolumneController;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/VolumneController;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/aod/VolumneController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    .line 121
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 113
    const-string/jumbo v0, "three_Key_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 114
    const-string/jumbo v0, "dnd_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->DND_MODE_URI:Landroid/net/Uri;

    .line 122
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0}, Lcom/oneplus/aod/VolumneController;->-get2(Lcom/oneplus/aod/VolumneController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 134
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 127
    const-string/jumbo v0, "VolumneController"

    const-string/jumbo v1, "register db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0}, Lcom/oneplus/aod/VolumneController;->-get2(Lcom/oneplus/aod/VolumneController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->DND_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->-get0(Lcom/oneplus/aod/VolumneController;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/VolumneController;->-wrap2(Lcom/oneplus/aod/VolumneController;I)V

    .line 130
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 138
    const-string/jumbo v0, "VolumneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDNDModeChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->DND_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0}, Lcom/oneplus/aod/VolumneController;->-get0(Lcom/oneplus/aod/VolumneController;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0, p3}, Lcom/oneplus/aod/VolumneController;->-wrap2(Lcom/oneplus/aod/VolumneController;I)V

    .line 142
    :cond_0
    return-void
.end method
