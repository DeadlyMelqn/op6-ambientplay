.class public Lcom/oneplus/aod/clock/OPTextDate;
.super Landroid/view/View;
.source "OPTextDate.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/clock/OPTextDate$1;,
        Lcom/oneplus/aod/clock/OPTextDate$2;,
        Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

.field private static final FONT_DATE:Ljava/lang/String; = "sans-serif-regular"

.field private static final FONT_DATE_DEFAULT:Ljava/lang/String; = "sans-serif"

.field private static final FONT_HOUR:Ljava/lang/String; = "sans-serif-regular"

.field private static final FONT_MIN:Ljava/lang/String; = "sans-serif-thin"


# instance fields
.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDateFontBaseLineY:F

.field private mDatePaint:Landroid/graphics/Paint;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

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

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/clock/OPTextDate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextDate;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/aod/clock/OPTextDate;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextDate;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/aod/clock/OPTextDate;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextDate;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/aod/clock/OPTextDate;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextDate;
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextDate;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/aod/clock/OPTextDate;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/clock/OPTextDate;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "h:mm a"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextDate;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 125
    const-string/jumbo v0, "H:mm"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextDate;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 176
    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$1;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$2;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    .line 207
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    .line 208
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->init()V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/clock/OPTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/clock/OPTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 241
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 245
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 152
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 176
    new-instance v1, Lcom/oneplus/aod/clock/OPTextDate$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/clock/OPTextDate$1;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v1, Lcom/oneplus/aod/clock/OPTextDate$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/clock/OPTextDate$2;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    .line 247
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    .line 249
    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    .line 248
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 251
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 253
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->init()V

    .line 259
    return-void

    .line 254
    :catchall_0
    move-exception v1

    .line 255
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 534
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
    .line 490
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat(Z)V

    .line 491
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 6
    .param p1, "handleTicker"    # Z

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->is24HourModeEnabled()Z

    move-result v0

    .line 513
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 514
    .local v2, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_1

    .line 515
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 516
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    .line 521
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mHasSeconds:Z

    .line 522
    .local v1, "hadSeconds":Z
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mHasSeconds:Z

    .line 524
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mHasSeconds:Z

    if-eq v1, v3, :cond_0

    .line 525
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 528
    :cond_0
    :goto_1
    return-void

    .line 518
    .end local v1    # "hadSeconds":Z
    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 519
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 526
    .restart local v1    # "hadSeconds":Z
    :cond_2
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private drawText(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 596
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v2

    .line 597
    .local v2, "isRTL":Z
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getWidth()I

    move-result v6

    .line 598
    .local v6, "w":I
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    .line 600
    .local v7, "xPos":I
    iget v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v10, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v8, v10, :cond_1

    const/4 v1, 0x1

    .line 601
    .local v1, "isDefaultClock":Z
    :goto_0
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v1, :cond_2

    const v8, 0x7f0b012f

    :goto_1
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v4, v8

    .line 602
    .local v4, "textSize":F
    if-eqz v1, :cond_3

    const-string/jumbo v0, "sans-serif"

    .line 603
    .local v0, "font":Ljava/lang/String;
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 605
    .local v3, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_4

    const/4 v8, 0x1

    :goto_3
    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 606
    .local v5, "tf":Landroid/graphics/Typeface;
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 607
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 608
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string/jumbo v10, "0.15"

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 609
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a02dd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, p1, v9, v10, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 612
    iget v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v9, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-ne v8, v9, :cond_6

    .line 614
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 615
    if-eqz v2, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v8, v6, v8

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    :goto_4
    int-to-float v8, v8

    iget v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 621
    :cond_0
    :goto_5
    return-void

    .line 600
    .end local v0    # "font":Ljava/lang/String;
    .end local v1    # "isDefaultClock":Z
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "textSize":F
    .end local v5    # "tf":Landroid/graphics/Typeface;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isDefaultClock":Z
    goto :goto_0

    .line 601
    :cond_2
    const v8, 0x7f0b012e

    goto :goto_1

    .line 602
    .restart local v4    # "textSize":F
    :cond_3
    const-string/jumbo v0, "sans-serif-regular"

    .restart local v0    # "font":Ljava/lang/String;
    goto :goto_2

    .restart local v3    # "rect":Landroid/graphics/Rect;
    :cond_4
    move v8, v9

    .line 605
    goto :goto_3

    .line 615
    .restart local v5    # "tf":Landroid/graphics/Typeface;
    :cond_5
    iget v8, v3, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    goto :goto_4

    .line 616
    :cond_6
    iget v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v9, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    if-eq v8, v9, :cond_7

    iget v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v9, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_ANALOG:I

    if-ne v8, v9, :cond_0

    .line 618
    :cond_7
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 619
    int-to-float v8, v7

    iget v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method private drawTextDefault(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v7

    .line 626
    .local v7, "isRTL":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/clock/OPTextDate;->getWidth()I

    move-result v17

    .line 627
    .local v17, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v21

    div-int/lit8 v20, v21, 0x2

    .line 630
    .local v20, "xPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    move/from16 v21, v0

    sget v22, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 631
    .local v6, "isDefaultClock":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    if-eqz v6, :cond_2

    const v21, 0x7f0b012f

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v15, v0

    .line 632
    .local v15, "textSize":F
    if-eqz v6, :cond_3

    const-string/jumbo v5, "sans-serif"

    .line 633
    .local v5, "font":Ljava/lang/String;
    :goto_2
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 635
    .local v13, "rect":Landroid/graphics/Rect;
    if-eqz v6, :cond_4

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v16

    .line 636
    .local v16, "tf":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const-string/jumbo v22, "0.15"

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a02dd

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 642
    .local v8, "locale":Ljava/util/Locale;
    const/4 v14, 0x0

    .line 643
    .local v14, "switchPosition":Z
    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "zh_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 644
    const/4 v14, 0x1

    .line 647
    :cond_0
    const-string/jumbo v21, "MMMMd"

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 648
    .local v10, "month_day_format":Ljava/lang/CharSequence;
    const-string/jumbo v21, "EEEE"

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 649
    .local v19, "week_format":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 650
    .local v9, "monthDay":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 654
    .local v18, "week":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 655
    move-object v11, v9

    .line 656
    .local v11, "position_fist":Ljava/lang/String;
    move-object/from16 v12, v18

    .line 662
    .local v12, "position_second":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 663
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 664
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 670
    .local v4, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 671
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v22, v22, v23

    iget v0, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 672
    return-void

    .line 630
    .end local v4    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v5    # "font":Ljava/lang/String;
    .end local v6    # "isDefaultClock":Z
    .end local v8    # "locale":Ljava/util/Locale;
    .end local v9    # "monthDay":Ljava/lang/String;
    .end local v10    # "month_day_format":Ljava/lang/CharSequence;
    .end local v11    # "position_fist":Ljava/lang/String;
    .end local v12    # "position_second":Ljava/lang/String;
    .end local v13    # "rect":Landroid/graphics/Rect;
    .end local v14    # "switchPosition":Z
    .end local v15    # "textSize":F
    .end local v16    # "tf":Landroid/graphics/Typeface;
    .end local v18    # "week":Ljava/lang/String;
    .end local v19    # "week_format":Ljava/lang/CharSequence;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "isDefaultClock":Z
    goto/16 :goto_0

    .line 631
    :cond_2
    const v21, 0x7f0b012e

    goto/16 :goto_1

    .line 632
    .restart local v15    # "textSize":F
    :cond_3
    const-string/jumbo v5, "sans-serif-regular"

    .restart local v5    # "font":Ljava/lang/String;
    goto/16 :goto_2

    .line 635
    .restart local v13    # "rect":Landroid/graphics/Rect;
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 658
    .restart local v8    # "locale":Ljava/util/Locale;
    .restart local v9    # "monthDay":Ljava/lang/String;
    .restart local v10    # "month_day_format":Ljava/lang/CharSequence;
    .restart local v14    # "switchPosition":Z
    .restart local v16    # "tf":Landroid/graphics/Typeface;
    .restart local v18    # "week":Ljava/lang/String;
    .restart local v19    # "week_format":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v11, v18

    .line 659
    .restart local v11    # "position_fist":Ljava/lang/String;
    move-object v12, v9

    .restart local v12    # "position_second":Ljava/lang/String;
    goto :goto_4
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 264
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 265
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 268
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 272
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->reloadDimen()V

    .line 273
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/aod/clock/OPTextDate;->createTime(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, v3}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat(Z)V

    .line 277
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 278
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "sans-serif-regular"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 279
    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->invalidate()V

    .line 552
    const/4 v1, 0x0

    .line 554
    .local v1, "height":F
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 556
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    add-float v1, v4, v5

    .line 557
    const/4 v3, 0x0

    .line 558
    .local v3, "topMargin":I
    iget v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v5, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v4, v5, :cond_1

    .line 559
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v1

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v1, v4, v5

    .line 560
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0133

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 564
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 565
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    float-to-int v4, v1

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 566
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 567
    invoke-virtual {p0, v2}, Lcom/oneplus/aod/clock/OPTextDate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/aod/clock/OPTextDate;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 569
    return-void

    .line 561
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v5, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_ANALOG:I

    if-ne v4, v5, :cond_0

    .line 562
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0134

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0
.end method

.method private reloadDimen()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    .line 592
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 539
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 540
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 541
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/clock/OPTextDate;->setTimeZone(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 546
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 547
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 573
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 574
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 575
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->reloadDimen()V

    .line 578
    iget v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-eq v3, v4, :cond_0

    .line 579
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 580
    .local v0, "date":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "text":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/oneplus/aod/clock/OPTextDate;->drawText(Ljava/lang/String;Landroid/graphics/Canvas;)V

    .line 586
    .end local v0    # "date":Ljava/lang/CharSequence;
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 587
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0132

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 588
    return-void

    .line 583
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextDate;->drawTextDefault(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setClockStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 675
    iput p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    .line 676
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    .line 344
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 345
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 346
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    .line 402
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 403
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 404
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 331
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 333
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 334
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 335
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 389
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 391
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 392
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 393
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mShowCurrentUserTime:Z

    .line 416
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 417
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 418
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 477
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    .line 479
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextDate;->createTime(Ljava/lang/String;)V

    .line 480
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 481
    return-void
.end method
