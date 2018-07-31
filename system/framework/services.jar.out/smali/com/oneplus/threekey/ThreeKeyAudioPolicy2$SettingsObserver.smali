.class final Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ThreeKeyAudioPolicy2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DND_MODE:Landroid/net/Uri;

.field private final MEDIA_SWITCH_MODE:Landroid/net/Uri;

.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;


# direct methods
.method public constructor <init>(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 140
    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 141
    const-string/jumbo v0, "oem_zen_media_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    .line 142
    const-string/jumbo v0, "dnd_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->DND_MODE:Landroid/net/Uri;

    .line 145
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v1}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->DND_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    const-string/jumbo v4, "ThreeKeyAudioPolicy2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "settings change selfChange="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-get2(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Lcom/oem/os/ThreeKeyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oem/os/ThreeKeyManager;->getThreeKeyStatus()I

    move-result v1

    .line 160
    .local v1, "status":I
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dnd_mode_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "dnd":I
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v5}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 163
    const-string/jumbo v6, "oem_zen_media_switch"

    .line 162
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_1

    :goto_0
    invoke-static {v4, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-set0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;Z)Z

    .line 185
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->DND_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const-string/jumbo v4, "ThreeKeyAudioPolicy2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "zen mode was changed, zen mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v6}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-get3(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)I

    move-result v6

    invoke-static {v6}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", three key status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dnd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eq v1, v2, :cond_5

    .line 167
    if-ne v0, v2, :cond_4

    .line 168
    iget-object v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v3, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-set1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;I)I

    .line 177
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-get1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-get3(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)I

    move-result v3

    const-string/jumbo v4, "ThreeKeyAudioPolicy2"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v2, "ThreeKeyAudioPolicy2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zen mode was changed, zen mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-get3(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)I

    move-result v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    const-string/jumbo v4, ", three key status="

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    const-string/jumbo v4, " dnd:"

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 169
    :cond_4
    if-nez v0, :cond_3

    .line 170
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v2, v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-set1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;I)I

    goto :goto_2

    .line 172
    :cond_5
    if-ne v0, v2, :cond_6

    .line 173
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-set1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;I)I

    goto :goto_2

    .line 174
    :cond_6
    if-nez v0, :cond_3

    .line 175
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v2, v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->-set1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;I)I

    goto :goto_2
.end method
