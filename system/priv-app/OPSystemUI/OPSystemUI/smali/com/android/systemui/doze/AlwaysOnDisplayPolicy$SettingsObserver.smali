.class final Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AlwaysOnDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 124
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    const-string/jumbo v0, "always_on_display_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    .line 125
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-get0(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    .line 130
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 129
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 132
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 136
    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 137
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-get0(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 142
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-get0(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 143
    const-string/jumbo v4, "always_on_display_constants"

    .line 142
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-get1(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v4}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-get1(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v4

    const-string/jumbo v5, "prox_screen_off_delay"

    .line 152
    const-wide/16 v6, 0x2710

    .line 151
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    .line 153
    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v4}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-get1(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v4

    const-string/jumbo v5, "prox_cooldown_trigger"

    .line 154
    const-wide/16 v6, 0x7d0

    .line 153
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownTriggerMs:J

    .line 155
    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v4}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-get1(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v4

    const-string/jumbo v5, "prox_cooldown_period"

    .line 156
    const-wide/16 v6, 0x1388

    .line 155
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownPeriodMs:J

    .line 157
    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    const-string/jumbo v5, "screen_brightness_array"

    .line 159
    const v6, 0x7f030025

    .line 158
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 157
    invoke-static {v4, v5, v6}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-wrap0(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Ljava/lang/String;[I)[I

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    .line 160
    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v4, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    const-string/jumbo v5, "dimming_scrim_array"

    .line 162
    const v6, 0x7f030026

    .line 161
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 160
    invoke-static {v4, v5, v6}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-wrap0(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Ljava/lang/String;[I)[I

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    .line 164
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 147
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "AlwaysOnDisplayPolicy"

    const-string/jumbo v4, "Bad AOD constants"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
