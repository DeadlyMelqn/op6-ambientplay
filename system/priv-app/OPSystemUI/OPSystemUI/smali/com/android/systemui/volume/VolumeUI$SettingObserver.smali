.class final Lcom/android/systemui/volume/VolumeUI$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 183
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_vibrate_under_silent"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeUI;->-set1(Lcom/android/systemui/volume/VolumeUI;I)I

    .line 191
    const-string/jumbo v0, "VolumeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " SettingObserver mVibrateWhenMute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeUI;->-get2(Lcom/android/systemui/volume/VolumeUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method
