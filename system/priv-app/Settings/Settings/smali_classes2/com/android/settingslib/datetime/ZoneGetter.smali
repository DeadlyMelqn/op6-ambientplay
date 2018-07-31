.class public Lcom/android/settingslib/datetime/ZoneGetter;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    }
.end annotation


# static fields
.field public static final KEY_DISPLAYNAME:Ljava/lang/String; = "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_DISPLAY_LABEL:Ljava/lang/String; = "display_label"

.field public static final KEY_GMT:Ljava/lang/String; = "gmt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_OFFSET:Ljava/lang/String; = "offset"

.field public static final KEY_OFFSET_LABEL:Ljava/lang/String; = "offset_label"

.field private static final TAG:Ljava/lang/String; = "ZoneGetter"

.field private static final XMLTAG_TIMEZONE:Ljava/lang/String; = "timezone"


# direct methods
.method static synthetic -wrap0(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "tzFormatter"    # Landroid/icu/text/TimeZoneFormat;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "now"    # Ljava/util/Date;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settingslib/datetime/ZoneGetter;->readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "content"    # Ljava/lang/CharSequence;
    .param p2, "span"    # Landroid/text/style/TtsSpan;

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 244
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 245
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 246
    return-void
.end method

.method private static createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/util/Map;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "gmtOffsetText"    # Ljava/lang/CharSequence;
    .param p2, "displayName"    # Ljava/lang/CharSequence;
    .param p3, "offsetMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v1, "name"

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v1, "display_label"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v1, "gmt"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v1, "offset_label"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v1, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object v0
.end method

.method private static formatDigits(IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # I
    .param p1, "minDigits"    # I
    .param p2, "localizedDigits"    # Ljava/lang/String;

    .prologue
    .line 250
    div-int/lit8 v1, p0, 0xa

    .line 251
    .local v1, "tens":I
    rem-int/lit8 v2, p0, 0xa

    .line 252
    .local v2, "units":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0xa

    if-ge p0, v3, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 254
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 30
    .param p0, "tzFormatter"    # Landroid/icu/text/TimeZoneFormat;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "now"    # Ljava/util/Date;

    .prologue
    .line 273
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 275
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getGMTPattern()Ljava/lang/String;

    move-result-object v8

    .line 276
    .local v8, "gmtPattern":Ljava/lang/String;
    const-string/jumbo v26, "{0}"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 278
    .local v23, "placeholderIndex":I
    const/16 v26, -0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 280
    const-string/jumbo v9, "GMT"

    .line 281
    .local v9, "gmtPatternPrefix":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 287
    .local v10, "gmtPatternSuffix":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_0

    .line 289
    new-instance v26, Landroid/text/style/TtsSpan$TextBuilder;

    move-object/from16 v0, v26

    invoke-direct {v0, v9}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v26

    .line 288
    move-object/from16 v0, v26

    invoke-static {v5, v9, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 292
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    move-object/from16 v0, p2

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v19

    .line 293
    .local v19, "offsetMillis":I
    if-gez v19, :cond_3

    const/4 v15, 0x1

    .line 295
    .local v15, "negative":Z
    :goto_1
    if-eqz v15, :cond_4

    .line 296
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    .line 297
    sget-object v22, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 301
    .local v22, "patternType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "gmtOffsetPattern":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "localizedDigits":Ljava/lang/String;
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x36ee80

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v18, v0

    .line 305
    .local v18, "offsetHours":I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/32 v28, 0xea60

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v20, v0

    .line 306
    .local v20, "offsetMinutes":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v26

    rem-int/lit8 v21, v26, 0x3c

    .line 308
    .local v21, "offsetMinutesRemaining":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_a

    .line 309
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 310
    .local v6, "c":C
    const/16 v26, 0x2b

    move/from16 v0, v26

    if-eq v6, v0, :cond_1

    const/16 v26, 0x2d

    move/from16 v0, v26

    if-ne v6, v0, :cond_5

    .line 311
    :cond_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v24

    .line 312
    .local v24, "sign":Ljava/lang/String;
    new-instance v26, Landroid/text/style/TtsSpan$VerbatimBuilder;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v5, v0, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 308
    .end local v24    # "sign":Ljava/lang/String;
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 283
    .end local v6    # "c":C
    .end local v7    # "gmtOffsetPattern":Ljava/lang/String;
    .end local v9    # "gmtPatternPrefix":Ljava/lang/String;
    .end local v10    # "gmtPatternSuffix":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "localizedDigits":Ljava/lang/String;
    .end local v15    # "negative":Z
    .end local v18    # "offsetHours":I
    .end local v19    # "offsetMillis":I
    .end local v20    # "offsetMinutes":I
    .end local v21    # "offsetMinutesRemaining":I
    .end local v22    # "patternType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    :cond_2
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 284
    .restart local v9    # "gmtPatternPrefix":Ljava/lang/String;
    add-int/lit8 v26, v23, 0x3

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "gmtPatternSuffix":Ljava/lang/String;
    goto/16 :goto_0

    .line 293
    .restart local v19    # "offsetMillis":I
    :cond_3
    const/4 v15, 0x0

    .restart local v15    # "negative":Z
    goto/16 :goto_1

    .line 299
    :cond_4
    sget-object v22, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .restart local v22    # "patternType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    goto :goto_2

    .line 310
    .restart local v6    # "c":C
    .restart local v7    # "gmtOffsetPattern":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "localizedDigits":Ljava/lang/String;
    .restart local v18    # "offsetHours":I
    .restart local v20    # "offsetMinutes":I
    .restart local v21    # "offsetMinutesRemaining":I
    :cond_5
    const/16 v26, 0x2212

    move/from16 v0, v26

    if-eq v6, v0, :cond_1

    .line 313
    const/16 v26, 0x48

    move/from16 v0, v26

    if-eq v6, v0, :cond_6

    const/16 v26, 0x6d

    move/from16 v0, v26

    if-ne v6, v0, :cond_9

    .line 315
    :cond_6
    add-int/lit8 v26, v12, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    add-int/lit8 v26, v12, 0x1

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v26

    move/from16 v0, v26

    if-ne v0, v6, :cond_7

    .line 316
    const/16 v16, 0x2

    .line 317
    .local v16, "numDigits":I
    add-int/lit8 v12, v12, 0x1

    .line 323
    :goto_5
    const/16 v26, 0x48

    move/from16 v0, v26

    if-ne v6, v0, :cond_8

    .line 324
    move/from16 v17, v18

    .line 325
    .local v17, "number":I
    const-string/jumbo v25, "hour"

    .line 330
    .local v25, "unit":Ljava/lang/String;
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1, v14}, Lcom/android/settingslib/datetime/ZoneGetter;->formatDigits(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 331
    new-instance v27, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct/range {v27 .. v27}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v27

    .line 330
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v5, v0, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    goto :goto_4

    .line 319
    .end local v16    # "numDigits":I
    .end local v17    # "number":I
    .end local v25    # "unit":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x1

    .restart local v16    # "numDigits":I
    goto :goto_5

    .line 327
    :cond_8
    move/from16 v17, v21

    .line 328
    .restart local v17    # "number":I
    const-string/jumbo v25, "minute"

    .restart local v25    # "unit":Ljava/lang/String;
    goto :goto_6

    .line 333
    .end local v16    # "numDigits":I
    .end local v17    # "number":I
    .end local v25    # "unit":Ljava/lang/String;
    :cond_9
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_4

    .line 337
    .end local v6    # "c":C
    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_b

    .line 339
    new-instance v26, Landroid/text/style/TtsSpan$TextBuilder;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v26

    .line 338
    move-object/from16 v0, v26

    invoke-static {v5, v10, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 342
    :cond_b
    new-instance v11, Landroid/text/SpannableString;

    invoke-direct {v11, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 345
    .local v11, "gmtText":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v4

    .line 346
    .local v4, "bidiFormatter":Landroid/support/v4/text/BidiFormatter;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    const/4 v13, 0x1

    .line 348
    .local v13, "isRtl":Z
    :goto_7
    if-eqz v13, :cond_d

    sget-object v26, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 347
    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v4, v11, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 349
    return-object v11

    .line 346
    .end local v13    # "isRtl":Z
    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "isRtl":Z
    goto :goto_7

    .line 348
    :cond_d
    sget-object v26, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_8
.end method

.method private static getTimeZoneDisplayName(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;ZLjava/util/TimeZone;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "data"    # Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    .param p1, "timeZoneNames"    # Landroid/icu/text/TimeZoneNames;
    .param p2, "useExemplarLocationForLocalNames"    # Z
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "olsonId"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 204
    .local v3, "now":Ljava/util/Date;
    iget-object v5, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->localZoneIds:Ljava/util/Set;

    invoke-interface {v5, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 205
    .local v2, "isLocalZoneId":Z
    if-eqz v2, :cond_1

    xor-int/lit8 v4, p2, 0x1

    .line 208
    :goto_0
    if-eqz v4, :cond_2

    .line 209
    invoke-static {p1, p3, v3}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "displayName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 205
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, "preferLongName":Z
    goto :goto_0

    .line 216
    .end local v4    # "preferLongName":Z
    :cond_2
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "canonicalZoneId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 218
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_3
    invoke-virtual {p1, v0}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1    # "displayName":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    :cond_4
    invoke-static {p1, p3, v3}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getTimeZoneOffsetAndName(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v1, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 93
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    .line 94
    .local v3, "tzFormatter":Landroid/icu/text/TimeZoneFormat;
    invoke-static {v3, v1, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 95
    .local v0, "gmtText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v2

    .line 96
    .local v2, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static {v2, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "zoneNameString":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 98
    return-object v0

    .line 102
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string/jumbo v6, " "

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v4, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5
.end method

.method private static getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "names"    # Landroid/icu/text/TimeZoneNames;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 236
    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 238
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_0
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 237
    .end local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_0
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_0
.end method

.method public static getZonesList(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v5, v12, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 107
    .local v5, "locale":Ljava/util/Locale;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 108
    .local v6, "now":Ljava/util/Date;
    invoke-static {v5}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v8

    .line 109
    .local v8, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    new-instance v0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;

    invoke-direct {v0, p0}, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "data":Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    invoke-static {v0, v8}, Lcom/android/settingslib/datetime/ZoneGetter;->shouldUseExemplarLocationForLocalNames(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;)Z

    move-result v10

    .line 116
    .local v10, "useExemplarLocationForLocalNames":Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v11, "zones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v12, v0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    if-ge v4, v12, :cond_1

    .line 118
    iget-object v12, v0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    aget-object v9, v12, v4

    .line 119
    .local v9, "tz":Ljava/util/TimeZone;
    iget-object v12, v0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    aget-object v3, v12, v4

    .line 122
    .local v3, "gmtOffsetText":Ljava/lang/CharSequence;
    iget-object v12, v0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    aget-object v12, v12, v4

    .line 121
    invoke-static {v0, v8, v10, v9, v12}, Lcom/android/settingslib/datetime/ZoneGetter;->getTimeZoneDisplayName(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;ZLjava/util/TimeZone;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 123
    .local v2, "displayName":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 124
    move-object v2, v3

    .line 127
    :cond_0
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    .line 129
    .local v7, "offsetMillis":I
    invoke-static {v9, v3, v2, v7}, Lcom/android/settingslib/datetime/ZoneGetter;->createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/util/Map;

    move-result-object v1

    .line 130
    .local v1, "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "displayName":Ljava/lang/CharSequence;
    .end local v3    # "gmtOffsetText":Ljava/lang/CharSequence;
    .end local v7    # "offsetMillis":I
    .end local v9    # "tz":Ljava/util/TimeZone;
    :cond_1
    return-object v11
.end method

.method private static readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v2, "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "xrp":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/settingslib/R$xml;->timezones:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 150
    .local v4, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 153
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    .line 154
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v9, :cond_9

    .line 155
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v8, :cond_6

    .line 156
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    .line 174
    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_2
    if-eqz v6, :cond_3

    :try_start_2
    throw v6
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 170
    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .line 171
    .local v3, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "ZoneGetter"

    const-string/jumbo v6, "Ill-formatted timezones.xml file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v3    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    return-object v2

    .line 174
    .restart local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 157
    :cond_3
    return-object v2

    .line 159
    :cond_4
    :try_start_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 174
    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_4
    if-eqz v4, :cond_5

    :try_start_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    if-eqz v6, :cond_c

    :try_start_6
    throw v6
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 172
    :catch_3
    move-exception v0

    .line 173
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "ZoneGetter"

    const-string/jumbo v6, "Unable to read timezones.xml file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 161
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_6
    :try_start_7
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "timezone"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 162
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "olsonId":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v1    # "olsonId":Ljava/lang/String;
    :cond_7
    :goto_6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v9, :cond_8

    .line 166
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_6

    .line 174
    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 168
    .restart local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_8
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 174
    :cond_9
    if-eqz v4, :cond_a

    :try_start_8
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_a
    :goto_7
    if-eqz v6, :cond_2

    :try_start_9
    throw v6

    :catch_4
    move-exception v6

    goto :goto_7

    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_5
    move-exception v7

    if-nez v6, :cond_b

    move-object v6, v7

    goto :goto_5

    :cond_b
    if-eq v6, v7, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_c
    throw v5
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
.end method

.method private static shouldUseExemplarLocationForLocalNames(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;)Z
    .locals 8
    .param p0, "data"    # Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    .param p1, "timeZoneNames"    # Landroid/icu/text/TimeZoneNames;

    .prologue
    .line 180
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 181
    .local v2, "localZoneNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 182
    .local v4, "now":Ljava/util/Date;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    if-ge v1, v7, :cond_2

    .line 183
    iget-object v7, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    aget-object v5, v7, v1

    .line 184
    .local v5, "olsonId":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->localZoneIds:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 185
    iget-object v7, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    aget-object v6, v7, v1

    .line 186
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-static {p1, v6, v4}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "displayName":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 188
    iget-object v7, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    aget-object v0, v7, v1

    .line 190
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 191
    .local v3, "nameIsUnique":Z
    if-nez v3, :cond_1

    .line 192
    const/4 v7, 0x1

    return v7

    .line 182
    .end local v0    # "displayName":Ljava/lang/CharSequence;
    .end local v3    # "nameIsUnique":Z
    .end local v6    # "tz":Ljava/util/TimeZone;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v5    # "olsonId":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    return v7
.end method
