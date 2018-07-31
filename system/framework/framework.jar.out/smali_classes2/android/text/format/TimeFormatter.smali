.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final DAYSPERLYEAR:I = 0x16e

.field private static final DAYSPERNYEAR:I = 0x16d

.field private static final DAYSPERWEEK:I = 0x7

.field private static final FORCE_LOWER_CASE:I = -0x1

.field private static final HOURSPERDAY:I = 0x18

.field private static final MINSPERHOUR:I = 0x3c

.field private static final MONSPERYEAR:I = 0xc

.field private static final SECSPERMIN:I = 0x3c

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLocaleData:Llibcore/icu/LocaleData;

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final dateOnlyFormat:Ljava/lang/String;

.field private final dateTimeFormat:Ljava/lang/String;

.field private final localeData:Llibcore/icu/LocaleData;

.field private numberFormatter:Ljava/util/Formatter;

.field private outputBuilder:Ljava/lang/StringBuilder;

.field private final timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v3, Landroid/text/format/TimeFormatter;

    monitor-enter v3

    .line 69
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 71
    .local v0, "locale":Ljava/util/Locale;
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 72
    :cond_0
    sput-object v0, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 73
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    .line 75
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x1040621

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    .line 77
    const v2, 0x10403ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    .line 78
    const v2, 0x104018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 81
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_1
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    .line 82
    sget-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    .line 83
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    .line 84
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 86
    return-void

    .line 68
    .end local v0    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static brokenIsLower(C)Z
    .locals 2
    .param p0, "toCheck"    # C

    .prologue
    const/4 v0, 0x0

    .line 476
    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static brokenIsUpper(C)Z
    .locals 2
    .param p0, "toCheck"    # C

    .prologue
    const/4 v0, 0x0

    .line 468
    const/16 v1, 0x41

    if-lt p0, v1, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static brokenToLower(C)C
    .locals 1
    .param p0, "input"    # C

    .prologue
    .line 484
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 485
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    return v0

    .line 487
    :cond_0
    return p0
.end method

.method private static brokenToUpper(C)C
    .locals 1
    .param p0, "input"    # C

    .prologue
    .line 495
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    .line 496
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0

    .line 498
    :cond_0
    return p0
.end method

.method private formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 133
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 134
    .local v1, "formatBuffer":Ljava/nio/CharBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_2

    .line 135
    const/4 v2, 0x1

    .line 136
    .local v2, "outputCurrentChar":Z
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    .line 137
    .local v0, "currentChar":C
    const/16 v3, 0x25

    if-ne v0, v3, :cond_0

    .line 138
    invoke-direct {p0, v1, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z

    move-result v2

    .line 140
    .end local v2    # "outputCurrentChar":Z
    :cond_0
    if-eqz v2, :cond_1

    .line 141
    iget-object v3, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 145
    .end local v0    # "currentChar":C
    :cond_2
    return-void
.end method

.method private static getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "modifier"    # I
    .param p1, "normal"    # Ljava/lang/String;
    .param p2, "underscore"    # Ljava/lang/String;
    .param p3, "dash"    # Ljava/lang/String;
    .param p4, "zero"    # Ljava/lang/String;

    .prologue
    .line 448
    sparse-switch p0, :sswitch_data_0

    .line 456
    return-object p1

    .line 450
    :sswitch_0
    return-object p2

    .line 452
    :sswitch_1
    return-object p3

    .line 454
    :sswitch_2
    return-object p4

    .line 448
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x30 -> :sswitch_2
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z
    .locals 27
    .param p1, "formatBuffer"    # Ljava/nio/CharBuffer;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 151
    const/4 v11, 0x0

    .line 152
    .local v11, "modifier":I
    :goto_0
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1c

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    .line 156
    .local v5, "currentChar":C
    packed-switch v5, :pswitch_data_0

    .line 384
    :pswitch_1
    const/16 v22, 0x1

    return v22

    .line 158
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-ltz v22, :cond_0

    .line 159
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 160
    :cond_0
    const-string/jumbo v22, "?"

    .line 158
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 162
    const/16 v22, 0x0

    return v22

    .line 160
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    aget-object v22, v22, v23

    goto :goto_1

    .line 164
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-ltz v22, :cond_2

    .line 165
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    .line 166
    :cond_2
    const-string/jumbo v22, "?"

    .line 164
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 168
    const/16 v22, 0x0

    return v22

    .line 166
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    aget-object v22, v22, v23

    goto :goto_2

    .line 170
    :pswitch_4
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v11, v0, :cond_6

    .line 171
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    if-ltz v22, :cond_4

    .line 172
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 173
    :cond_4
    const-string/jumbo v22, "?"

    .line 171
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 182
    :goto_4
    const/16 v22, 0x0

    return v22

    .line 174
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v23

    aget-object v22, v22, v23

    goto :goto_3

    .line 177
    :cond_6
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    if-ltz v22, :cond_7

    .line 178
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    .line 179
    :cond_7
    const-string/jumbo v22, "?"

    .line 177
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_4

    .line 179
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v23

    aget-object v22, v22, v23

    goto :goto_5

    .line 185
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    if-ltz v22, :cond_9

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    .line 186
    :cond_9
    const-string/jumbo v22, "?"

    .line 185
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 188
    const/16 v22, 0x0

    return v22

    .line 186
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v23

    aget-object v22, v22, v23

    goto :goto_6

    .line 190
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 191
    const/16 v22, 0x0

    return v22

    .line 193
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 194
    const/16 v22, 0x0

    return v22

    .line 196
    :pswitch_8
    const-string/jumbo v22, "%m/%d/%y"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 197
    const/16 v22, 0x0

    return v22

    .line 199
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 200
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 199
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 201
    const/16 v22, 0x0

    return v22

    .line 211
    :pswitch_a
    move v11, v5

    .line 212
    goto/16 :goto_0

    .line 214
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%2d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 215
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 214
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 216
    const/16 v22, 0x0

    return v22

    .line 218
    :pswitch_c
    const-string/jumbo v22, "%Y-%m-%d"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 219
    const/16 v22, 0x0

    return v22

    .line 221
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 222
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 221
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 223
    const/16 v22, 0x0

    return v22

    .line 225
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_b

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v8, v22, 0xc

    .line 226
    .local v8, "hour":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 227
    const/16 v22, 0x0

    return v22

    .line 225
    .end local v8    # "hour":I
    :cond_b
    const/16 v8, 0xc

    .restart local v8    # "hour":I
    goto :goto_7

    .line 229
    .end local v8    # "hour":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v22

    add-int/lit8 v21, v22, 0x1

    .line 230
    .local v21, "yearDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%03d"

    const-string/jumbo v24, "%3d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%03d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 231
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 230
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 232
    const/16 v22, 0x0

    return v22

    .line 234
    .end local v21    # "yearDay":I
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%2d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 235
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 234
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 236
    const/16 v22, 0x0

    return v22

    .line 238
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_c

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v13, v22, 0xc

    .line 239
    .local v13, "n2":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%2d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 240
    const/16 v22, 0x0

    return v22

    .line 238
    .end local v13    # "n2":I
    :cond_c
    const/16 v13, 0xc

    .restart local v13    # "n2":I
    goto :goto_8

    .line 242
    .end local v13    # "n2":I
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 243
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 242
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 244
    const/16 v22, 0x0

    return v22

    .line 246
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 247
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 246
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 248
    const/16 v22, 0x0

    return v22

    .line 250
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    const/16 v22, 0x0

    return v22

    .line 253
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 255
    const/16 v22, 0x0

    return v22

    .line 254
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    goto :goto_9

    .line 257
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    .line 258
    :goto_a
    const/16 v23, -0x1

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 259
    const/16 v22, 0x0

    return v22

    .line 258
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    goto :goto_a

    .line 261
    :pswitch_17
    const-string/jumbo v22, "%H:%M"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 262
    const/16 v22, 0x0

    return v22

    .line 264
    :pswitch_18
    const-string/jumbo v22, "%I:%M:%S %p"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 265
    const/16 v22, 0x0

    return v22

    .line 267
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 268
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 267
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 269
    const/16 v22, 0x0

    return v22

    .line 271
    :pswitch_1a
    invoke-virtual/range {p2 .. p3}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v15

    .line 272
    .local v15, "timeInSeconds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const/16 v22, 0x0

    return v22

    .line 275
    .end local v15    # "timeInSeconds":I
    :pswitch_1b
    const-string/jumbo v22, "%H:%M:%S"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 276
    const/16 v22, 0x0

    return v22

    .line 278
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0x9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    const/16 v22, 0x0

    return v22

    .line 281
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 282
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v25

    add-int/lit8 v25, v25, 0x7

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v26

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x7

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 281
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 284
    const/16 v22, 0x0

    return v22

    .line 286
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-nez v22, :cond_f

    const/4 v6, 0x7

    .line 287
    .local v6, "day":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 288
    const/16 v22, 0x0

    return v22

    .line 286
    .end local v6    # "day":I
    :cond_f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v6

    .restart local v6    # "day":I
    goto :goto_b

    .line 293
    .end local v6    # "day":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v20

    .line 294
    .local v20, "year":I
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v19

    .line 295
    .local v19, "yday":I
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v18

    .line 298
    .local v18, "wday":I
    :goto_c
    invoke-static/range {v20 .. v20}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v22

    if-eqz v22, :cond_11

    const/16 v10, 0x16e

    .line 300
    .local v10, "len":I
    :goto_d
    add-int/lit8 v22, v19, 0xb

    sub-int v22, v22, v18

    rem-int/lit8 v22, v22, 0x7

    add-int/lit8 v4, v22, -0x3

    .line 302
    .local v4, "bot":I
    rem-int/lit8 v22, v10, 0x7

    sub-int v16, v4, v22

    .line 303
    .local v16, "top":I
    const/16 v22, -0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 304
    add-int/lit8 v16, v16, 0x7

    .line 306
    :cond_10
    add-int v16, v16, v10

    .line 307
    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_12

    .line 308
    add-int/lit8 v20, v20, 0x1

    .line 309
    const/16 v17, 0x1

    .line 319
    .local v17, "w":I
    :goto_e
    const/16 v22, 0x56

    move/from16 v0, v22

    if-ne v5, v0, :cond_15

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 326
    :goto_f
    const/16 v22, 0x0

    return v22

    .line 298
    .end local v4    # "bot":I
    .end local v10    # "len":I
    .end local v16    # "top":I
    .end local v17    # "w":I
    :cond_11
    const/16 v10, 0x16d

    .restart local v10    # "len":I
    goto :goto_d

    .line 312
    .restart local v4    # "bot":I
    .restart local v16    # "top":I
    :cond_12
    move/from16 v0, v19

    if-lt v0, v4, :cond_13

    .line 313
    sub-int v22, v19, v4

    div-int/lit8 v22, v22, 0x7

    add-int/lit8 v17, v22, 0x1

    .line 314
    .restart local v17    # "w":I
    goto :goto_e

    .line 316
    .end local v17    # "w":I
    :cond_13
    add-int/lit8 v20, v20, -0x1

    .line 317
    invoke-static/range {v20 .. v20}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v22

    if-eqz v22, :cond_14

    const/16 v22, 0x16e

    :goto_10
    add-int v19, v19, v22

    goto :goto_c

    :cond_14
    const/16 v22, 0x16d

    goto :goto_10

    .line 321
    .restart local v17    # "w":I
    :cond_15
    const/16 v22, 0x67

    move/from16 v0, v22

    if-ne v5, v0, :cond_16

    .line 322
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_f

    .line 324
    :cond_16
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_f

    .line 329
    .end local v4    # "bot":I
    .end local v10    # "len":I
    .end local v16    # "top":I
    .end local v17    # "w":I
    .end local v18    # "wday":I
    .end local v19    # "yday":I
    .end local v20    # "year":I
    :pswitch_20
    const-string/jumbo v22, "%e-%b-%Y"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 330
    const/16 v22, 0x0

    return v22

    .line 332
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v22

    add-int/lit8 v23, v22, 0x7

    .line 333
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-eqz v22, :cond_17

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    .line 332
    :goto_11
    sub-int v22, v23, v22

    div-int/lit8 v12, v22, 0x7

    .line 335
    .local v12, "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 336
    const/16 v22, 0x0

    return v22

    .line 334
    .end local v12    # "n":I
    :cond_17
    const/16 v22, 0x6

    goto :goto_11

    .line 338
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 339
    const/16 v22, 0x0

    return v22

    .line 341
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 342
    const/16 v22, 0x0

    return v22

    .line 344
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 345
    const/16 v22, 0x0

    return v22

    .line 347
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 348
    const/16 v22, 0x0

    return v22

    .line 350
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 351
    const/16 v22, 0x0

    return v22

    .line 353
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v22

    if-gez v22, :cond_18

    .line 354
    const/16 v22, 0x0

    return v22

    .line 356
    :cond_18
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v22

    if-eqz v22, :cond_19

    const/4 v9, 0x1

    .line 357
    .local v9, "isDst":Z
    :goto_12
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Llibcore/util/ZoneInfo;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 358
    const/16 v22, 0x0

    return v22

    .line 356
    .end local v9    # "isDst":Z
    :cond_19
    const/4 v9, 0x0

    .restart local v9    # "isDst":Z
    goto :goto_12

    .line 360
    .end local v9    # "isDst":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v22

    if-gez v22, :cond_1a

    .line 361
    const/16 v22, 0x0

    return v22

    .line 363
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v7

    .line 365
    .local v7, "diff":I
    if-gez v7, :cond_1b

    .line 366
    const/16 v14, 0x2d

    .line 367
    .local v14, "sign":C
    neg-int v7, v7

    .line 371
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    div-int/lit8 v7, v7, 0x3c

    .line 373
    div-int/lit8 v22, v7, 0x3c

    mul-int/lit8 v22, v22, 0x64

    rem-int/lit8 v23, v7, 0x3c

    add-int v7, v22, v23

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%04d"

    const-string/jumbo v24, "%4d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%04d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 375
    const/16 v22, 0x0

    return v22

    .line 369
    .end local v14    # "sign":C
    :cond_1b
    const/16 v14, 0x2b

    .restart local v14    # "sign":C
    goto :goto_13

    .line 378
    .end local v7    # "diff":I
    .end local v14    # "sign":C
    :pswitch_29
    const-string/jumbo v22, "%a %b %e %H:%M:%S %Z %Y"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 379
    const/16 v22, 0x0

    return v22

    .line 387
    .end local v5    # "currentChar":C
    :cond_1c
    const/16 v22, 0x1

    return v22

    .line 156
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_29
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_c
        :pswitch_1f
        :pswitch_d
        :pswitch_e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_12
        :pswitch_1
        :pswitch_0
        :pswitch_16
        :pswitch_1
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_26
        :pswitch_27
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_1
        :pswitch_1f
        :pswitch_5
        :pswitch_1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_1
        :pswitch_15
        :pswitch_1
        :pswitch_18
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method private static isLeap(I)Z
    .locals 3
    .param p0, "year"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 460
    rem-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 116
    .local v2, "length":I
    iget-object v5, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    add-int/lit8 v3, v5, -0x30

    .line 117
    .local v3, "offsetToLocalizedDigits":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 120
    .local v0, "ch":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 121
    add-int v5, v0, v3

    int-to-char v0, v5

    .line 123
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private modifyAndAppend(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "modifier"    # I

    .prologue
    .line 391
    sparse-switch p2, :sswitch_data_0

    .line 414
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 416
    :cond_0
    return-void

    .line 393
    :sswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 394
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "i":I
    :sswitch_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 399
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 403
    .end local v1    # "i":I
    :sswitch_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 404
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 405
    .local v0, "c":C
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v0

    .line 410
    :cond_1
    :goto_3
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 407
    :cond_2
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v0

    goto :goto_3

    .line 391
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_2
        0x5e -> :sswitch_1
    .end sparse-switch
.end method

.method private outputYear(IZZI)V
    .locals 11
    .param p1, "value"    # I
    .param p2, "outputTop"    # Z
    .param p3, "outputBottom"    # Z
    .param p4, "modifier"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 422
    const/16 v0, 0x64

    .line 423
    .local v0, "DIVISOR":I
    rem-int/lit8 v3, p1, 0x64

    .line 424
    .local v3, "trail":I
    div-int/lit8 v4, p1, 0x64

    div-int/lit8 v5, v3, 0x64

    add-int v1, v4, v5

    .line 425
    .local v1, "lead":I
    rem-int/lit8 v3, v3, 0x64

    .line 426
    if-gez v3, :cond_3

    if-lez v1, :cond_3

    .line 427
    add-int/lit8 v3, v3, 0x64

    .line 428
    add-int/lit8 v1, v1, -0x1

    .line 433
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 434
    if-nez v1, :cond_4

    if-gez v3, :cond_4

    .line 435
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 441
    if-gez v3, :cond_5

    neg-int v2, v3

    .line 442
    .local v2, "n":I
    :goto_2
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string/jumbo v5, "%02d"

    const-string/jumbo v6, "%2d"

    const-string/jumbo v7, "%d"

    const-string/jumbo v8, "%02d"

    invoke-static {p4, v5, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 444
    .end local v2    # "n":I
    :cond_2
    return-void

    .line 429
    :cond_3
    if-gez v1, :cond_0

    if-lez v3, :cond_0

    .line 430
    add-int/lit8 v3, v3, -0x64

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_4
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string/jumbo v5, "%02d"

    const-string/jumbo v6, "%2d"

    const-string/jumbo v7, "%d"

    const-string/jumbo v8, "%02d"

    invoke-static {p4, v5, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_1

    .line 441
    :cond_5
    move v2, v3

    .restart local v2    # "n":I
    goto :goto_2
.end method


# virtual methods
.method public format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    const/4 v4, 0x0

    .line 93
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 98
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v2, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 105
    invoke-direct {p0, v0}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 109
    :cond_0
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 110
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 107
    return-object v0

    .line 108
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    .line 109
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 110
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 108
    throw v2
.end method
