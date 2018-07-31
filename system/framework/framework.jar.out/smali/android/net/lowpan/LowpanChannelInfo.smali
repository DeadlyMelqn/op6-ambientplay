.class public Landroid/net/lowpan/LowpanChannelInfo;
.super Ljava/lang/Object;
.source "LowpanChannelInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanChannelInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/lowpan/LowpanChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_BANDWIDTH:F = 0.0f

.field public static final UNKNOWN_FREQUENCY:F = 0.0f

.field public static final UNKNOWN_POWER:I = 0x7fffffff


# instance fields
.field private mIndex:I

.field private mIsMaskedByRegulatoryDomain:Z

.field private mMaxTransmitPower:I

.field private mName:Ljava/lang/String;

.field private mSpectrumBandwidth:F

.field private mSpectrumCenterFrequency:F


# direct methods
.method static synthetic -set0(Landroid/net/lowpan/LowpanChannelInfo;I)I
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanChannelInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    return p1
.end method

.method static synthetic -set1(Landroid/net/lowpan/LowpanChannelInfo;Z)Z
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanChannelInfo;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return p1
.end method

.method static synthetic -set2(Landroid/net/lowpan/LowpanChannelInfo;I)I
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanChannelInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    return p1
.end method

.method static synthetic -set3(Landroid/net/lowpan/LowpanChannelInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanChannelInfo;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/lowpan/LowpanChannelInfo;F)F
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanChannelInfo;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return p1
.end method

.method static synthetic -set5(Landroid/net/lowpan/LowpanChannelInfo;F)F
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanChannelInfo;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanChannelInfo$1;-><init>()V

    .line 196
    sput-object v0, Landroid/net/lowpan/LowpanChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 37
    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 38
    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 39
    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 40
    iput-boolean v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 71
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;FF)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cf"    # F
    .param p4, "bw"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 37
    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 38
    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 39
    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 40
    iput-boolean v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 74
    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 75
    iput-object p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 76
    iput p3, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 77
    iput p4, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/lowpan/LowpanChannelInfo;)V
    .locals 0
    .param p1, "-this0"    # Landroid/net/lowpan/LowpanChannelInfo;

    .prologue
    invoke-direct {p0}, Landroid/net/lowpan/LowpanChannelInfo;-><init>()V

    return-void
.end method

.method public static getChannelInfoForIeee802154Page0(I)Landroid/net/lowpan/LowpanChannelInfo;
    .locals 4
    .param p0, "index"    # I

    .prologue
    const v3, 0x49f42400    # 2000000.0f

    .line 44
    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanChannelInfo;-><init>()V

    .line 46
    .local v0, "info":Landroid/net/lowpan/LowpanChannelInfo;
    if-gez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 66
    .end local v0    # "info":Landroid/net/lowpan/LowpanChannelInfo;
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 68
    return-object v0

    .line 49
    .restart local v0    # "info":Landroid/net/lowpan/LowpanChannelInfo;
    :cond_0
    if-nez p0, :cond_1

    .line 50
    const v1, 0x4e4f04d4    # 8.6830003E8f

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 51
    const v1, 0x49127c00    # 600000.0f

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    goto :goto_0

    .line 53
    :cond_1
    const/16 v1, 0xb

    if-ge p0, v1, :cond_2

    .line 54
    int-to-float v1, p0

    mul-float/2addr v1, v3

    const v2, 0x4e5787c8    # 9.04E8f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 55
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    goto :goto_0

    .line 57
    :cond_2
    const/16 v1, 0x1a

    if-ge p0, v1, :cond_3

    .line 59
    int-to-float v1, p0

    const v2, 0x4a989680    # 5000000.0f

    mul-float/2addr v1, v2

    const v2, 0x4f0c1227    # 2.34999987E9f

    add-float/2addr v1, v2

    .line 58
    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 60
    iput v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    goto :goto_0

    .line 63
    :cond_3
    const/4 v0, 0x0

    .local v0, "info":Landroid/net/lowpan/LowpanChannelInfo;
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 155
    instance-of v2, p1, Landroid/net/lowpan/LowpanChannelInfo;

    if-nez v2, :cond_0

    .line 156
    return v1

    :cond_0
    move-object v0, p1

    .line 158
    check-cast v0, Landroid/net/lowpan/LowpanChannelInfo;

    .line 159
    .local v0, "rhs":Landroid/net/lowpan/LowpanChannelInfo;
    iget-object v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    if-ne v2, v3, :cond_1

    .line 161
    iget-boolean v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    iget-boolean v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    if-ne v2, v3, :cond_1

    .line 162
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 163
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 164
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 159
    :cond_1
    return v1
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    return v0
.end method

.method public getMaxTransmitPower()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpectrumBandwidth()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return v0
.end method

.method public getSpectrumCenterFrequency()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 171
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 172
    iget-boolean v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 173
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 174
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 175
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 169
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMaskedByRegulatoryDomain()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    const v4, 0x4e6e6b28    # 1.0E9f

    const v3, 0x49742400    # 1000000.0f

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "Channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 111
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    .line 115
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    .line 116
    const-string/jumbo v1, ", SpectrumCenterFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 117
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    div-float/2addr v2, v4

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "GHz"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_1
    :goto_0
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    .line 131
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    .line 132
    const-string/jumbo v1, ", SpectrumBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 133
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    div-float/2addr v2, v4

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 134
    const-string/jumbo v2, "GHz"

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_2
    :goto_1
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_3

    .line 147
    const-string/jumbo v1, ", MaxTransmitPower: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "dBm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 119
    :cond_4
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 120
    const-string/jumbo v1, ", SpectrumCenterFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 121
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    div-float/2addr v2, v3

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 122
    const-string/jumbo v2, "MHz"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 124
    :cond_5
    const-string/jumbo v1, ", SpectrumCenterFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 125
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    div-float/2addr v2, v6

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "kHz"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 135
    :cond_6
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    .line 136
    const-string/jumbo v1, ", SpectrumBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 137
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    div-float/2addr v2, v3

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 138
    const-string/jumbo v2, "MHz"

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 140
    :cond_7
    const-string/jumbo v1, ", SpectrumBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 141
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    div-float/2addr v2, v6

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 142
    const-string/jumbo v2, "kHz"

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 187
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 190
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 191
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    return-void
.end method
