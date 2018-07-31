.class public Lcom/android/server/usb/descriptors/UsbASFormat;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbASFormat.java"


# static fields
.field public static final EXT_FORMAT_TYPE_I:B = -0x7ft

.field public static final EXT_FORMAT_TYPE_II:B = -0x7et

.field public static final EXT_FORMAT_TYPE_III:B = -0x7dt

.field public static final FORMAT_TYPE_I:B = 0x1t

.field public static final FORMAT_TYPE_II:B = 0x2t

.field public static final FORMAT_TYPE_III:B = 0x3t

.field public static final FORMAT_TYPE_IV:B = 0x4t

.field private static final TAG:Ljava/lang/String; = "UsbASFormat"


# instance fields
.field private final mFormatType:B


# direct methods
.method public constructor <init>(IBBBB)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "formatType"    # B
    .param p5, "mSubclass"    # B

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBB)V

    .line 45
    iput-byte p4, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    .line 46
    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 7
    .param p0, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "subtype"    # B
    .param p5, "subclass"    # B

    .prologue
    const/16 v0, 0x200

    .line 72
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v4

    .line 73
    .local v4, "formatType":B
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v6

    .line 75
    .local v6, "acInterfaceSpec":I
    packed-switch v4, :pswitch_data_0

    .line 97
    new-instance v0, Lcom/android/server/usb/descriptors/UsbASFormat;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBB)V

    return-object v0

    .line 77
    :pswitch_0
    if-ne v6, v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ASFormatI;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatI;-><init>(IBBBB)V

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;-><init>(IBBBB)V

    return-object v0

    .line 84
    :pswitch_1
    if-ne v6, v0, :cond_1

    .line 85
    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ASFormatII;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatII;-><init>(IBBBB)V

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;-><init>(IBBBB)V

    return-object v0

    .line 92
    :pswitch_2
    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;-><init>(IBBBB)V

    return-object v0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getBitDepths()[I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelCounts()[I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormatType()B
    .locals 1

    .prologue
    .line 49
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    return v0
.end method

.method public getSampleRates()[I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbASFormat;->getFormatType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getFormatName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method
