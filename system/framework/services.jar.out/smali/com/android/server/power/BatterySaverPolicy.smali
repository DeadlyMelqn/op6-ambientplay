.class public Lcom/android/server/power/BatterySaverPolicy;
.super Landroid/database/ContentObserver;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/BatterySaverPolicy$ServiceType;
    }
.end annotation


# static fields
.field public static final GPS_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field public static final GPS_MODE_NO_CHANGE:I = 0x0

.field private static final KEY_ADJUST_BRIGHTNESS_DISABLED:Ljava/lang/String; = "adjust_brightness_disabled"

.field private static final KEY_ADJUST_BRIGHTNESS_FACTOR:Ljava/lang/String; = "adjust_brightness_factor"

.field private static final KEY_ANIMATION_DISABLED:Ljava/lang/String; = "animation_disabled"

.field private static final KEY_DATASAVER_DISABLED:Ljava/lang/String; = "datasaver_disabled"

.field private static final KEY_FIREWALL_DISABLED:Ljava/lang/String; = "firewall_disabled"

.field private static final KEY_FULLBACKUP_DEFERRED:Ljava/lang/String; = "fullbackup_deferred"

.field private static final KEY_GPS_MODE:Ljava/lang/String; = "gps_mode"

.field private static final KEY_KEYVALUE_DEFERRED:Ljava/lang/String; = "keyvaluebackup_deferred"

.field private static final KEY_SOUNDTRIGGER_DISABLED:Ljava/lang/String; = "soundtrigger_disabled"

.field private static final KEY_VIBRATION_DISABLED:Ljava/lang/String; = "vibration_disabled"

.field public static final SECURE_KEY_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final TAG:Ljava/lang/String; = "BatterySaverPolicy"


# instance fields
.field private mAdjustBrightnessDisabled:Z

.field private mAdjustBrightnessFactor:F

.field private mAnimationDisabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataSaverDisabled:Z

.field private mFireWallDisabled:Z

.field private mFullBackupDeferred:Z

.field private mGpsMode:I

.field private mKeyValueBackupDeferred:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mSoundTriggerDisabled:Z

.field private mVibrationDisabled:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 83
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 171
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 270
    const-string/jumbo v0, "Battery saver policy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "  Settings battery_saver_constants"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 273
    const-string/jumbo v2, "battery_saver_constants"

    .line 272
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  vibration_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  animation_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  fullbackup_deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  keyvaluebackup_deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  firewall_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  datasaver_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  adjust_brightness_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  adjust_brightness_factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  gps_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;
    .locals 3
    .param p1, "type"    # I
    .param p2, "realMode"    # Z

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    new-instance v1, Landroid/os/PowerSaveState$Builder;

    invoke-direct {v1}, Landroid/os/PowerSaveState$Builder;-><init>()V

    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v0

    .line 227
    .local v0, "builder":Landroid/os/PowerSaveState$Builder;
    if-nez p2, :cond_0

    .line 228
    invoke-virtual {v0, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 231
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 262
    :pswitch_0
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 233
    :pswitch_1
    :try_start_2
    invoke-virtual {v0, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    .line 234
    iget v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    .line 233
    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setGpsMode(I)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 237
    :pswitch_2
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 240
    :pswitch_3
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 243
    :pswitch_4
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 246
    :pswitch_5
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 249
    :pswitch_6
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    .line 250
    iget v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    .line 249
    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 253
    :pswitch_7
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 256
    :pswitch_8
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 259
    :pswitch_9
    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabled:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 224
    .end local v0    # "builder":Landroid/os/PowerSaveState$Builder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 184
    const-string/jumbo v2, "battery_saver_constants"

    .line 183
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/power/BatterySaverPolicy;->updateConstants(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 176
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 177
    const-string/jumbo v1, "battery_saver_constants"

    .line 176
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    const/4 v2, 0x0

    .line 176
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/BatterySaverPolicy;->onChange(ZLandroid/net/Uri;)V

    .line 179
    return-void
.end method

.method updateConstants(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 190
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "vibration_disabled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabled:Z

    .line 198
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "animation_disabled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    .line 199
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "soundtrigger_disabled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    .line 200
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "fullbackup_deferred"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    .line 201
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "keyvaluebackup_deferred"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    .line 202
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "firewall_disabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    .line 203
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "adjust_brightness_disabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    .line 204
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "adjust_brightness_factor"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    .line 205
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "datasaver_disabled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    .line 208
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "batterySaverGpsMode"

    .line 209
    const/4 v4, 0x1

    .line 208
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, "defaultGpsMode":I
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "gps_mode"

    invoke-virtual {v2, v3, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 212
    return-void

    .line 193
    .end local v0    # "defaultGpsMode":I
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string/jumbo v2, "BatterySaverPolicy"

    const-string/jumbo v3, "Bad battery saver constants"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 190
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
