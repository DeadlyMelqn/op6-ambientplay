.class public final Landroid/hardware/tetheroffload/control/V1_0/OffloadCallbackEvent;
.super Ljava/lang/Object;
.source "OffloadCallbackEvent.java"


# static fields
.field public static final OFFLOAD_STARTED:I = 0x1

.field public static final OFFLOAD_STOPPED_ERROR:I = 0x2

.field public static final OFFLOAD_STOPPED_LIMIT_REACHED:I = 0x5

.field public static final OFFLOAD_STOPPED_UNSUPPORTED:I = 0x3

.field public static final OFFLOAD_SUPPORT_AVAILABLE:I = 0x4


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
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 32
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 33
    const-string/jumbo v2, "OFFLOAD_STARTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const/4 v0, 0x1

    .line 36
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 37
    const-string/jumbo v2, "OFFLOAD_STOPPED_ERROR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    or-int/lit8 v0, v0, 0x2

    .line 40
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 41
    const-string/jumbo v2, "OFFLOAD_STOPPED_UNSUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v0, v0, 0x3

    .line 44
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 45
    const-string/jumbo v2, "OFFLOAD_SUPPORT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v0, v0, 0x4

    .line 48
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 49
    const-string/jumbo v2, "OFFLOAD_STOPPED_LIMIT_REACHED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v0, v0, 0x5

    .line 52
    :cond_4
    if-eq p0, v0, :cond_5

    .line 53
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

    .line 55
    :cond_5
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 11
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 12
    const-string/jumbo v0, "OFFLOAD_STARTED"

    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 15
    const-string/jumbo v0, "OFFLOAD_STOPPED_ERROR"

    return-object v0

    .line 17
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 18
    const-string/jumbo v0, "OFFLOAD_STOPPED_UNSUPPORTED"

    return-object v0

    .line 20
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 21
    const-string/jumbo v0, "OFFLOAD_SUPPORT_AVAILABLE"

    return-object v0

    .line 23
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 24
    const-string/jumbo v0, "OFFLOAD_STOPPED_LIMIT_REACHED"

    return-object v0

    .line 26
    :cond_4
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