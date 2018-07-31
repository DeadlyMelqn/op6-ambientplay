.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquiredInfo;
.super Ljava/lang/Object;
.source "FingerprintAcquiredInfo.java"


# static fields
.field public static final ACQUIRED_DUPLICATE_FINGER:I = 0x64

.field public static final ACQUIRED_GOOD:I = 0x0

.field public static final ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final ACQUIRED_PARTIAL:I = 0x1

.field public static final ACQUIRED_TOO_FAST:I = 0x5

.field public static final ACQUIRED_TOO_SLOW:I = 0x4

.field public static final ACQUIRED_VENDOR:I = 0x6

.field public static final ACQUIRED_VENDOR_BASE:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 48
    .local v0, "flipped":I
    const-string/jumbo v2, "ACQUIRED_GOOD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 50
    const-string/jumbo v2, "ACQUIRED_PARTIAL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const/4 v0, 0x1

    .line 53
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 54
    const-string/jumbo v2, "ACQUIRED_INSUFFICIENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v0, v0, 0x2

    .line 57
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 58
    const-string/jumbo v2, "ACQUIRED_IMAGER_DIRTY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v0, v0, 0x3

    .line 61
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 62
    const-string/jumbo v2, "ACQUIRED_TOO_SLOW"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v0, v0, 0x4

    .line 65
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 66
    const-string/jumbo v2, "ACQUIRED_TOO_FAST"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v0, v0, 0x5

    .line 69
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 70
    const-string/jumbo v2, "ACQUIRED_VENDOR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v0, v0, 0x6

    .line 73
    :cond_5
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_6

    .line 74
    const-string/jumbo v2, "ACQUIRED_DUPLICATE_FINGER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v0, v0, 0x64

    .line 77
    :cond_6
    and-int/lit16 v2, p0, 0x3e8

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_7

    .line 78
    const-string/jumbo v2, "ACQUIRED_VENDOR_BASE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit16 v0, v0, 0x3e8

    .line 81
    :cond_7
    if-eq p0, v0, :cond_8

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_8
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 16
    const-string/jumbo v0, "ACQUIRED_GOOD"

    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 19
    const-string/jumbo v0, "ACQUIRED_PARTIAL"

    return-object v0

    .line 21
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 22
    const-string/jumbo v0, "ACQUIRED_INSUFFICIENT"

    return-object v0

    .line 24
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 25
    const-string/jumbo v0, "ACQUIRED_IMAGER_DIRTY"

    return-object v0

    .line 27
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 28
    const-string/jumbo v0, "ACQUIRED_TOO_SLOW"

    return-object v0

    .line 30
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 31
    const-string/jumbo v0, "ACQUIRED_TOO_FAST"

    return-object v0

    .line 33
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 34
    const-string/jumbo v0, "ACQUIRED_VENDOR"

    return-object v0

    .line 36
    :cond_6
    const/16 v0, 0x64

    if-ne p0, v0, :cond_7

    .line 37
    const-string/jumbo v0, "ACQUIRED_DUPLICATE_FINGER"

    return-object v0

    .line 39
    :cond_7
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_8

    .line 40
    const-string/jumbo v0, "ACQUIRED_VENDOR_BASE"

    return-object v0

    .line 42
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
