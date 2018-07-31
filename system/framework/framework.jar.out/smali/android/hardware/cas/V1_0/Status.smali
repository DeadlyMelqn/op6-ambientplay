.class public final Landroid/hardware/cas/V1_0/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final BAD_VALUE:I = 0x6

.field public static final ERROR_CAS_CANNOT_HANDLE:I = 0x4

.field public static final ERROR_CAS_DECRYPT:I = 0xd

.field public static final ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED:I = 0xc

.field public static final ERROR_CAS_DEVICE_REVOKED:I = 0xb

.field public static final ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x9

.field public static final ERROR_CAS_INVALID_STATE:I = 0x5

.field public static final ERROR_CAS_LICENSE_EXPIRED:I = 0x2

.field public static final ERROR_CAS_NOT_PROVISIONED:I = 0x7

.field public static final ERROR_CAS_NO_LICENSE:I = 0x1

.field public static final ERROR_CAS_RESOURCE_BUSY:I = 0x8

.field public static final ERROR_CAS_SESSION_NOT_OPENED:I = 0x3

.field public static final ERROR_CAS_TAMPER_DETECTED:I = 0xa

.field public static final ERROR_CAS_UNKNOWN:I = 0xe

.field public static final OK:I


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
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "flipped":I
    const-string/jumbo v2, "OK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 74
    const-string/jumbo v2, "ERROR_CAS_NO_LICENSE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 v0, 0x1

    .line 77
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 78
    const-string/jumbo v2, "ERROR_CAS_LICENSE_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v0, v0, 0x2

    .line 81
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 82
    const-string/jumbo v2, "ERROR_CAS_SESSION_NOT_OPENED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v0, v0, 0x3

    .line 85
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 86
    const-string/jumbo v2, "ERROR_CAS_CANNOT_HANDLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v0, v0, 0x4

    .line 89
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 90
    const-string/jumbo v2, "ERROR_CAS_INVALID_STATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v0, v0, 0x5

    .line 93
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 94
    const-string/jumbo v2, "BAD_VALUE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v0, v0, 0x6

    .line 97
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 98
    const-string/jumbo v2, "ERROR_CAS_NOT_PROVISIONED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v0, v0, 0x7

    .line 101
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 102
    const-string/jumbo v2, "ERROR_CAS_RESOURCE_BUSY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v0, v0, 0x8

    .line 105
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 106
    const-string/jumbo v2, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v0, v0, 0x9

    .line 109
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 110
    const-string/jumbo v2, "ERROR_CAS_TAMPER_DETECTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v0, v0, 0xa

    .line 113
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 114
    const-string/jumbo v2, "ERROR_CAS_DEVICE_REVOKED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v0, v0, 0xb

    .line 117
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 118
    const-string/jumbo v2, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v0, v0, 0xc

    .line 121
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 122
    const-string/jumbo v2, "ERROR_CAS_DECRYPT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v0, v0, 0xd

    .line 125
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 126
    const-string/jumbo v2, "ERROR_CAS_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v0, v0, 0xe

    .line 129
    :cond_d
    if-eq p0, v0, :cond_e

    .line 130
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

    .line 132
    :cond_e
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const-string/jumbo v0, "OK"

    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 25
    const-string/jumbo v0, "ERROR_CAS_NO_LICENSE"

    return-object v0

    .line 27
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 28
    const-string/jumbo v0, "ERROR_CAS_LICENSE_EXPIRED"

    return-object v0

    .line 30
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 31
    const-string/jumbo v0, "ERROR_CAS_SESSION_NOT_OPENED"

    return-object v0

    .line 33
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 34
    const-string/jumbo v0, "ERROR_CAS_CANNOT_HANDLE"

    return-object v0

    .line 36
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 37
    const-string/jumbo v0, "ERROR_CAS_INVALID_STATE"

    return-object v0

    .line 39
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 40
    const-string/jumbo v0, "BAD_VALUE"

    return-object v0

    .line 42
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 43
    const-string/jumbo v0, "ERROR_CAS_NOT_PROVISIONED"

    return-object v0

    .line 45
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 46
    const-string/jumbo v0, "ERROR_CAS_RESOURCE_BUSY"

    return-object v0

    .line 48
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 49
    const-string/jumbo v0, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    return-object v0

    .line 51
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 52
    const-string/jumbo v0, "ERROR_CAS_TAMPER_DETECTED"

    return-object v0

    .line 54
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 55
    const-string/jumbo v0, "ERROR_CAS_DEVICE_REVOKED"

    return-object v0

    .line 57
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 58
    const-string/jumbo v0, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    return-object v0

    .line 60
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 61
    const-string/jumbo v0, "ERROR_CAS_DECRYPT"

    return-object v0

    .line 63
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 64
    const-string/jumbo v0, "ERROR_CAS_UNKNOWN"

    return-object v0

    .line 66
    :cond_e
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
