.class public Lcom/android/keyguard/clock/OPTextClock;
.super Landroid/widget/TextView;
.source "OPTextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/clock/OPTextClock$1;,
        Lcom/android/keyguard/clock/OPTextClock$2;,
        Lcom/android/keyguard/clock/OPTextClock$3;,
        Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAttached:Z

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

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/clock/OPTextClock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/clock/OPTextClock;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/clock/OPTextClock;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/clock/OPTextClock;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/clock/OPTextClock;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/clock/OPTextClock;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/clock/OPTextClock;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/clock/OPTextClock;
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/clock/OPTextClock;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/clock/OPTextClock;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "h:mm a"

    sput-object v0, Lcom/android/keyguard/clock/OPTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 123
    const-string/jumbo v0, "H:mm"

    sput-object v0, Lcom/android/keyguard/clock/OPTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/OPTextClock$1;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/OPTextClock$2;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    .line 558
    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/OPTextClock$3;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 198
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->init()V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/clock/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 167
    new-instance v1, Lcom/android/keyguard/clock/OPTextClock$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/clock/OPTextClock$1;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v1, Lcom/android/keyguard/clock/OPTextClock$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/clock/OPTextClock$2;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    .line 558
    new-instance v1, Lcom/android/keyguard/clock/OPTextClock$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/clock/OPTextClock$3;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 236
    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    .line 235
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 239
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 240
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->init()V

    .line 246
    return-void

    .line 241
    :catchall_0
    move-exception v1

    .line 242
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 521
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
    .line 475
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat(Z)V

    .line 476
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 6
    .param p1, "handleTicker"    # Z

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 498
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 500
    .local v2, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_1

    .line 501
    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/keyguard/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 502
    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Lcom/android/keyguard/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 508
    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    .line 509
    .local v1, "hadSeconds":Z
    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    .line 511
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    if-eq v1, v3, :cond_0

    .line 512
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    :cond_0
    :goto_1
    return-void

    .line 504
    .end local v1    # "hadSeconds":Z
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/keyguard/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 505
    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Lcom/android/keyguard/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 513
    .restart local v1    # "hadSeconds":Z
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 251
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 252
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 255
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 259
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/keyguard/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat(Z)V

    .line 262
    return-void
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 621
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 623
    return-void
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 590
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 592
    new-instance v1, Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;-><init>(Lcom/android/keyguard/clock/OPTextClock;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 595
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mShowCurrentUserTime:Z

    if-eqz v1, :cond_2

    .line 596
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 597
    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 596
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 603
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 599
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 600
    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 599
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 6

    .prologue
    .line 568
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 572
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 582
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    .line 581
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 587
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 615
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 617
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 610
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    const/4 v2, 0x0

    .line 628
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 630
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 631
    .local v0, "s":Ljava/lang/CharSequence;
    const-string/jumbo v3, "format12Hour"

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 634
    const-string/jumbo v3, "format24Hour"

    if-nez v0, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v1, "format"

    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v1, "hasSeconds"

    iget-boolean v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 637
    return-void

    .line 631
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 634
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 635
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 526
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 527
    iget-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    .line 530
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->registerReceiver()V

    .line 531
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->registerObserver()V

    .line 533
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    .line 535
    iget-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 545
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 547
    iget-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->unregisterReceiver()V

    .line 549
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->unregisterObserver()V

    .line 551
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    .line 555
    :cond_0
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 316
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat()V

    .line 317
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    .line 318
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 374
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat()V

    .line 375
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    .line 376
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/android/keyguard/clock/OPTextClock;->mShowCurrentUserTime:Z

    .line 399
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat()V

    .line 400
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    .line 401
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->unregisterObserver()V

    .line 402
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->registerObserver()V

    .line 403
    return-void
.end method
