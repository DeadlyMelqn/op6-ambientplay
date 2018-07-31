.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I

.field public static mEnableReceiveTimetick:Z

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field private mNowText:Ljava/lang/String;

.field private mShowRelativeTime:Z

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method static synthetic -get0(Landroid/widget/DateTimeView;)J
    .locals 2
    .param p0, "-this"    # Landroid/widget/DateTimeView;

    .prologue
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    .line 510
    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/DateTimeView;->mEnableReceiveTimetick:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 83
    sget-object v5, Lcom/android/internal/R$styleable;->DateTimeView:[I

    .line 82
    invoke-virtual {p1, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 86
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 87
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 88
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 89
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 87
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 92
    .local v4, "relative":Z
    invoke-virtual {p0, v4}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    goto :goto_1

    .line 96
    .end local v2    # "attr":I
    .end local v4    # "relative":Z
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private computeNextMidnight(Ljava/util/TimeZone;)J
    .locals 4
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v3, 0x0

    .line 296
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 297
    .local v0, "c":Landroid/icu/util/Calendar;
    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 298
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 299
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 300
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 301
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 302
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 303
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static dayDistance(Ljava/util/TimeZone;JJ)I
    .locals 5
    .param p0, "timeZone"    # Ljava/util/TimeZone;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 324
    invoke-virtual {p0, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 325
    invoke-virtual {p0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {p1, p2, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 324
    sub-int/2addr v0, v1

    return v0
.end method

.method public static enableReceiveTimetcik(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 512
    sput-boolean p0, Landroid/widget/DateTimeView;->mEnableReceiveTimetick:Z

    .line 513
    return-void
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static onTimeChangeByKeyguard()V
    .locals 2

    .prologue
    .line 516
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 517
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    invoke-virtual {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->updateAll()V

    .line 521
    return-void
.end method

.method public static setReceiverHandler(Landroid/os/Handler;)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 398
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 399
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_0

    .line 400
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .end local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    invoke-direct {v0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    .line 401
    .restart local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 403
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    .line 404
    return-void
.end method

.method private updateNowText()V
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 318
    const v1, 0x10403e9

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 319
    return-void
.end method

.method private updateRelativeTime()V
    .locals 14

    .prologue
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 231
    .local v6, "now":J
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 234
    .local v2, "duration":J
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v10, v6, v10

    if-ltz v10, :cond_0

    const/4 v1, 0x1

    .line 236
    .local v1, "past":Z
    :goto_0
    const-wide/32 v10, 0xea60

    cmp-long v10, v2, v10

    if-gez v10, :cond_1

    .line 237
    iget-object v10, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-virtual {p0, v10}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 239
    return-void

    .line 234
    .end local v1    # "past":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "past":Z
    goto :goto_0

    .line 240
    :cond_1
    const-wide/32 v10, 0x36ee80

    cmp-long v10, v2, v10

    if-gez v10, :cond_4

    .line 241
    const-wide/32 v10, 0xea60

    div-long v10, v2, v10

    long-to-int v0, v10

    .line 242
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_3

    .line 243
    const v10, 0x115000c

    .line 242
    :goto_1
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 242
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, "result":Ljava/lang/String;
    const-wide/32 v4, 0xea60

    .line 281
    .local v4, "millisIncrease":J
    :goto_2
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_2

    .line 282
    if-eqz v1, :cond_c

    .line 283
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/lit8 v12, v0, 0x1

    int-to-long v12, v12

    mul-long/2addr v12, v4

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 288
    :cond_2
    :goto_3
    invoke-virtual {p0, v8}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void

    .line 244
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_3
    const v10, 0x115000d

    goto :goto_1

    .line 248
    .end local v0    # "count":I
    :cond_4
    const-wide/32 v10, 0x5265c00

    cmp-long v10, v2, v10

    if-gez v10, :cond_6

    .line 249
    const-wide/32 v10, 0x36ee80

    div-long v10, v2, v10

    long-to-int v0, v10

    .line 250
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_5

    .line 251
    const v10, 0x1150008

    .line 250
    :goto_4
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 250
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 255
    .restart local v8    # "result":Ljava/lang/String;
    const-wide/32 v4, 0x36ee80

    .restart local v4    # "millisIncrease":J
    goto :goto_2

    .line 252
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_5
    const v10, 0x1150009

    goto :goto_4

    .line 256
    .end local v0    # "count":I
    :cond_6
    const-wide v10, 0x7528ad000L

    cmp-long v10, v2, v10

    if-gez v10, :cond_a

    .line 258
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    .line 259
    .local v9, "timeZone":Ljava/util/TimeZone;
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v9, v10, v11, v6, v7}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 260
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_8

    .line 261
    const v10, 0x1150004

    .line 260
    :goto_5
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 260
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 265
    .restart local v8    # "result":Ljava/lang/String;
    if-nez v1, :cond_7

    const/4 v10, 0x1

    if-eq v0, v10, :cond_9

    .line 266
    :cond_7
    invoke-direct {p0, v9}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/util/TimeZone;)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 267
    const-wide/16 v4, -0x1

    .line 265
    .restart local v4    # "millisIncrease":J
    goto/16 :goto_2

    .line 262
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_8
    const v10, 0x1150005

    goto :goto_5

    .line 269
    .restart local v8    # "result":Ljava/lang/String;
    :cond_9
    const-wide/32 v4, 0x5265c00

    .restart local v4    # "millisIncrease":J
    goto/16 :goto_2

    .line 273
    .end local v0    # "count":I
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "timeZone":Ljava/util/TimeZone;
    :cond_a
    const-wide v10, 0x7528ad000L

    div-long v10, v2, v10

    long-to-int v0, v10

    .line 274
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_b

    .line 275
    const v10, 0x1150010

    .line 274
    :goto_6
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 274
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 279
    .restart local v8    # "result":Ljava/lang/String;
    const-wide v4, 0x7528ad000L

    .restart local v4    # "millisIncrease":J
    goto/16 :goto_2

    .line 276
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_b
    const v10, 0x1150011

    goto :goto_6

    .line 285
    .restart local v4    # "millisIncrease":J
    .restart local v8    # "result":Ljava/lang/String;
    :cond_c
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v12, v0

    mul-long/2addr v12, v4

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto/16 :goto_3
.end method


# virtual methods
.method clearFormatAndUpdate()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 334
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 335
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 102
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 103
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .end local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    invoke-direct {v0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    .line 105
    .restart local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 108
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 309
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 310
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 311
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 113
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 114
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 340
    iget-boolean v8, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v8, :cond_0

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 344
    .local v4, "now":J
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 346
    .local v2, "duration":J
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_1

    const/4 v1, 0x1

    .line 348
    .local v1, "past":Z
    :goto_0
    const-wide/32 v8, 0xea60

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    .line 349
    iget-object v6, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 390
    .local v6, "result":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .end local v1    # "past":Z
    .end local v2    # "duration":J
    .end local v4    # "now":J
    .end local v6    # "result":Ljava/lang/String;
    :cond_0
    return-void

    .line 346
    .restart local v2    # "duration":J
    .restart local v4    # "now":J
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "past":Z
    goto :goto_0

    .line 350
    :cond_2
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v2, v8

    if-gez v8, :cond_4

    .line 351
    const-wide/32 v8, 0xea60

    div-long v8, v2, v8

    long-to-int v0, v8

    .line 352
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_3

    .line 353
    const v8, 0x115000a

    .line 352
    :goto_2
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 352
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1

    .line 355
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const v8, 0x115000b

    goto :goto_2

    .line 359
    .end local v0    # "count":I
    :cond_4
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v2, v8

    if-gez v8, :cond_6

    .line 360
    const-wide/32 v8, 0x36ee80

    div-long v8, v2, v8

    long-to-int v0, v8

    .line 361
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_5

    .line 362
    const v8, 0x1150006

    .line 361
    :goto_3
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 361
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1

    .line 364
    .end local v6    # "result":Ljava/lang/String;
    :cond_5
    const v8, 0x1150007

    goto :goto_3

    .line 368
    .end local v0    # "count":I
    :cond_6
    const-wide v8, 0x7528ad000L

    cmp-long v8, v2, v8

    if-gez v8, :cond_8

    .line 370
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 371
    .local v7, "timeZone":Ljava/util/TimeZone;
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v7, v8, v9, v4, v5}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 372
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_7

    .line 373
    const v8, 0x1150002

    .line 372
    :goto_4
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 372
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 375
    .end local v6    # "result":Ljava/lang/String;
    :cond_7
    const v8, 0x1150003

    goto :goto_4

    .line 381
    .end local v0    # "count":I
    .end local v7    # "timeZone":Ljava/util/TimeZone;
    :cond_8
    const-wide v8, 0x7528ad000L

    div-long v8, v2, v8

    long-to-int v0, v8

    .line 382
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_9

    .line 383
    const v8, 0x115000e

    .line 382
    :goto_5
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 382
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 385
    .end local v6    # "result":Ljava/lang/String;
    :cond_9
    const v8, 0x115000f

    goto :goto_5
.end method

.method public setShowRelativeTime(Z)V
    .locals 0
    .param p1, "showRelativeTime"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 130
    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 131
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 132
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 133
    return-void
.end method

.method public setTime(J)V
    .locals 9
    .param p1, "time"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 121
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 122
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 123
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 124
    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 125
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 126
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 138
    if-eq p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 139
    .local v0, "gotVisible":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 143
    :cond_0
    return-void

    .line 138
    .end local v0    # "gotVisible":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "gotVisible":Z
    goto :goto_0
.end method

.method update()V
    .locals 22

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    if-eqz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v15

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v15, v0, :cond_1

    .line 147
    :cond_0
    return-void

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v15, :cond_2

    .line 150
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    .line 151
    return-void

    .line 155
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 157
    .local v14, "time":Ljava/util/Date;
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 158
    .local v12, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 159
    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->second:I

    .line 161
    iget v15, v12, Landroid/text/format/Time;->hour:I

    add-int/lit8 v15, v15, -0xc

    iput v15, v12, Landroid/text/format/Time;->hour:I

    .line 162
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 163
    .local v18, "twelveHoursBefore":J
    iget v15, v12, Landroid/text/format/Time;->hour:I

    add-int/lit8 v15, v15, 0xc

    iput v15, v12, Landroid/text/format/Time;->hour:I

    .line 164
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 165
    .local v16, "twelveHoursAfter":J
    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->hour:I

    .line 166
    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->minute:I

    .line 167
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 168
    .local v8, "midnightBefore":J
    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v12, Landroid/text/format/Time;->monthDay:I

    .line 169
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 171
    .local v6, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 172
    .local v10, "nowMillis":J
    invoke-virtual {v12, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 173
    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->second:I

    .line 174
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 178
    cmp-long v15, v10, v8

    if-ltz v15, :cond_4

    cmp-long v15, v10, v6

    if-gez v15, :cond_4

    .line 180
    :cond_3
    const/4 v4, 0x0

    .line 190
    .local v4, "display":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v4, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v15, :cond_6

    .line 192
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 208
    .local v5, "format":Ljava/text/DateFormat;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {v5, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 209
    .local v13, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    if-nez v4, :cond_8

    .line 214
    cmp-long v15, v16, v6

    if-lez v15, :cond_7

    .end local v16    # "twelveHoursAfter":J
    :goto_2
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 227
    .end local v18    # "twelveHoursBefore":J
    :goto_3
    return-void

    .line 179
    .end local v4    # "display":I
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v13    # "text":Ljava/lang/String;
    .restart local v16    # "twelveHoursAfter":J
    .restart local v18    # "twelveHoursBefore":J
    :cond_4
    cmp-long v15, v10, v18

    if-ltz v15, :cond_5

    cmp-long v15, v10, v16

    if-ltz v15, :cond_3

    .line 184
    :cond_5
    const/4 v4, 0x1

    .line 185
    .restart local v4    # "display":I
    goto :goto_0

    .line 194
    :cond_6
    packed-switch v4, :pswitch_data_0

    .line 202
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unknown display value: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 196
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v5

    .line 204
    .restart local v5    # "format":Ljava/text/DateFormat;
    :goto_4
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_1

    .line 199
    .end local v5    # "format":Ljava/text/DateFormat;
    :pswitch_1
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    .restart local v5    # "format":Ljava/text/DateFormat;
    goto :goto_4

    .restart local v13    # "text":Ljava/lang/String;
    :cond_7
    move-wide/from16 v16, v6

    .line 214
    goto :goto_2

    .line 217
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v20, v0

    cmp-long v15, v20, v10

    if-gez v15, :cond_9

    .line 219
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_3

    .line 223
    :cond_9
    cmp-long v15, v18, v8

    if-gez v15, :cond_a

    .end local v18    # "twelveHoursBefore":J
    :goto_5
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_3

    .restart local v18    # "twelveHoursBefore":J
    :cond_a
    move-wide/from16 v18, v8

    .line 224
    goto :goto_5

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
