.class public final Landroid/bluetooth/le/AdvertisingSetParameters;
.super Ljava/lang/Object;
.source "AdvertisingSetParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertisingSetParameters$1;,
        Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERVAL_HIGH:I = 0x640

.field public static final INTERVAL_LOW:I = 0xa0

.field public static final INTERVAL_MAX:I = 0xffffff

.field public static final INTERVAL_MEDIUM:I = 0x190

.field public static final INTERVAL_MIN:I = 0xa0

.field private static final LIMITED_ADVERTISING_MAX_MILLIS:I = 0x2bf20

.field public static final TX_POWER_HIGH:I = 0x1

.field public static final TX_POWER_LOW:I = -0xf

.field public static final TX_POWER_MAX:I = 0x1

.field public static final TX_POWER_MEDIUM:I = -0x7

.field public static final TX_POWER_MIN:I = -0x7f

.field public static final TX_POWER_ULTRA_LOW:I = -0x15


# instance fields
.field private final connectable:Z

.field private final includeTxPower:Z

.field private final interval:I

.field private final isAnonymous:Z

.field private final isLegacy:Z

.field private final primaryPhy:I

.field private final scannable:Z

.field private final secondaryPhy:I

.field private final txPowerLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertisingSetParameters$1;-><init>()V

    .line 212
    sput-object v0, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->scannable:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    .line 135
    return-void

    :cond_0
    move v0, v2

    .line 126
    goto :goto_0

    :cond_1
    move v0, v2

    .line 127
    goto :goto_1

    :cond_2
    move v0, v2

    .line 128
    goto :goto_2

    :cond_3
    move v0, v2

    .line 129
    goto :goto_3

    :cond_4
    move v1, v2

    .line 130
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/bluetooth/le/AdvertisingSetParameters;

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZZZZZIIII)V
    .locals 0
    .param p1, "connectable"    # Z
    .param p2, "scannable"    # Z
    .param p3, "isLegacy"    # Z
    .param p4, "isAnonymous"    # Z
    .param p5, "includeTxPower"    # Z
    .param p6, "primaryPhy"    # I
    .param p7, "secondaryPhy"    # I
    .param p8, "interval"    # I
    .param p9, "txPowerLevel"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    .line 115
    iput-boolean p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->scannable:Z

    .line 116
    iput-boolean p3, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    .line 117
    iput-boolean p4, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    .line 118
    iput-boolean p5, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    .line 119
    iput p6, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    .line 120
    iput p7, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    .line 121
    iput p8, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    .line 122
    iput p9, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    .line 123
    return-void
.end method

.method synthetic constructor <init>(ZZZZZIIIILandroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 0
    .param p1, "connectable"    # Z
    .param p2, "scannable"    # Z
    .param p3, "isLegacy"    # Z
    .param p4, "isAnonymous"    # Z
    .param p5, "includeTxPower"    # Z
    .param p6, "primaryPhy"    # I
    .param p7, "secondaryPhy"    # I
    .param p8, "interval"    # I
    .param p9, "txPowerLevel"    # I
    .param p10, "-this9"    # Landroid/bluetooth/le/AdvertisingSetParameters;

    .prologue
    invoke-direct/range {p0 .. p9}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIII)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    return v0
.end method

.method public getPrimaryPhy()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    return v0
.end method

.method public getSecondaryPhy()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    return v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    return v0
.end method

.method public includeTxPower()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    return v0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    return v0
.end method

.method public isLegacy()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    return v0
.end method

.method public isScannable()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->scannable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AdvertisingSetParameters [connectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, ", isLegacy="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, ", isAnonymous="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string/jumbo v1, ", includeTxPower="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    const-string/jumbo v1, ", primaryPhy="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, ", secondaryPhy="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    const-string/jumbo v1, ", interval="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string/jumbo v1, ", txPowerLevel="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "]"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->scannable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void

    :cond_0
    move v0, v2

    .line 201
    goto :goto_0

    :cond_1
    move v0, v2

    .line 202
    goto :goto_1

    :cond_2
    move v0, v2

    .line 203
    goto :goto_2

    :cond_3
    move v0, v2

    .line 204
    goto :goto_3

    :cond_4
    move v1, v2

    .line 205
    goto :goto_4
.end method
