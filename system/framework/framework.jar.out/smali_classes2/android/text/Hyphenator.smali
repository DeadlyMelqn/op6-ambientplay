.class public Landroid/text/Hyphenator;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Hyphenator$HyphenationData;
    }
.end annotation


# static fields
.field private static final AVAILABLE_LANGUAGES:[Landroid/text/Hyphenator$HyphenationData;

.field private static final DEFAULT_MIN_PREFIX:I = 0x2

.field private static final DEFAULT_MIN_SUFFIX:I = 0x2

.field private static final INDIC_MIN_PREFIX:I = 0x2

.field private static final INDIC_MIN_SUFFIX:I = 0x2

.field private static final LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field static final sEmptyHyphenator:Landroid/text/Hyphenator;

.field private static final sLock:Ljava/lang/Object;

.field static final sMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Landroid/text/Hyphenator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 43
    const-string/jumbo v0, "Hyphenator"

    sput-object v0, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Landroid/text/Hyphenator;

    .line 61
    const/4 v1, 0x0

    .line 60
    invoke-static {v1, v6, v4, v4}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;III)J

    move-result-wide v2

    .line 62
    const/4 v1, 0x0

    .line 60
    invoke-direct {v0, v2, v3, v1}, Landroid/text/Hyphenator;-><init>(JLjava/nio/ByteBuffer;)V

    .line 59
    sput-object v0, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    .line 168
    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/String;

    .line 173
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "en-AS"

    aput-object v2, v1, v6

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 174
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "en-GU"

    aput-object v2, v1, v6

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 175
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "en-MH"

    aput-object v2, v1, v6

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 176
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "en-MP"

    aput-object v2, v1, v6

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    .line 177
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "en-PR"

    aput-object v2, v1, v6

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    .line 178
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "en-UM"

    aput-object v2, v1, v6

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 179
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "en-VI"

    aput-object v2, v1, v6

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 182
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "en"

    aput-object v2, v1, v6

    const-string/jumbo v2, "en-GB"

    aput-object v2, v1, v5

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 185
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "de"

    aput-object v2, v1, v6

    const-string/jumbo v2, "de-1996"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 187
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "de-LI-1901"

    aput-object v2, v1, v6

    const-string/jumbo v2, "de-CH-1901"

    aput-object v2, v1, v5

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 190
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "no"

    aput-object v2, v1, v6

    const-string/jumbo v2, "nb"

    aput-object v2, v1, v5

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 193
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "mn"

    aput-object v2, v1, v6

    const-string/jumbo v2, "mn-Cyrl"

    aput-object v2, v1, v5

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 198
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "am"

    aput-object v2, v1, v6

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 199
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "byn"

    aput-object v2, v1, v6

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 200
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "gez"

    aput-object v2, v1, v6

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 201
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "ti"

    aput-object v2, v1, v6

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 202
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "wal"

    aput-object v2, v1, v6

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 168
    sput-object v0, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    .line 205
    const/16 v0, 0x23

    new-array v0, v0, [Landroid/text/Hyphenator$HyphenationData;

    .line 206
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "as"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 207
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "bg"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 208
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "bn"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 209
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "cu"

    invoke-direct {v1, v2, v5, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 210
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "cy"

    invoke-direct {v1, v2, v4, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 211
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "da"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 212
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "de-1901"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 213
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "de-1996"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 214
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "de-CH-1901"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 215
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "en-GB"

    invoke-direct {v1, v2, v4, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 216
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "en-US"

    invoke-direct {v1, v2, v4, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 217
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "es"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 218
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "et"

    invoke-direct {v1, v2, v4, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 219
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "eu"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 220
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "fr"

    invoke-direct {v1, v2, v4, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 221
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "ga"

    invoke-direct {v1, v2, v4, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 222
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "gu"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 223
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "hi"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 224
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "hr"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 225
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "hu"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 228
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "hy"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 229
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "kn"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 230
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "ml"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 231
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "mn-Cyrl"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 232
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "mr"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 233
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "nb"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 234
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "nn"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 235
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "or"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 236
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "pa"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 237
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "pt"

    invoke-direct {v1, v2, v4, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 238
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "sl"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 239
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "ta"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 240
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "te"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 241
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "tk"

    invoke-direct {v1, v2, v4, v4}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 242
    new-instance v1, Landroid/text/Hyphenator$HyphenationData;

    const-string/jumbo v2, "und-Ethi"

    invoke-direct {v1, v2, v5, v5}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 205
    sput-object v0, Landroid/text/Hyphenator;->AVAILABLE_LANGUAGES:[Landroid/text/Hyphenator$HyphenationData;

    .line 39
    return-void
.end method

.method private constructor <init>(JLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "nativePtr"    # J
    .param p3, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Landroid/text/Hyphenator;->mNativePtr:J

    .line 72
    iput-object p3, p0, Landroid/text/Hyphenator;->mBuffer:Ljava/nio/ByteBuffer;

    .line 73
    return-void
.end method

.method public static get(Ljava/util/Locale;)Landroid/text/Hyphenator;
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 80
    sget-object v7, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    monitor-enter v7

    .line 81
    :try_start_0
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/Hyphenator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .local v2, "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_0

    monitor-exit v7

    .line 83
    return-object v2

    .line 87
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "variant":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 90
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, ""

    invoke-direct {v0, v6, v8, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v0, "languageAndVariantOnlyLocale":Ljava/util/Locale;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/text/Hyphenator;
    check-cast v2, Landroid/text/Hyphenator;

    .line 92
    .restart local v2    # "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_1

    .line 93
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 94
    return-object v2

    .line 99
    .end local v0    # "languageAndVariantOnlyLocale":Ljava/util/Locale;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "languageOnlyLocale":Ljava/util/Locale;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/text/Hyphenator;
    check-cast v2, Landroid/text/Hyphenator;

    .line 101
    .restart local v2    # "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_2

    .line 102
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 103
    return-object v2

    .line 107
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "script":Ljava/lang/String;
    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 109
    new-instance v6, Ljava/util/Locale$Builder;

    invoke-direct {v6}, Ljava/util/Locale$Builder;-><init>()V

    .line 110
    const-string/jumbo v8, "und"

    .line 109
    invoke-virtual {v6, v8}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v4

    .line 113
    .local v4, "scriptOnlyLocale":Ljava/util/Locale;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/text/Hyphenator;
    check-cast v2, Landroid/text/Hyphenator;

    .line 114
    .restart local v2    # "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_3

    .line 115
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    .line 116
    return-object v2

    .line 120
    .end local v4    # "scriptOnlyLocale":Ljava/util/Locale;
    :cond_3
    :try_start_4
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    sget-object v8, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    invoke-virtual {v6, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    .line 122
    sget-object v6, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    return-object v6

    .line 80
    .end local v1    # "languageOnlyLocale":Ljava/util/Locale;
    .end local v2    # "result":Landroid/text/Hyphenator;
    .end local v3    # "script":Ljava/lang/String;
    .end local v5    # "variant":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static getSystemHyphenatorLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/usr/hyphen-data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 253
    sget-object v5, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v5, Landroid/text/Hyphenator;->AVAILABLE_LANGUAGES:[Landroid/text/Hyphenator$HyphenationData;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 256
    sget-object v5, Landroid/text/Hyphenator;->AVAILABLE_LANGUAGES:[Landroid/text/Hyphenator$HyphenationData;

    aget-object v0, v5, v3

    .line 257
    .local v0, "data":Landroid/text/Hyphenator$HyphenationData;
    invoke-static {v0}, Landroid/text/Hyphenator;->loadHyphenator(Landroid/text/Hyphenator$HyphenationData;)Landroid/text/Hyphenator;

    move-result-object v2

    .line 258
    .local v2, "h":Landroid/text/Hyphenator;
    if-eqz v2, :cond_0

    .line 259
    sget-object v5, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/text/Hyphenator$HyphenationData;->mLanguageTag:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "data":Landroid/text/Hyphenator$HyphenationData;
    .end local v2    # "h":Landroid/text/Hyphenator;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    sget-object v5, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 264
    sget-object v5, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    aget-object v5, v5, v3

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 265
    .local v4, "language":Ljava/lang/String;
    sget-object v5, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    aget-object v1, v5, v6

    .line 266
    .local v1, "fallback":Ljava/lang/String;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    sget-object v5, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/Hyphenator;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 268
    .end local v1    # "fallback":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static loadHyphenator(Landroid/text/Hyphenator$HyphenationData;)Landroid/text/Hyphenator;
    .locals 14
    .param p0, "data"    # Landroid/text/Hyphenator$HyphenationData;

    .prologue
    const/4 v13, 0x0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hyph-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/Hyphenator$HyphenationData;->mLanguageTag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".hyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 137
    .local v12, "patternFilename":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/text/Hyphenator;->getSystemHyphenatorLocation()Ljava/io/File;

    move-result-object v1

    invoke-direct {v9, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v9, "patternFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    sget-object v1, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hyphenation patterns for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found or unreadable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v13

    .line 143
    :cond_0
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v8, v9, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v8, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 146
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 148
    .local v6, "buf":Ljava/nio/MappedByteBuffer;
    iget v1, p0, Landroid/text/Hyphenator$HyphenationData;->mMinPrefix:I

    iget v2, p0, Landroid/text/Hyphenator$HyphenationData;->mMinSuffix:I

    const/4 v3, 0x0

    .line 147
    invoke-static {v6, v3, v1, v2}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;III)J

    move-result-wide v10

    .line 149
    .local v10, "nativePtr":J
    new-instance v1, Landroid/text/Hyphenator;

    invoke-direct {v1, v10, v11, v6}, Landroid/text/Hyphenator;-><init>(JLjava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 149
    return-object v1

    .line 150
    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local v6    # "buf":Ljava/nio/MappedByteBuffer;
    .end local v10    # "nativePtr":J
    :catchall_0
    move-exception v1

    .line 151
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 150
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .end local v8    # "f":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v7

    .line 154
    .local v7, "e":Ljava/io/IOException;
    sget-object v1, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error loading hyphenation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    return-object v13
.end method


# virtual methods
.method public getNativePtr()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Landroid/text/Hyphenator;->mNativePtr:J

    return-wide v0
.end method