.class public Landroid/hardware/usb/UsbInterface;
.super Ljava/lang/Object;
.source "UsbInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbInterface$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlternateSetting:I

.field private final mClass:I

.field private mEndpoints:[Landroid/os/Parcelable;

.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mProtocol:I

.field private final mSubclass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Landroid/hardware/usb/UsbInterface$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbInterface$1;-><init>()V

    .line 165
    sput-object v0, Landroid/hardware/usb/UsbInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "alternateSetting"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "Class"    # I
    .param p5, "subClass"    # I
    .param p6, "protocol"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    .line 56
    iput p2, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    .line 57
    iput-object p3, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    .line 58
    iput p4, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    .line 59
    iput p5, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    .line 60
    iput p6, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getAlternateSetting()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    return v0
.end method

.method public getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    aget-object v0, v0, p1

    check-cast v0, Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public getEndpointCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    array-length v0, v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    return v0
.end method

.method public getInterfaceClass()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    return v0
.end method

.method public getInterfaceProtocol()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    return v0
.end method

.method public getInterfaceSubclass()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setEndpoints([Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "endpoints"    # [Landroid/os/Parcelable;

    .prologue
    .line 147
    const-string/jumbo v0, "endpoints"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsbInterface[mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    const-string/jumbo v3, ",mAlternateSetting="

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    const-string/jumbo v3, ",mName="

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    iget-object v3, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    const-string/jumbo v3, ",mClass="

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    const-string/jumbo v3, ",mSubclass="

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    const-string/jumbo v3, ",mProtocol="

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 156
    const-string/jumbo v3, ",mEndpoints=["

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 158
    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 190
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 197
    return-void
.end method
