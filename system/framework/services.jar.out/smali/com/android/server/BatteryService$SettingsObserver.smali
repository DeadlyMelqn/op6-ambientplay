.class abstract Lcom/android/server/BatteryService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mTarget:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1321
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1322
    iput-object p3, p0, Lcom/android/server/BatteryService$SettingsObserver;->mTarget:Ljava/lang/String;

    .line 1323
    invoke-static {p1}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1324
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->mTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 1326
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 1332
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 1333
    return-void
.end method

.method abstract onUpdate(Z)V
.end method

.method public update()V
    .locals 4

    .prologue
    .line 1336
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1337
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->mTarget:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1340
    .local v0, "on":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService$SettingsObserver;->onUpdate(Z)V

    .line 1341
    return-void

    .line 1337
    .end local v0    # "on":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "on":Z
    goto :goto_0
.end method
