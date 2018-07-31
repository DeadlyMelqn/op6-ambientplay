.class public final Lcom/android/internal/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;,
        Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .locals 4
    .param p0, "supported"    # Landroid/icu/util/ULocale;
    .param p1, "desired"    # Landroid/icu/util/ULocale;

    .prologue
    const/4 v3, 0x3

    .line 55
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    return v3

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "supportedScript":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 64
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "supportedCountry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 69
    :cond_3
    const/4 v2, 0x2

    return v2

    .line 73
    :cond_4
    return v3
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 19
    .param p2, "preferredLocales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor",
            "<TT;>;",
            "Landroid/os/LocaleList;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "sources":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "extractor":Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;, "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor<TT;>;"
    .local p3, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 159
    return-void

    .line 162
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->size()I

    move-result v9

    .line 163
    .local v9, "numPreferredLocales":I
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v14, "scoreboard":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;>;"
    new-array v13, v9, [B

    .line 165
    .local v13, "score":[B
    new-array v11, v9, [Landroid/icu/util/ULocale;

    .line 167
    .local v11, "preferredULocaleCache":[Landroid/icu/util/ULocale;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    .line 168
    .local v15, "sourceSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v15, :cond_8

    .line 169
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object v8

    .line 170
    .local v8, "locale":Ljava/util/Locale;
    if-nez v8, :cond_2

    .line 168
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 174
    :cond_2
    const/4 v3, 0x1

    .line 175
    .local v3, "canSkip":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v9, :cond_6

    .line 176
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    .line 177
    .local v10, "preferredLocale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 178
    const/16 v16, 0x0

    aput-byte v16, v13, v6

    .line 175
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 181
    :cond_4
    aget-object v16, v11, v6

    if-nez v16, :cond_5

    .line 183
    invoke-static {v10}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v16

    .line 182
    invoke-static/range {v16 .. v16}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v16

    aput-object v16, v11, v6

    .line 186
    :cond_5
    aget-object v16, v11, v6

    .line 187
    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v17

    .line 185
    invoke-static/range {v16 .. v17}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    move-result v16

    aput-byte v16, v13, v6

    .line 188
    if-eqz v3, :cond_3

    aget-byte v16, v13, v6

    if-eqz v16, :cond_3

    .line 189
    const/4 v3, 0x0

    goto :goto_3

    .line 192
    .end local v10    # "preferredLocale":Ljava/util/Locale;
    :cond_6
    if-nez v3, :cond_1

    .line 196
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "lang":Ljava/lang/String;
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 198
    .local v2, "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    if-nez v2, :cond_7

    .line 199
    new-instance v16, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v5}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    :cond_7
    invoke-virtual {v2, v13, v5}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    goto :goto_1

    .line 205
    .end local v2    # "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    .end local v3    # "canSkip":Z
    .end local v6    # "j":I
    .end local v7    # "lang":Ljava/lang/String;
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_8
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 206
    .local v12, "result":[Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 207
    const/16 v16, 0x0

    array-length v0, v12

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    aget-object v4, v12, v16

    .line 208
    .local v4, "entry":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    iget v0, v4, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 210
    .end local v4    # "entry":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    :cond_9
    return-void
.end method
