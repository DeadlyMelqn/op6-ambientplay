.class public Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "UsbACAudioStreamEndpoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACAudioStreamEndpoint"


# direct methods
.method public constructor <init>(IBB)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subclass"    # B

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbACEndpoint;-><init>(IBB)V

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic getSubclass()B
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubclass()B

    move-result v0

    return v0
.end method

.method public bridge synthetic getSubtype()B
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubtype()B

    move-result v0

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 2
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 36
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;->mLength:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    .line 37
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;->mLength:I

    return v0
.end method
