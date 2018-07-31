.class public final Lcom/android/internal/app/NightDisplayController;
.super Ljava/lang/Object;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NightDisplayController$Callback;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM:I = 0x1

.field public static final AUTO_MODE_DISABLED:I = 0x0

.field public static final AUTO_MODE_TWILIGHT:I = 0x2

.field public static final COLOR_MODE_BOOSTED:I = 0x1

.field public static final COLOR_MODE_NATURAL:I = 0x0

.field public static final COLOR_MODE_SATURATED:I = 0x2

.field private static final DEBUG:Z = false

.field private static final PERSISTENT_PROPERTY_NATIVE_MODE:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field private static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field private static final TAG:Ljava/lang/String; = "NightDisplayController"


# instance fields
.field private mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mForceTimeBeModified:I

.field private mPreReadingStatus:Ljava/lang/Boolean;

.field private mPreReadingStatusAuto:Ljava/lang/Boolean;

.field private final mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/NightDisplayController;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/internal/app/NightDisplayController;
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/NightDisplayController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 134
    iput p2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 136
    new-instance v0, Lcom/android/internal/app/NightDisplayController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/NightDisplayController$1;-><init>(Lcom/android/internal/app/NightDisplayController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 147
    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .locals 8
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 425
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v5, :cond_0

    .line 426
    const-string/jumbo v5, "night_display_activated"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 430
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v3, :cond_b

    .line 431
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onNightModeActivated(Z)V

    .line 434
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v3, :cond_c

    .line 435
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onActivated(Z)V

    .line 540
    :cond_0
    :goto_1
    return-void

    .line 426
    :cond_1
    const-string/jumbo v5, "night_display_auto_mode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v3, :cond_d

    .line 442
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onAutoModeChanged(I)V

    goto :goto_1

    .line 426
    :cond_2
    const-string/jumbo v5, "night_display_custom_start_time"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 447
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v3, :cond_e

    .line 448
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_1

    .line 426
    :cond_3
    const-string/jumbo v5, "night_display_custom_end_time"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 453
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v3, :cond_f

    .line 454
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_1

    .line 426
    :cond_4
    const-string/jumbo v5, "reading_mode_status"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 475
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "reading_mode_status_manual"

    iget v7, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 476
    .local v0, "manual":I
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "reading_mode_status"

    iget v7, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 477
    .local v2, "status":I
    const-string/jumbo v5, "NightDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "manual:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mPreReadingStatusAuto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v2, v3, :cond_10

    move v5, v3

    :goto_2
    if-eq v6, v5, :cond_0

    .line 479
    if-ne v2, v3, :cond_11

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    .line 480
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v3, :cond_12

    .line 481
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    iget-object v4, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onReadingModeActivatedAuto(Z)V

    goto/16 :goto_1

    .line 426
    .end local v0    # "manual":I
    .end local v2    # "status":I
    :cond_5
    const-string/jumbo v5, "reading_mode_status_manual"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 487
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatus:Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatus:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 488
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatus:Ljava/lang/Boolean;

    .line 492
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v3, :cond_13

    .line 493
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    iget-object v4, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatus:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onReadingModeActivatedManual(Z)V

    goto/16 :goto_1

    .line 426
    :cond_7
    const-string/jumbo v5, "temp_disable_scene_screen_effect"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 499
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 500
    const-string/jumbo v6, "temp_disable_scene_screen_effect"

    iget v7, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 499
    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 505
    .local v1, "setV":I
    const-string/jumbo v5, "NightDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setV:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v5, 0x2

    if-ne v1, v5, :cond_15

    .line 507
    const-string/jumbo v4, "NightDisplayController"

    const-string/jumbo v5, "only reading mode..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v4, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v4, :cond_14

    .line 509
    iget-object v4, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/app/NightDisplayController$Callback;->onNightOrReadingModeDisableByApp(Z)V

    goto/16 :goto_1

    .line 426
    .end local v1    # "setV":I
    :cond_8
    const-string/jumbo v3, "screen_color_mode_settings_value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 520
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 521
    const-string/jumbo v5, "screen_color_mode_settings_value"

    const/4 v6, -0x2

    .line 520
    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 522
    .restart local v2    # "status":I
    const-string/jumbo v3, "NightDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "screen_color_mode_settings_value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v3, :cond_18

    .line 524
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-interface {v3}, Lcom/android/internal/app/NightDisplayController$Callback;->onModeSettingChange()V

    goto/16 :goto_1

    .line 426
    .end local v2    # "status":I
    :cond_9
    const-string/jumbo v3, "night_display_color_temperature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 530
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v3, :cond_19

    .line 531
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onColorTemperatureChanged(I)V

    goto/16 :goto_1

    .line 426
    :cond_a
    const-string/jumbo v3, "display_color_mode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getColorMode()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onDisplayColorModeChanged(I)V

    goto/16 :goto_1

    .line 433
    :cond_b
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onNightModeActivated is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    :cond_c
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onActivated is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 444
    :cond_d
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onAutoModeChanged is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 450
    :cond_e
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onCustomStartTimeChanged is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 456
    :cond_f
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onCustomEndTimeChanged is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .restart local v0    # "manual":I
    .restart local v2    # "status":I
    :cond_10
    move v5, v4

    .line 478
    goto/16 :goto_2

    :cond_11
    move v3, v4

    .line 479
    goto/16 :goto_3

    .line 483
    :cond_12
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onReadingModeActivatedAuto is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 495
    .end local v0    # "manual":I
    .end local v2    # "status":I
    :cond_13
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onReadingModeActivatedManual is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 511
    .restart local v1    # "setV":I
    :cond_14
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onNightOrReadingModeDisableByApp is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 513
    :cond_15
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v5, :cond_17

    .line 514
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-ne v1, v3, :cond_16

    :goto_4
    invoke-interface {v5, v3}, Lcom/android/internal/app/NightDisplayController$Callback;->onNightOrReadingModeDisableByApp(Z)V

    goto/16 :goto_1

    :cond_16
    move v3, v4

    goto :goto_4

    .line 516
    :cond_17
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onNightOrReadingModeDisableByApp is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 526
    .end local v1    # "setV":I
    .restart local v2    # "status":I
    :cond_18
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onModeSettingChange is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 533
    .end local v2    # "status":I
    :cond_19
    const-string/jumbo v3, "NightDisplayController"

    const-string/jumbo v4, "mCallback is NULL,onModeSettingChange is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public getAutoMode()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 209
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 210
    const-string/jumbo v2, "night_display_auto_mode"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 209
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 211
    .local v0, "autoMode":I
    if-ne v0, v4, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 216
    const v2, 0x10e002c

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 219
    :cond_0
    if-eqz v0, :cond_1

    .line 220
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 221
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 222
    const-string/jumbo v1, "NightDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid autoMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    .line 226
    :cond_1
    return v0
.end method

.method public getColorMode()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 369
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 370
    const-string/jumbo v3, "display_color_mode"

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    const/4 v5, -0x1

    .line 369
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 371
    .local v0, "colorMode":I
    if-ltz v0, :cond_0

    if-le v0, v6, :cond_3

    .line 374
    :cond_0
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "persist.sys.sf.native_mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    return v6

    .line 377
    :cond_1
    const-string/jumbo v2, "1.0"

    const-string/jumbo v3, "persist.sys.sf.color_saturation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v1

    .line 378
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 380
    :cond_3
    return v0
.end method

.method public getColorTemperature()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 334
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 335
    const-string/jumbo v4, "night_display_color_temperature"

    iget v5, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 334
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 336
    .local v0, "colorTemperature":I
    if-ne v0, v6, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getDefaultColorTemperature()I

    move-result v0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getMinimumColorTemperature()I

    move-result v2

    .line 344
    .local v2, "minimumTemperature":I
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getMaximumColorTemperature()I

    move-result v1

    .line 345
    .local v1, "maximumTemperature":I
    if-ge v0, v2, :cond_2

    .line 346
    move v0, v2

    .line 351
    :cond_1
    :goto_0
    return v0

    .line 347
    :cond_2
    if-le v0, v1, :cond_1

    .line 348
    move v0, v1

    goto :goto_0
.end method

.method public getCustomEndTime()Ljava/time/LocalTime;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 298
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 299
    const-string/jumbo v2, "night_display_custom_end_time"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 298
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 300
    .local v0, "endTimeValue":I
    if-ne v0, v4, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 306
    const v2, 0x10e002d

    .line 305
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 309
    :cond_0
    div-int/lit16 v1, v0, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getCustomStartTime()Ljava/time/LocalTime;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 259
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 260
    const-string/jumbo v2, "night_display_custom_start_time"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 259
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 261
    .local v0, "startTimeValue":I
    if-ne v0, v4, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 267
    const v2, 0x10e002e

    .line 266
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 270
    :cond_0
    div-int/lit16 v1, v0, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultColorTemperature()I
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 417
    const v1, 0x10e0066

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getLastActivatedTime()Ljava/time/LocalDateTime;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 186
    iget-object v4, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "night_display_last_activated_time"

    iget v5, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 187
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "lastActivatedTime":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 191
    :try_start_0
    invoke-static {v3}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 192
    :catch_0
    move-exception v2

    .line 196
    .local v2, "ignored":Ljava/time/format/DateTimeParseException;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    .line 197
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v5

    .line 195
    invoke-static {v4, v5}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 198
    :catch_1
    move-exception v1

    .line 200
    .end local v2    # "ignored":Ljava/time/format/DateTimeParseException;
    :cond_0
    return-object v6
.end method

.method public getMaximumColorTemperature()I
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 409
    const v1, 0x10e0067

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumColorTemperature()I
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 401
    const v1, 0x10e0068

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public isActivated()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 154
    const-string/jumbo v3, "night_display_activated"

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 153
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isReadingModeActivated()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "reading_mode_status_manual"

    iget v5, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 160
    .local v0, "v":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setActivated(Z)Z
    .locals 4
    .param p1, "activated"    # Z

    .prologue
    .line 170
    const-string/jumbo v0, "NightDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "night_display_last_activated_time"

    .line 174
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 172
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 178
    const-string/jumbo v2, "night_display_activated"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 177
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoMode(I)Z
    .locals 4
    .param p1, "autoMode"    # I

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 240
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "night_display_last_activated_time"

    .line 248
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 247
    const/4 v3, 0x0

    .line 245
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 250
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setColorMode(I)V
    .locals 3
    .param p1, "colorMode"    # I

    .prologue
    .line 389
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 390
    :cond_0
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_color_mode"

    .line 393
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 392
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 394
    return-void
.end method

.method public setColorTemperature(I)Z
    .locals 3
    .param p1, "colorTemperature"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 362
    const-string/jumbo v1, "night_display_color_temperature"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 361
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setCustomEndTime(Ljava/time/LocalTime;)Z
    .locals 4
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "endTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 326
    const-string/jumbo v2, "night_display_custom_end_time"

    .line 327
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    rem-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    :goto_0
    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 325
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 327
    :cond_1
    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    goto :goto_0
.end method

.method public setCustomStartTime(Ljava/time/LocalTime;)Z
    .locals 4
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 287
    const-string/jumbo v2, "night_display_custom_start_time"

    .line 288
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    rem-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    :goto_0
    add-int/2addr v0, v3

    .line 289
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 286
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 288
    :cond_1
    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/internal/app/NightDisplayController$Callback;

    .prologue
    const/4 v5, 0x0

    .line 546
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 547
    .local v1, "oldCallback":Lcom/android/internal/app/NightDisplayController$Callback;
    if-eq v1, p1, :cond_0

    .line 548
    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 550
    if-nez p1, :cond_1

    .line 552
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    if-nez v1, :cond_0

    .line 555
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 556
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 557
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 556
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 558
    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 559
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 558
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 560
    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 561
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 560
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 562
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 563
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 562
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 564
    const-string/jumbo v2, "night_display_color_temperature"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 565
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 564
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 566
    const-string/jumbo v2, "display_color_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 567
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 566
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 574
    const-string/jumbo v2, "reading_mode_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 575
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 574
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 576
    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 577
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 576
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 578
    const-string/jumbo v2, "temp_disable_scene_screen_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 579
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 578
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 580
    const-string/jumbo v2, "screen_color_mode_settings_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 581
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 580
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto/16 :goto_0
.end method
