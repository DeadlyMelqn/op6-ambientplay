.class public final Landroid/view/textclassifier/logging/SmartSelectionEventTracker;
.super Ljava/lang/Object;
.source "SmartSelectionEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final EDITTEXT:Ljava/lang/String; = "edittext"

.field private static final EDIT_WEBVIEW:Ljava/lang/String; = "edit-webview"

.field private static final EVENT_INDICES:I = 0x462

.field private static final INDEX:I = 0x460

.field private static final LOG_TAG:Ljava/lang/String; = "SmartSelectEventTracker"

.field private static final PREV_EVENT_DELTA:I = 0x45e

.field private static final SESSION_ID:I = 0x45f

.field private static final SMART_INDICES:I = 0x463

.field private static final START_EVENT_DELTA:I = 0x45d

.field private static final TEXTVIEW:Ljava/lang/String; = "textview"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final VERSION_TAG:I = 0x461

.field private static final WEBVIEW:Ljava/lang/String; = "webview"

.field private static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIndex:I

.field private mLastEventTime:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOrigStart:I

.field private final mPrevIndices:[I

.field private mSessionId:Ljava/lang/String;

.field private mSessionStartTime:J

.field private final mSmartIndices:[I

.field private mSmartSelectionTriggered:Z

.field private mVersionTag:Ljava/lang/String;

.field private final mWidgetType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetType"    # I

    .prologue
    const/4 v1, 0x2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 79
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    .line 80
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    .line 89
    iput p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetType:I

    .line 90
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method private static clamp(I)I
    .locals 2
    .param p0, "val"    # I

    .prologue
    .line 333
    const/16 v0, 0x7fff

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, -0x8000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static createSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static debugLog(Landroid/metrics/LogMaker;)V
    .locals 0
    .param p0, "log"    # Landroid/metrics/LogMaker;

    .prologue
    .line 337
    return-void
.end method

.method private endSession()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    iput v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 167
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    aput v2, v1, v3

    aput v2, v0, v2

    .line 168
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    aput v2, v1, v3

    aput v2, v0, v2

    .line 169
    iput v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    .line 170
    iput-wide v6, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    .line 171
    iput-wide v6, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    .line 172
    iput-boolean v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    .line 173
    invoke-direct {p0, v4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getVersionTag(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mVersionTag:Ljava/lang/String;

    .line 174
    iput-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method private getEventDelta(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    .line 300
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v0

    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 301
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v1

    iget v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 300
    or-int/2addr v0, v1

    return v0
.end method

.method private static getLogSubType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 2
    .param p0, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    .line 256
    invoke-static {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get1(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v0, 0x2

    return v0

    .line 256
    :cond_0
    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const/4 v0, 0x3

    return v0

    .line 256
    :cond_1
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    const/4 v0, 0x4

    return v0

    .line 256
    :cond_2
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    const/4 v0, 0x5

    return v0

    .line 256
    :cond_3
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    const/4 v0, 0x6

    return v0

    .line 268
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private static getLogSubTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "logSubType"    # I

    .prologue
    .line 273
    packed-switch p0, :pswitch_data_0

    .line 285
    const-string/jumbo v0, ""

    return-object v0

    .line 275
    :pswitch_0
    const-string/jumbo v0, "other"

    return-object v0

    .line 277
    :pswitch_1
    const-string/jumbo v0, "email"

    return-object v0

    .line 279
    :pswitch_2
    const-string/jumbo v0, "phone"

    return-object v0

    .line 281
    :pswitch_3
    const-string/jumbo v0, "address"

    return-object v0

    .line 283
    :pswitch_4
    const-string/jumbo v0, "url"

    return-object v0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getLogType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    .line 178
    invoke-static {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get2(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 212
    const/4 v0, 0x0

    return v0

    .line 180
    :sswitch_0
    const/16 v0, 0x454

    return v0

    .line 182
    :sswitch_1
    const/16 v0, 0x455

    return v0

    .line 184
    :sswitch_2
    const/16 v0, 0x456

    return v0

    .line 186
    :sswitch_3
    const/16 v0, 0x457

    return v0

    .line 188
    :sswitch_4
    const/16 v0, 0x458

    return v0

    .line 190
    :sswitch_5
    const/16 v0, 0x459

    return v0

    .line 192
    :sswitch_6
    const/16 v0, 0x45a

    return v0

    .line 194
    :sswitch_7
    const/16 v0, 0x45b

    return v0

    .line 196
    :sswitch_8
    const/16 v0, 0x45c

    return v0

    .line 198
    :sswitch_9
    const/16 v0, 0x44f

    return v0

    .line 200
    :sswitch_a
    const/16 v0, 0x450

    return v0

    .line 202
    :sswitch_b
    const/16 v0, 0x44d

    return v0

    .line 204
    :sswitch_c
    const/16 v0, 0x44e

    return v0

    .line 206
    :sswitch_d
    const/16 v0, 0x451

    return v0

    .line 208
    :sswitch_e
    const/16 v0, 0x452

    return v0

    .line 210
    :sswitch_f
    const/16 v0, 0x453

    return v0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_c
        0x3 -> :sswitch_d
        0x4 -> :sswitch_e
        0x5 -> :sswitch_f
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0xc8 -> :sswitch_9
        0xc9 -> :sswitch_a
    .end sparse-switch
.end method

.method private static getLogTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "logType"    # I

    .prologue
    .line 217
    packed-switch p0, :pswitch_data_0

    .line 251
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 219
    :pswitch_0
    const-string/jumbo v0, "OVERTYPE"

    return-object v0

    .line 221
    :pswitch_1
    const-string/jumbo v0, "COPY"

    return-object v0

    .line 223
    :pswitch_2
    const-string/jumbo v0, "PASTE"

    return-object v0

    .line 225
    :pswitch_3
    const-string/jumbo v0, "CUT"

    return-object v0

    .line 227
    :pswitch_4
    const-string/jumbo v0, "SHARE"

    return-object v0

    .line 229
    :pswitch_5
    const-string/jumbo v0, "SMART_SHARE"

    return-object v0

    .line 231
    :pswitch_6
    const-string/jumbo v0, "DRAG"

    return-object v0

    .line 233
    :pswitch_7
    const-string/jumbo v0, "ABANDON"

    return-object v0

    .line 235
    :pswitch_8
    const-string/jumbo v0, "OTHER"

    return-object v0

    .line 237
    :pswitch_9
    const-string/jumbo v0, "SELECT_ALL"

    return-object v0

    .line 239
    :pswitch_a
    const-string/jumbo v0, "RESET"

    return-object v0

    .line 241
    :pswitch_b
    const-string/jumbo v0, "SELECTION_STARTED"

    return-object v0

    .line 243
    :pswitch_c
    const-string/jumbo v0, "SELECTION_MODIFIED"

    return-object v0

    .line 245
    :pswitch_d
    const-string/jumbo v0, "SMART_SELECTION_SINGLE"

    return-object v0

    .line 247
    :pswitch_e
    const-string/jumbo v0, "SMART_SELECTION_MULTI"

    return-object v0

    .line 249
    :pswitch_f
    const-string/jumbo v0, "AUTO_SELECTION"

    return-object v0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x44d
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getSmartDelta()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-boolean v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    aget v0, v0, v1

    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 292
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 291
    or-int/2addr v0, v1

    return v0

    .line 296
    :cond_0
    return v1
.end method

.method private getVersionTag(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .locals 5
    .param p1, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    .line 306
    iget v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetType:I

    packed-switch v2, :pswitch_data_0

    .line 320
    const-string/jumbo v1, "unknown"

    .line 322
    .local v1, "widgetType":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    .line 323
    const-string/jumbo v0, ""

    .line 325
    .local v0, "version":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 308
    .end local v0    # "version":Ljava/lang/String;
    .end local v1    # "widgetType":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v1, "textview"

    .restart local v1    # "widgetType":Ljava/lang/String;
    goto :goto_0

    .line 311
    .end local v1    # "widgetType":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "webview"

    .restart local v1    # "widgetType":Ljava/lang/String;
    goto :goto_0

    .line 314
    .end local v1    # "widgetType":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "edittext"

    .restart local v1    # "widgetType":Ljava/lang/String;
    goto :goto_0

    .line 317
    .end local v1    # "widgetType":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v1, "edit-webview"

    .restart local v1    # "widgetType":Ljava/lang/String;
    goto :goto_0

    .line 324
    :cond_0
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get4(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "version":Ljava/lang/String;
    goto :goto_1

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startNewSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->endSession()V

    .line 160
    invoke-static {}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->createSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method private writeEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;J)V
    .locals 8
    .param p1, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .param p2, "now"    # J

    .prologue
    .line 137
    iget-wide v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    .line 138
    .local v2, "prevEventDelta":J
    :goto_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v4, 0x44c

    invoke-direct {v1, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 139
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getLogType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    .line 138
    invoke-virtual {v1, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 140
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getLogSubType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    .line 138
    invoke-virtual {v1, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 141
    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {v1, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 143
    iget-wide v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    sub-long v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x45d

    .line 138
    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 144
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x45e

    .line 138
    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 145
    iget v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x460

    .line 138
    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 146
    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mVersionTag:Ljava/lang/String;

    const/16 v5, 0x461

    .line 138
    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 147
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getSmartDelta()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x463

    .line 138
    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 148
    invoke-direct {p0, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getEventDelta(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x462

    .line 138
    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 149
    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    const/16 v5, 0x45f

    .line 138
    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 150
    .local v0, "log":Landroid/metrics/LogMaker;
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 151
    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->debugLog(Landroid/metrics/LogMaker;)V

    .line 152
    iput-wide p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    .line 153
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 154
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 155
    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    .line 156
    return-void

    .line 137
    .end local v0    # "log":Landroid/metrics/LogMaker;
    .end local v2    # "prevEventDelta":J
    :cond_0
    iget-wide v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    sub-long v2, p2, v4

    .restart local v2    # "prevEventDelta":J
    goto/16 :goto_0
.end method


# virtual methods
.method public logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get2(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 107
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    .local v0, "now":J
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get2(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 129
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->writeEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;J)V

    .line 131
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-wrap0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->endSession()V

    .line 134
    :cond_2
    return-void

    .line 110
    :pswitch_0
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->startNewSession()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_3

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 112
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v2

    iput v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 113
    iput-wide v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    goto :goto_0

    :cond_3
    move v2, v3

    .line 111
    goto :goto_1

    .line 117
    :pswitch_1
    iput-boolean v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    .line 118
    invoke-direct {p0, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getVersionTag(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mVersionTag:Ljava/lang/String;

    .line 119
    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    aput v5, v4, v3

    .line 120
    iget-object v3, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    aput v4, v3, v2

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    aget v3, v4, v3

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    aget v2, v3, v2

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 126
    return-void

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
