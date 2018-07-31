.class public final Landroid/hardware/configstore/V1_0/OptionalUInt64;
.super Ljava/lang/Object;
.source "OptionalUInt64.java"


# instance fields
.field public specified:Z

.field public value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/configstore/V1_0/OptionalUInt64;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/configstore/V1_0/OptionalUInt64;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 58
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 60
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x10

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 61
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 59
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 63
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 64
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 65
    new-instance v11, Landroid/hardware/configstore/V1_0/OptionalUInt64;

    invoke-direct {v11}, Landroid/hardware/configstore/V1_0/OptionalUInt64;-><init>()V

    .line 66
    .local v11, "_hidl_vec_element":Landroid/hardware/configstore/V1_0/OptionalUInt64;
    mul-int/lit8 v1, v9, 0x10

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 67
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 71
    .end local v11    # "_hidl_vec_element":Landroid/hardware/configstore/V1_0/OptionalUInt64;
    :cond_0
    return-object v10
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/configstore/V1_0/OptionalUInt64;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/configstore/V1_0/OptionalUInt64;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 90
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 91
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 93
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 94
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 95
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/configstore/V1_0/OptionalUInt64;

    mul-int/lit8 v5, v1, 0x10

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    return v7

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    return v6

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/configstore/V1_0/OptionalUInt64;

    if-eq v1, v2, :cond_2

    .line 17
    return v6

    :cond_2
    move-object v0, p1

    .line 19
    check-cast v0, Landroid/hardware/configstore/V1_0/OptionalUInt64;

    .line 20
    .local v0, "other":Landroid/hardware/configstore/V1_0/OptionalUInt64;
    iget-boolean v1, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    iget-boolean v2, v0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    if-eq v1, v2, :cond_3

    .line 21
    return v6

    .line 23
    :cond_3
    iget-wide v2, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    iget-wide v4, v0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 24
    return v6

    .line 26
    :cond_4
    return v7
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    iget-boolean v1, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 33
    iget-wide v2, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    .line 77
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    .line 78
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 49
    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 50
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 51
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, ".specified = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v1, ", .value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-wide v2, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 106
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 107
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 81
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 82
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 84
    return-void
.end method
