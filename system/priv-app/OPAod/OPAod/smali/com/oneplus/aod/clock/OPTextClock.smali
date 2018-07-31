.class public Lcom/oneplus/aod/clock/OPTextClock;
.super Landroid/view/View;
.source "OPTextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/clock/OPTextClock$1;,
        Lcom/oneplus/aod/clock/OPTextClock$2;,
        Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

.field private static final FONT_DEFAULT:Ljava/lang/String; = "sans-serif"

.field private static final FONT_DIGITAL:Ljava/lang/String; = "sans-serif-condensed"

.field private static final FONT_HOUR:Ljava/lang/String; = "sans-serif-regular"

.field private static final FONT_MIN:Ljava/lang/String; = "sans-serif-thin"


# instance fields
.field private mAmPmPaint:Landroid/graphics/Paint;

.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mDigitColorRed:I

.field private mDigitColorWhite:I

.field private mFontBaseLineY:F

.field private mFontPadding:F

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mHourPaint:Landroid/graphics/Paint;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinPaint:Landroid/graphics/Paint;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/clock/OPTextClock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextClock;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/aod/clock/OPTextClock;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextClock;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/aod/clock/OPTextClock;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextClock;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/aod/clock/OPTextClock;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextClock;
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/aod/clock/OPTextClock;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextClock;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "h:mm a"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 135
    const-string/jumbo v0, "H:mm"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    .line 194
    new-instance v0, Lcom/oneplus/aod/clock/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextClock$1;-><init>(Lcom/oneplus/aod/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Lcom/oneplus/aod/clock/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextClock$2;-><init>(Lcom/oneplus/aod/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    .line 225
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    .line 226
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->init()V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/clock/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/clock/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 259
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 263
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 168
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    .line 170
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    .line 194
    new-instance v1, Lcom/oneplus/aod/clock/OPTextClock$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/clock/OPTextClock$1;-><init>(Lcom/oneplus/aod/clock/OPTextClock;)V

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v1, Lcom/oneplus/aod/clock/OPTextClock$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/clock/OPTextClock$2;-><init>(Lcom/oneplus/aod/clock/OPTextClock;)V

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    .line 265
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    .line 267
    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    .line 266
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 269
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 271
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->init()V

    .line 277
    return-void

    .line 272
    :catchall_0
    move-exception v1

    .line 273
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 561
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    .end local p2    # "c":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .restart local p2    # "c":Ljava/lang/CharSequence;
    :cond_0
    move-object p2, p1

    goto :goto_0

    :cond_1
    move-object p2, p0

    goto :goto_0
.end method

.method private chooseFormat()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat(Z)V

    .line 518
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 6
    .param p1, "handleTicker"    # Z

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 540
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 541
    .local v2, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_1

    .line 542
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/oneplus/aod/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 543
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Lcom/oneplus/aod/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 548
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHasSeconds:Z

    .line 549
    .local v1, "hadSeconds":Z
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHasSeconds:Z

    .line 551
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHasSeconds:Z

    if-eq v1, v3, :cond_0

    .line 552
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 555
    :cond_0
    :goto_1
    return-void

    .line 545
    .end local v1    # "hadSeconds":Z
    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/oneplus/aod/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 546
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Lcom/oneplus/aod/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 553
    .restart local v1    # "hadSeconds":Z
    :cond_2
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private drawClockClassic(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v15

    .line 618
    .local v15, "isRTL":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/clock/OPTextClock;->getWidth()I

    move-result v21

    .line 619
    .local v21, "w":I
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 621
    .local v18, "rect":Landroid/graphics/Rect;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v7, v0, [C

    .line 622
    .local v7, "c":[C
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/clock/OPTextClock;->getTime()Ljava/lang/String;

    move-result-object v20

    .line 624
    .local v20, "time":Ljava/lang/String;
    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string/jumbo v6, " "

    .line 625
    .local v6, "breakPoint":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 627
    .local v5, "breakIndex":I
    const-string/jumbo v11, ""

    .line 628
    .local v11, "hour":Ljava/lang/String;
    const-string/jumbo v16, ""

    .line 630
    .local v16, "min":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v5, :cond_1

    .line 631
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 630
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 624
    .end local v5    # "breakIndex":I
    .end local v6    # "breakPoint":Ljava/lang/String;
    .end local v11    # "hour":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v16    # "min":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "."

    .restart local v6    # "breakPoint":Ljava/lang/String;
    goto :goto_0

    .line 634
    .restart local v5    # "breakIndex":I
    .restart local v11    # "hour":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v16    # "min":Ljava/lang/String;
    :cond_1
    add-int/lit8 v14, v5, 0x1

    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v14, v0, :cond_2

    .line 635
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 634
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 638
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 640
    .local v12, "hourSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0127

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const-string/jumbo v24, "sans-serif-regular"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0127

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const-string/jumbo v24, "sans-serif-thin"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0129

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const-string/jumbo v24, "sans-serif-regular"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 651
    if-eqz v15, :cond_6

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v25

    move/from16 v3, v24

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 656
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v23

    sub-int v23, v21, v23

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v9, v0

    .line 657
    .local v9, "drawX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 658
    .local v10, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 662
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 663
    .local v22, "width":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 665
    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontPadding:F

    move/from16 v23, v0

    sub-float v9, v9, v23

    .line 669
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v12, v0, :cond_3

    .line 670
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x1

    aput-char v23, v7, v24

    .line 672
    const/16 v23, 0x1

    aget-char v23, v7, v23

    const/16 v24, 0x31

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    .line 673
    .local v8, "color":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    const/16 v23, 0x1

    aget v23, v22, v23

    sub-float v9, v9, v23

    .line 675
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x1

    aget-char v24, v7, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 678
    .end local v8    # "color":I
    :cond_3
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x0

    aput-char v23, v7, v24

    .line 680
    const/16 v23, 0x0

    aget-char v23, v7, v23

    const/16 v24, 0x31

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    .line 681
    .restart local v8    # "color":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 682
    const/16 v23, 0x0

    aget v23, v22, v23

    sub-float v9, v9, v23

    .line 683
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-char v24, v7, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 747
    .end local v9    # "drawX":F
    :goto_5
    return-void

    .line 672
    .end local v8    # "color":I
    .restart local v9    # "drawX":F
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .restart local v8    # "color":I
    goto/16 :goto_3

    .line 680
    .end local v8    # "color":I
    :cond_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .restart local v8    # "color":I
    goto :goto_4

    .line 698
    .end local v8    # "color":I
    .end local v9    # "drawX":F
    .end local v10    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v22    # "width":[F
    :cond_6
    const/4 v13, 0x0

    .line 702
    .local v13, "hourWidth":F
    const-string/jumbo v23, "sans-serif-regular"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    .line 703
    .local v19, "tf":Landroid/graphics/Typeface;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x31

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    .line 704
    .restart local v8    # "color":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 706
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x0

    aput-char v23, v7, v24

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-char v24, v7, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 708
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v17, v0

    .line 709
    .local v17, "offsetX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 710
    .restart local v10    # "fm":Landroid/graphics/Paint$FontMetrics;
    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 711
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-char v24, v7, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 713
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 714
    .restart local v22    # "width":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 716
    const/16 v23, 0x0

    aget v13, v22, v23

    .line 718
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v12, v0, :cond_7

    .line 719
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x1

    aput-char v23, v7, v24

    .line 721
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x31

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    .line 722
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x1

    aget-char v24, v7, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 725
    const/16 v23, 0x1

    aget v23, v22, v23

    add-float v13, v13, v23

    .line 729
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 730
    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 731
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontPadding:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 703
    .end local v8    # "color":I
    .end local v10    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v17    # "offsetX":I
    .end local v22    # "width":[F
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .restart local v8    # "color":I
    goto/16 :goto_6

    .line 721
    .restart local v10    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v17    # "offsetX":I
    .restart local v22    # "width":[F
    :cond_9
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    goto/16 :goto_7
.end method

.method private drawClockDefault(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 774
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 776
    .local v16, "rect":Landroid/graphics/Rect;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v7, v0, [C

    .line 777
    .local v7, "c":[C
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/clock/OPTextClock;->getTime()Ljava/lang/String;

    move-result-object v17

    .line 779
    .local v17, "time":Ljava/lang/String;
    const-string/jumbo v20, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v6, " "

    .line 780
    .local v6, "breakPoint":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 782
    .local v5, "breakIndex":I
    const-string/jumbo v10, ""

    .line 783
    .local v10, "hour":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 784
    .local v14, "min":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v5, :cond_1

    .line 785
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 784
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 779
    .end local v5    # "breakIndex":I
    .end local v6    # "breakPoint":Ljava/lang/String;
    .end local v10    # "hour":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "min":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "."

    .restart local v6    # "breakPoint":Ljava/lang/String;
    goto :goto_0

    .line 788
    .restart local v5    # "breakIndex":I
    .restart local v10    # "hour":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v14    # "min":Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v5, 0x1

    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_2

    .line 789
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 788
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 792
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 794
    .local v11, "hourSize":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_3

    .line 795
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 802
    :cond_3
    const/4 v12, 0x0

    .line 804
    .local v12, "hourWidth":F
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 805
    .local v18, "width":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 806
    const/16 v20, 0x0

    aget v12, v18, v20

    .line 808
    const/16 v19, 0x0

    .line 810
    .local v19, "xPosition":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aget v21, v18, v21

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 814
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x31

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    .line 815
    .local v8, "color":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 816
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x0

    aput-char v20, v7, v21

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-char v21, v7, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 818
    move/from16 v15, v19

    .line 819
    .local v15, "offsetX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    .line 820
    .local v9, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v0, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 821
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    aget-char v21, v7, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 823
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x1

    aput-char v20, v7, v21

    .line 824
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x31

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    .line 825
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x1

    aget-char v21, v7, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    .line 831
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 850
    return-void

    .line 814
    .end local v8    # "color":I
    .end local v9    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v15    # "offsetX":I
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .restart local v8    # "color":I
    goto/16 :goto_3

    .line 824
    .restart local v9    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v15    # "offsetX":I
    :cond_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    goto/16 :goto_4
.end method

.method private drawClockDigital(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v7, 0x7f0b012c

    const/4 v8, 0x0

    .line 750
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v2

    .line 752
    .local v2, "isRTL":Z
    const/4 v5, 0x2

    new-array v0, v5, [C

    .line 753
    .local v0, "c":[C
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "time":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 755
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string/jumbo v6, "sans-serif-regular"

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 756
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 757
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 758
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string/jumbo v6, "sans-serif-thin"

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 759
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0129

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 760
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    const-string/jumbo v6, "sans-serif-regular"

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 764
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 766
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 767
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 769
    .local v4, "xPos":I
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-float v6, v4

    iget v7, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 770
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 280
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 282
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 283
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 286
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 290
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->reloadDimen()V

    .line 291
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/aod/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, v3}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat(Z)V

    .line 295
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    .line 296
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .line 298
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "sans-serif-regular"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 300
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 301
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "sans-serif-thin"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 302
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 304
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "sans-serif-regular"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 305
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 577
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->updateTextStyle()V

    .line 580
    const/4 v1, 0x0

    .line 582
    .local v1, "height":F
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 585
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v3, v4, :cond_0

    .line 586
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v5

    add-float v1, v3, v5

    .line 591
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 592
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    float-to-int v3, v1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 593
    invoke-virtual {p0, v2}, Lcom/oneplus/aod/clock/OPTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/aod/clock/OPTextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 595
    return-void

    .line 588
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v1, v3, v4

    goto :goto_0
.end method

.method private reloadDimen()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFontPadding:F

    .line 613
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 873
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "time":Ljava/lang/String;
    const-string/jumbo v1, "OPTextClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 566
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 567
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 568
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/clock/OPTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 573
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 574
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 599
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 600
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 601
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->reloadDimen()V

    .line 602
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-ne v0, v1, :cond_1

    .line 603
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->drawClockClassic(Landroid/graphics/Canvas;)V

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    if-ne v0, v1, :cond_2

    .line 605
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->drawClockDigital(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 606
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v0, v1, :cond_0

    .line 607
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->drawClockDefault(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setClockStyle(I)V
    .locals 0
    .param p1, "clockStyle"    # I

    .prologue
    .line 879
    iput p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    .line 880
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    .line 371
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 372
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 373
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    .line 429
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 430
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 431
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 358
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 360
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 361
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 362
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 416
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 418
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 419
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 420
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mShowCurrentUserTime:Z

    .line 443
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 444
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 445
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 504
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    .line 506
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 508
    return-void
.end method

.method public updateTextStyle()V
    .locals 4

    .prologue
    const v2, 0x7f0b0127

    const/4 v3, 0x0

    .line 855
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-ne v0, v1, :cond_1

    .line 856
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 857
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-regular"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 858
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 859
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-thin"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 860
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 861
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-regular"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    if-ne v0, v1, :cond_2

    .line 863
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 864
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-condensed"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 865
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 866
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 868
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method
