.class public Lcom/android/systemui/volume/Events;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/Events$Callback;
    }
.end annotation


# static fields
.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field private static final EVENT_TAGS:[Ljava/lang/String;

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static sCallback:Lcom/android/systemui/volume/Events$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const-class v0, Lcom/android/systemui/volume/Events;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    .line 58
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "show_dialog"

    aput-object v1, v0, v3

    .line 60
    const-string/jumbo v1, "dismiss_dialog"

    aput-object v1, v0, v4

    .line 61
    const-string/jumbo v1, "active_stream_changed"

    aput-object v1, v0, v5

    .line 62
    const-string/jumbo v1, "expand"

    aput-object v1, v0, v6

    .line 63
    const-string/jumbo v1, "key"

    aput-object v1, v0, v7

    .line 64
    const-string/jumbo v1, "collection_started"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "collection_stopped"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "icon_click"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "settings_click"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "touch_level_changed"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "level_changed"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "internal_ringer_mode_changed"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "external_ringer_mode_changed"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "zen_mode_changed"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "suppressor_changed"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "mute_changed"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "touch_level_done"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "status_bar_icon_changed"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 58
    sput-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    .line 92
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 93
    const-string/jumbo v1, "unknown"

    aput-object v1, v0, v3

    .line 94
    const-string/jumbo v1, "touch_outside"

    aput-object v1, v0, v4

    .line 95
    const-string/jumbo v1, "volume_controller"

    aput-object v1, v0, v5

    .line 96
    const-string/jumbo v1, "timeout"

    aput-object v1, v0, v6

    .line 97
    const-string/jumbo v1, "screen_off"

    aput-object v1, v0, v7

    .line 98
    const-string/jumbo v1, "settings_clicked"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "done_clicked"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "a11y_stream_changed"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "still_showing_after_dismissed"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 92
    sput-object v0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    .line 109
    new-array v0, v6, [Ljava/lang/String;

    .line 110
    const-string/jumbo v1, "unknown"

    aput-object v1, v0, v3

    .line 111
    const-string/jumbo v1, "volume_changed"

    aput-object v1, v0, v4

    .line 112
    const-string/jumbo v1, "remote_volume_changed"

    aput-object v1, v0, v5

    .line 109
    sput-object v0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iconStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "iconState"    # I

    .prologue
    .line 206
    packed-switch p0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown_state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :pswitch_0
    const-string/jumbo v0, "unmute"

    return-object v0

    .line 208
    :pswitch_1
    const-string/jumbo v0, "mute"

    return-object v0

    .line 209
    :pswitch_2
    const-string/jumbo v0, "vibrate"

    return-object v0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "ringerMode"    # I

    .prologue
    .line 215
    packed-switch p0, :pswitch_data_0

    .line 219
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 216
    :pswitch_0
    const-string/jumbo v0, "silent"

    return-object v0

    .line 217
    :pswitch_1
    const-string/jumbo v0, "vibrate"

    return-object v0

    .line 218
    :pswitch_2
    const-string/jumbo v0, "normal"

    return-object v0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static varargs writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # I
    .param p2, "list"    # [Ljava/lang/Object;

    .prologue
    const/16 v8, 0xcf

    const/16 v7, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    .local v2, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "writeEvent "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 126
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 189
    :pswitch_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v1, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v1, :cond_1

    .line 195
    sget-object v1, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeEvent(JI[Ljava/lang/Object;)V

    .line 197
    :cond_1
    return-void

    .line 129
    :pswitch_1
    invoke-static {p0, v8}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 130
    const-string/jumbo v6, "volume_from_keyguard"

    .line 131
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    .line 130
    :goto_1
    invoke-static {p0, v6, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 132
    sget-object v6, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " keyguard="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    move v1, v5

    .line 131
    goto :goto_1

    .line 136
    :pswitch_2
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 135
    const/16 v4, 0xd0

    invoke-static {p0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 137
    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :pswitch_3
    invoke-static {p0, v8}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 141
    sget-object v4, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :pswitch_4
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    const/16 v4, 0xd2

    invoke-static {p0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 146
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 150
    :pswitch_5
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 149
    const/16 v6, 0xd4

    invoke-static {p0, v6, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 151
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 152
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events;->iconStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 156
    :pswitch_6
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 155
    const/16 v6, 0xd1

    invoke-static {p0, v6, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 161
    :pswitch_7
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    aget-object v4, p2, v4

    .line 161
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 166
    :pswitch_8
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 165
    const/16 v6, 0xd3

    invoke-static {p0, v6, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 167
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    aget-object v4, p2, v4

    .line 167
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 172
    :pswitch_9
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    const/16 v4, 0xd5

    invoke-static {p0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 175
    :pswitch_a
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 178
    :pswitch_b
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 181
    :pswitch_c
    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 185
    :pswitch_d
    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_d
    .end packed-switch
.end method

.method public static writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 2
    .param p0, "time"    # J
    .param p2, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    .line 200
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 203
    :cond_0
    return-void
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "zenMode"    # I

    .prologue
    .line 224
    packed-switch p0, :pswitch_data_0

    .line 229
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 225
    :pswitch_0
    const-string/jumbo v0, "off"

    return-object v0

    .line 226
    :pswitch_1
    const-string/jumbo v0, "important_interruptions"

    return-object v0

    .line 227
    :pswitch_2
    const-string/jumbo v0, "alarms"

    return-object v0

    .line 228
    :pswitch_3
    const-string/jumbo v0, "no_interruptions"

    return-object v0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
