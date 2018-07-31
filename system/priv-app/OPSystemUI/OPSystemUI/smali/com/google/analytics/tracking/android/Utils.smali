.class Lcom/google/analytics/tracking/android/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final HEXBYTES:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-char v1, v0, v2

    const/16 v1, 0x32

    const/4 v2, 0x2

    aput-char v1, v0, v2

    const/16 v1, 0x33

    const/4 v2, 0x3

    aput-char v1, v0, v2

    const/16 v1, 0x34

    const/4 v2, 0x4

    aput-char v1, v0, v2

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput-char v1, v0, v2

    const/16 v1, 0x36

    const/4 v2, 0x6

    aput-char v1, v0, v2

    const/16 v1, 0x37

    const/4 v2, 0x7

    aput-char v1, v0, v2

    const/16 v1, 0x38

    const/16 v2, 0x8

    aput-char v1, v0, v2

    const/16 v1, 0x39

    const/16 v2, 0x9

    aput-char v1, v0, v2

    const/16 v1, 0x41

    const/16 v2, 0xa

    aput-char v1, v0, v2

    const/16 v1, 0x42

    const/16 v2, 0xb

    aput-char v1, v0, v2

    const/16 v1, 0x43

    const/16 v2, 0xc

    aput-char v1, v0, v2

    const/16 v1, 0x44

    const/16 v2, 0xd

    aput-char v1, v0, v2

    const/16 v1, 0x45

    const/16 v2, 0xe

    aput-char v1, v0, v2

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput-char v1, v0, v2

    sput-object v0, Lcom/google/analytics/tracking/android/Utils;->HEXBYTES:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterCampaign(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "campaign"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 102
    move-object v4, p0

    .line 103
    .local v4, "urlParameters":Ljava/lang/String;
    const-string/jumbo v7, "?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 116
    :cond_0
    :goto_0
    const-string/jumbo v7, "%3D"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 123
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 128
    :goto_1
    invoke-static {v4}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 130
    .local v3, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x9

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "dclid"

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_source"

    aput-object v7, v6, v9

    const-string/jumbo v7, "gclid"

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_campaign"

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_medium"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_term"

    const/4 v8, 0x5

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_content"

    const/4 v8, 0x6

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_id"

    const/4 v8, 0x7

    aput-object v7, v6, v8

    const-string/jumbo v7, "gmob_t"

    const/16 v8, 0x8

    aput-object v7, v6, v8

    .line 142
    .local v6, "validParameters":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, "params":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v7, v6

    if-lt v1, v7, :cond_5

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 99
    .end local v1    # "i":I
    .end local v2    # "params":Ljava/lang/StringBuilder;
    .end local v3    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "urlParameters":Ljava/lang/String;
    .end local v6    # "validParameters":[Ljava/lang/String;
    :cond_1
    return-object v10

    .line 105
    .restart local v4    # "urlParameters":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "[\\?]"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "urlParts":[Ljava/lang/String;
    array-length v7, v5

    if-le v7, v9, :cond_0

    .line 107
    aget-object v4, v5, v9

    goto :goto_0

    .line 119
    .end local v5    # "urlParts":[Ljava/lang/String;
    :cond_3
    :try_start_0
    const-string/jumbo v7, "UTF-8"

    invoke-static {v4, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    return-object v10

    .line 124
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    return-object v10

    .line 144
    .restart local v1    # "i":I
    .restart local v2    # "params":Ljava/lang/StringBuilder;
    .restart local v3    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "validParameters":[Ljava/lang/String;
    :cond_5
    aget-object v7, v6, v1

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 143
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-gtz v7, :cond_7

    .line 148
    :goto_4
    aget-object v7, v6, v1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v7, v6, v1

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 146
    :cond_7
    const-string/jumbo v7, "&"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x0

    .line 163
    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "lang":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 164
    .end local v0    # "lang":Ljava/lang/StringBuilder;
    :cond_0
    return-object v2

    .line 167
    :cond_1
    return-object v2

    .line 172
    .restart local v0    # "lang":Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static parseURLParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "parameterString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 24
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "&"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "params":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 34
    return-object v3

    .line 26
    :cond_0
    aget-object v5, v0, v1

    .line 27
    .local v5, "s":Ljava/lang/String;
    const-string/jumbo v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "ss":[Ljava/lang/String;
    array-length v7, v6

    if-gt v7, v10, :cond_2

    .line 30
    array-length v7, v6

    if-eq v7, v10, :cond_3

    .line 26
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_2
    aget-object v7, v6, v9

    aget-object v8, v6, v10

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_3
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 31
    aget-object v7, v6, v9

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static safeParseBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p0, :cond_0

    .line 83
    :goto_0
    return p1

    .line 73
    :cond_0
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_2
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    :cond_3
    return v1

    .line 77
    :cond_4
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0
.end method

.method public static safeParseDouble(Ljava/lang/String;D)D
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 48
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 45
    :cond_0
    return-wide p1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method
