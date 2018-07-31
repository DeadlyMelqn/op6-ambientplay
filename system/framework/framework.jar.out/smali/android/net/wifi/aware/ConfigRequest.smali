.class public final Landroid/net/wifi/aware/ConfigRequest;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/ConfigRequest$1;,
        Landroid/net/wifi/aware/ConfigRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLUSTER_ID_MAX:I = 0xffff

.field public static final CLUSTER_ID_MIN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/aware/ConfigRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DW_DISABLE:I = 0x0

.field public static final DW_INTERVAL_NOT_INIT:I = -0x1

.field public static final NAN_BAND_24GHZ:I = 0x0

.field public static final NAN_BAND_5GHZ:I = 0x1


# instance fields
.field public final mClusterHigh:I

.field public final mClusterLow:I

.field public final mDiscoveryWindowInterval:[I

.field public final mMasterPreference:I

.field public final mSupport5gBand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/net/wifi/aware/ConfigRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/ConfigRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method private constructor <init>(ZIII[I)V
    .locals 0
    .param p1, "support5gBand"    # Z
    .param p2, "masterPreference"    # I
    .param p3, "clusterLow"    # I
    .param p4, "clusterHigh"    # I
    .param p5, "discoveryWindowInterval"    # [I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 87
    iput p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 88
    iput p3, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 89
    iput p4, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 90
    iput-object p5, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 91
    return-void
.end method

.method synthetic constructor <init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest;)V
    .locals 0
    .param p1, "support5gBand"    # Z
    .param p2, "masterPreference"    # I
    .param p3, "clusterLow"    # I
    .param p4, "clusterHigh"    # I
    .param p5, "discoveryWindowInterval"    # [I
    .param p6, "-this5"    # Landroid/net/wifi/aware/ConfigRequest;

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 136
    if-ne p0, p1, :cond_0

    .line 137
    const/4 v1, 0x1

    return v1

    .line 140
    :cond_0
    instance-of v2, p1, Landroid/net/wifi/aware/ConfigRequest;

    if-nez v2, :cond_1

    .line 141
    return v1

    :cond_1
    move-object v0, p1

    .line 144
    check-cast v0, Landroid/net/wifi/aware/ConfigRequest;

    .line 146
    .local v0, "lhs":Landroid/net/wifi/aware/ConfigRequest;
    iget-boolean v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    iget-boolean v3, v0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    iget v3, v0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-ne v2, v3, :cond_2

    .line 147
    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iget v3, v0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    iget v3, v0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-ne v2, v3, :cond_2

    .line 148
    iget-object v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    iget-object v2, v0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    .line 146
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 153
    const/16 v0, 0x11

    .line 155
    .local v0, "result":I
    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 156
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    add-int v0, v1, v2

    .line 157
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    add-int v0, v1, v2

    .line 158
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    add-int v0, v1, v2

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int v0, v1, v2

    .line 161
    return v0

    .line 155
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConfigRequest [mSupport5gBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMasterPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, ", mClusterLow="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, ", mClusterHigh="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string/jumbo v1, ", mDiscoveryWindowInterval="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "]"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xff

    const/4 v5, 0x5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-gez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 171
    const-string/jumbo v1, "Master Preference specification must be non-negative"

    .line 170
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-ne v0, v1, :cond_2

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-gt v0, v1, :cond_1

    .line 177
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-gez v0, :cond_3

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_3
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    const v1, 0xffff

    if-le v0, v1, :cond_4

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_4
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-gez v0, :cond_5

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_5
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    const v1, 0xffff

    if-le v0, v1, :cond_6

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_6
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-le v0, v1, :cond_7

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 191
    const-string/jumbo v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    .line 190
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 195
    const-string/jumbo v1, "Invalid discovery window interval: must have 2 elements (2.4 & 5"

    .line 194
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v2

    if-eq v0, v4, :cond_a

    .line 198
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v2

    if-lt v0, v3, :cond_9

    .line 199
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v2

    if-le v0, v5, :cond_a

    .line 200
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 201
    const-string/jumbo v1, "Invalid discovery window interval for 2.4GHz: valid is UNSET or [1,5]"

    .line 200
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_a
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v3

    if-eq v0, v4, :cond_c

    .line 204
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v3

    if-ltz v0, :cond_b

    .line 205
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v3

    if-le v0, v5, :cond_c

    .line 206
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 207
    const-string/jumbo v1, "Invalid discovery window interval for 5GHz: valid is UNSET or [0,5]"

    .line 206
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_c
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 113
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
