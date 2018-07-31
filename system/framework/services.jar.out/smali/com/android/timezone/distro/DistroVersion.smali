.class public Lcom/android/timezone/distro/DistroVersion;
.super Ljava/lang/Object;
.source "DistroVersion.java"


# static fields
.field public static final CURRENT_FORMAT_MAJOR_VERSION:I = 0x1

.field public static final CURRENT_FORMAT_MINOR_VERSION:I = 0x1

.field public static final DISTRO_VERSION_FILE_LENGTH:I

.field private static final DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_STRING_LENGTH:I

.field private static final FULL_CURRENT_FORMAT_VERSION_STRING:Ljava/lang/String;

.field private static final REVISION_LENGTH:I = 0x3

.field private static final REVISION_PATTERN:Ljava/util/regex/Pattern;

.field private static final RULES_VERSION_LENGTH:I = 0x5

.field private static final RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final formatMajorVersion:I

.field public final formatMinorVersion:I

.field public final revision:I

.field public final rulesVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-static {v0, v0}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->FULL_CURRENT_FORMAT_VERSION_STRING:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/android/timezone/distro/DistroVersion;->FULL_CURRENT_FORMAT_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    sput v0, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    .line 50
    const-string/jumbo v0, "(\\d{3})\\.(\\d{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    const-string/jumbo v0, "(\\d{4}\\w)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    const-string/jumbo v0, "(\\d{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    sget v0, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "\\|"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, ".*"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 27
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 3
    .param p1, "formatMajorVersion"    # I
    .param p2, "formatMinorVersion"    # I
    .param p3, "rulesVersion"    # Ljava/lang/String;
    .param p4, "revision"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    .line 84
    invoke-static {p2}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    .line 85
    sget-object v0, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid rulesVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p3, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 89
    invoke-static {p4}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    .line 90
    return-void
.end method

.method private static from3DigitVersionString(Ljava/lang/String;)I
    .locals 5
    .param p0, "versionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .prologue
    .line 189
    const-string/jumbo v1, "versionString must be a zero padded, 3 digit, positive decimal integer"

    .line 191
    .local v1, "parseErrorMessage":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 192
    new-instance v3, Lcom/android/timezone/distro/DistroException;

    const-string/jumbo v4, "versionString must be a zero padded, 3 digit, positive decimal integer"

    invoke-direct {v3, v4}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "version":I
    invoke-static {v2}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 197
    .end local v2    # "version":I
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/timezone/distro/DistroException;

    const-string/jumbo v4, "versionString must be a zero padded, 3 digit, positive decimal integer"

    invoke-direct {v3, v4, v0}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static fromBytes([B)Lcom/android/timezone/distro/DistroVersion;
    .locals 11
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 95
    .local v0, "distroVersion":Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 96
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_0

    .line 97
    new-instance v7, Lcom/android/timezone/distro/DistroException;

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid distro version string: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-direct {v7, v8}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/timezone/distro/DistroException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Distro version string too short: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "formatMajorVersion":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "formatMinorVersion":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "rulesVersion":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "revision":Ljava/lang/String;
    new-instance v7, Lcom/android/timezone/distro/DistroVersion;

    .line 105
    invoke-static {v2}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v8

    .line 106
    invoke-static {v3}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v9

    .line 108
    invoke-static {v5}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v10

    .line 104
    invoke-direct {v7, v8, v9, v6, v10}, Lcom/android/timezone/distro/DistroVersion;-><init>(IILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7
.end method

.method public static isCompatibleWithThisDevice(Lcom/android/timezone/distro/DistroVersion;)Z
    .locals 3
    .param p0, "distroVersion"    # Lcom/android/timezone/distro/DistroVersion;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 128
    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    if-ne v0, v2, :cond_1

    .line 129
    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    if-gt v0, v2, :cond_0

    .line 128
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 129
    goto :goto_0

    :cond_1
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method private static to3DigitVersionString(I)Ljava/lang/String;
    .locals 6
    .param p0, "version"    # I

    .prologue
    .line 179
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "%03d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Lcom/android/timezone/distro/DistroException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toBytes(IILjava/lang/String;I)[B
    .locals 2
    .param p0, "majorFormatVersion"    # I
    .param p1, "minorFormatVerison"    # I
    .param p2, "rulesVersion"    # Ljava/lang/String;
    .param p3, "revision"    # I

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "|"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "|"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    invoke-static {p3}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private static toFormatVersionString(II)Ljava/lang/String;
    .locals 2
    .param p0, "majorFormatVersion"    # I
    .param p1, "minorFormatVersion"    # I

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string/jumbo v1, "."

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validate3DigitVersion(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .prologue
    .line 204
    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-le p0, v0, :cond_1

    .line 205
    :cond_0
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected 0 <= value <= 999, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 134
    if-ne p0, p1, :cond_0

    .line 135
    const/4 v1, 0x1

    return v1

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/timezone/distro/DistroVersion;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 138
    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    .line 141
    check-cast v0, Lcom/android/timezone/distro/DistroVersion;

    .line 143
    .local v0, "that":Lcom/android/timezone/distro/DistroVersion;
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v2, v0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    if-eq v1, v2, :cond_3

    .line 144
    return v3

    .line 146
    :cond_3
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget v2, v0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    if-eq v1, v2, :cond_4

    .line 147
    return v3

    .line 149
    :cond_4
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    iget v2, v0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    if-eq v1, v2, :cond_5

    .line 150
    return v3

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 157
    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    .line 158
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    add-int v0, v1, v2

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    add-int v0, v1, v2

    .line 161
    return v0
.end method

.method public toBytes()[B
    .locals 4

    .prologue
    .line 116
    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget-object v2, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v3, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/timezone/distro/DistroVersion;->toBytes(IILjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DistroVersion{formatMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    const-string/jumbo v1, ", formatMinorVersion="

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const-string/jumbo v1, ", rulesVersion=\'"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const/16 v1, 0x27

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    const-string/jumbo v1, ", revision="

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const/16 v1, 0x7d

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
