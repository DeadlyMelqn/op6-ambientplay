.class public Landroid/hardware/usb/UsbConfiguration;
.super Ljava/lang/Object;
.source "UsbConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbConfiguration$1;
    }
.end annotation


# static fields
.field private static final ATTR_REMOTE_WAKEUP:I = 0x20

.field private static final ATTR_SELF_POWERED:I = 0x40

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:I

.field private final mId:I

.field private mInterfaces:[Landroid/os/Parcelable;

.field private final mMaxPower:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Landroid/hardware/usb/UsbConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbConfiguration$1;-><init>()V

    .line 156
    sput-object v0, Landroid/hardware/usb/UsbConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # I
    .param p4, "maxPower"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    .line 64
    iput-object p2, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    .line 65
    iput p3, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    .line 66
    iput p4, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    return v0
.end method

.method public getInterface(I)Landroid/hardware/usb/UsbInterface;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 132
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    aget-object v0, v0, p1

    check-cast v0, Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public getInterfaceCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    array-length v0, v0

    return v0
.end method

.method public getMaxPower()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isRemoteWakeup()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    iget v1, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSelfPowered()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 95
    iget v1, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setInterfaces([Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "interfaces"    # [Landroid/os/Parcelable;

    .prologue
    .line 140
    const-string/jumbo v0, "interfaces"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsbConfiguration[mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    const-string/jumbo v3, ",mName="

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    iget-object v3, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    const-string/jumbo v3, ",mAttributes="

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    iget v3, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    const-string/jumbo v3, ",mMaxPower="

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    iget v3, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    const-string/jumbo v3, ",mInterfaces=["

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 149
    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 179
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 184
    return-void
.end method
