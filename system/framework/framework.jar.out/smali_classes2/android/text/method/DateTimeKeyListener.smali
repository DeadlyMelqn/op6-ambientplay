.class public Landroid/text/method/DateTimeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DateTimeKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static final SKELETON_12HOUR:Ljava/lang/String; = "yMdhms"

.field private static final SKELETON_24HOUR:Ljava/lang/String; = "yMdHms"

.field private static final SYMBOLS_TO_IGNORE:Ljava/lang/String; = "yMLdahHKkms"

.field private static final sInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Landroid/text/method/DateTimeKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mCharacters:[C

.field private final mNeedsAdvancedInput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x11

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DateTimeKeyListener;->sLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DateTimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    .line 38
    return-void

    .line 128
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x6ds
        0x70s
        0x3as
        0x2fs
        0x2ds
        0x20s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/method/DateTimeKeyListener;-><init>(Ljava/util/Locale;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 71
    .local v0, "chars":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Character;>;"
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    .line 71
    if-eqz v2, :cond_0

    .line 74
    const-string/jumbo v2, "yMdhms"

    const-string/jumbo v3, "yMLdahHKkms"

    .line 73
    invoke-static {v0, p1, v2, v3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 71
    if-eqz v2, :cond_0

    .line 76
    const-string/jumbo v2, "yMdHms"

    const-string/jumbo v3, "yMLdahHKkms"

    .line 75
    invoke-static {v0, p1, v2, v3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 77
    :goto_0
    if-eqz v1, :cond_2

    .line 78
    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v2

    iput-object v2, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    .line 79
    if-eqz p1, :cond_1

    const-string/jumbo v2, "en"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    iput-boolean v4, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    .line 91
    :goto_1
    return-void

    .line 71
    :cond_0
    const/4 v1, 0x0

    .local v1, "success":Z
    goto :goto_0

    .line 85
    .end local v1    # "success":Z
    :cond_1
    sget-object v2, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    iget-object v3, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_1

    .line 88
    :cond_2
    sget-object v2, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    iput-object v2, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    .line 89
    iput-boolean v4, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_1
.end method

.method public static getInstance()Landroid/text/method/DateTimeKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 108
    sget-object v2, Landroid/text/method/DateTimeKeyListener;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_0
    sget-object v1, Landroid/text/method/DateTimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/method/DateTimeKeyListener;

    .line 110
    .local v0, "instance":Landroid/text/method/DateTimeKeyListener;
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/text/method/DateTimeKeyListener;

    .end local v0    # "instance":Landroid/text/method/DateTimeKeyListener;
    invoke-direct {v0, p0}, Landroid/text/method/DateTimeKeyListener;-><init>(Ljava/util/Locale;)V

    .line 112
    .restart local v0    # "instance":Landroid/text/method/DateTimeKeyListener;
    sget-object v1, Landroid/text/method/DateTimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 115
    return-object v0

    .line 108
    .end local v0    # "instance":Landroid/text/method/DateTimeKeyListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    const/4 v0, 0x4

    return v0
.end method
