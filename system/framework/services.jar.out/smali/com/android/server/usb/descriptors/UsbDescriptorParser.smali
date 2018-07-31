.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "UsbDescriptorParser.java"


# static fields
.field private static final IN_HEADSET_TRIGGER:F = 0.75f

.field private static final OUT_HEADSET_TRIGGER:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "UsbDescriptorParser"


# instance fields
.field private mACInterfacesSpec:I

.field private mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field private mDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 38
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 40
    return-void
.end method

.method private allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 6
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->resetReadCount()V

    .line 73
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    .line 74
    .local v1, "length":I
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    .line 76
    .local v2, "type":B
    const/4 v0, 0x0

    .line 77
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    sparse-switch v2, :sswitch_data_0

    .line 126
    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_0
    if-nez v0, :cond_0

    .line 128
    const-string/jumbo v3, "UsbDescriptorParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Descriptor len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " type:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Lcom/android/server/usb/descriptors/UsbUnknown;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbUnknown;-><init>(IB)V

    .line 133
    :cond_0
    return-object v0

    .line 82
    .restart local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_0
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;-><init>(IB)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 83
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    goto :goto_0

    .line 86
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_1
    new-instance v0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;-><init>(IB)V

    .line 87
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    goto :goto_0

    .line 90
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_2
    new-instance v0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;-><init>(IB)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 91
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    goto :goto_0

    .line 94
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_3
    new-instance v0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;-><init>(IB)V

    .line 95
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    goto :goto_0

    .line 101
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_4
    new-instance v0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;-><init>(IB)V

    .line 102
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    goto :goto_0

    .line 108
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_5
    new-instance v0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;-><init>(IB)V

    .line 109
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    goto :goto_0

    .line 115
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_6
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    goto :goto_0

    .line 119
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :sswitch_7
    invoke-static {p0, v1, v2}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    goto :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xb -> :sswitch_5
        0x21 -> :sswitch_4
        0x24 -> :sswitch_6
        0x25 -> :sswitch_7
    .end sparse-switch
.end method

.method private native getRawDescriptors(Ljava/lang/String;)[B
.end method


# virtual methods
.method public getACInterfaceDescriptors(BB)Ljava/util/ArrayList;
    .locals 7
    .param p1, "subtype"    # B
    .param p2, "subclass"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "descriptor$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 241
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_0

    .line 243
    instance-of v4, v1, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 244
    check-cast v0, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 245
    .local v0, "acDescriptor":Lcom/android/server/usb/descriptors/UsbACInterface;
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v4

    if-ne v4, p1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()B

    move-result v4

    if-ne v4, p2, :cond_0

    .line 247
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    .end local v0    # "acDescriptor":Lcom/android/server/usb/descriptors/UsbACInterface;
    :cond_1
    const-string/jumbo v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized Audio Interface l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 251
    const-string/jumbo v6, " t:0x"

    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 251
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_2
    return-object v3
.end method

.method public getACInterfaceSpec()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return v0
.end method

.method public getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    return-object v0
.end method

.method public getDescriptors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescriptors(B)Ljava/util/ArrayList;
    .locals 4
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 206
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    if-ne v3, p1, :cond_0

    .line 207
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_1
    return-object v2
.end method

.method public getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    return-object v0
.end method

.method public getInputHeadsetProbability()F
    .locals 13

    .prologue
    const/16 v12, 0x402

    const/4 v11, 0x1

    .line 292
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 293
    const/4 v8, 0x0

    return v8

    .line 296
    :cond_0
    const/4 v7, 0x0

    .line 300
    .local v7, "probability":F
    const/4 v3, 0x0

    .line 301
    .local v3, "hasMic":Z
    const/4 v8, 0x2

    invoke-virtual {p0, v8, v11}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BB)Ljava/util/ArrayList;

    move-result-object v0

    .line 303
    .local v0, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "descriptor$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 304
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v8, v1, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v8, :cond_a

    move-object v5, v1

    .line 305
    check-cast v5, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 306
    .local v5, "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x201

    if-eq v8, v9, :cond_2

    .line 307
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    if-ne v8, v12, :cond_9

    .line 310
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 320
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v5    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_3
    const/4 v4, 0x0

    .line 322
    .local v4, "hasSpeaker":Z
    const/4 v8, 0x3

    invoke-virtual {p0, v8, v11}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BB)Ljava/util/ArrayList;

    move-result-object v0

    .line 324
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 325
    .restart local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v8, v1, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v8, :cond_c

    move-object v6, v1

    .line 326
    check-cast v6, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 327
    .local v6, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x301

    if-eq v8, v9, :cond_5

    .line 328
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    .line 329
    const/16 v9, 0x302

    .line 328
    if-ne v8, v9, :cond_b

    .line 331
    :cond_5
    :goto_3
    const/4 v4, 0x1

    .line 340
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v6    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_6
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 341
    const/high16 v7, 0x3f400000    # 0.75f

    .line 344
    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDDescriptor()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 345
    const/high16 v8, 0x3e800000    # 0.25f

    add-float/2addr v7, v8

    .line 348
    :cond_8
    return v7

    .line 308
    .end local v4    # "hasSpeaker":Z
    .restart local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .restart local v5    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_9
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x400

    if-eq v8, v9, :cond_2

    .line 309
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x603

    if-ne v8, v9, :cond_1

    goto :goto_1

    .line 314
    .end local v5    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_a
    const-string/jumbo v8, "UsbDescriptorParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Undefined Audio Input terminal l: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 315
    const-string/jumbo v10, " t:0x"

    .line 314
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 315
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 314
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 330
    .restart local v4    # "hasSpeaker":Z
    .restart local v6    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_b
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    if-ne v8, v12, :cond_4

    goto :goto_3

    .line 335
    .end local v6    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_c
    const-string/jumbo v8, "UsbDescriptorParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Undefined Audio Output terminal l: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 336
    const-string/jumbo v10, " t:0x"

    .line 335
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 336
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 335
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getInterfaceDescriptorsForClass(B)Ljava/util/ArrayList;
    .locals 7
    .param p1, "usbClass"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 220
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 221
    instance-of v4, v0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 222
    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 223
    .local v2, "intrDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()B

    move-result v4

    if-ne v4, p1, :cond_0

    .line 224
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v2    # "intrDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_1
    const-string/jumbo v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized Interface l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 228
    const-string/jumbo v6, " t:0x"

    .line 227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 228
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_2
    return-object v3
.end method

.method public getOutputHeadsetProbability()F
    .locals 9

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 368
    const/4 v6, 0x0

    return v6

    .line 371
    :cond_0
    const/4 v5, 0x0

    .line 375
    .local v5, "probability":F
    const/4 v3, 0x0

    .line 377
    .local v3, "hasSpeaker":Z
    const/4 v6, 0x3

    .line 378
    const/4 v7, 0x1

    .line 377
    invoke-virtual {p0, v6, v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BB)Ljava/util/ArrayList;

    move-result-object v0

    .line 379
    .local v0, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "descriptor$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 380
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v6, v1, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v6, :cond_7

    move-object v4, v1

    .line 381
    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 382
    .local v4, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x301

    if-eq v6, v7, :cond_2

    .line 383
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    .line 384
    const/16 v7, 0x302

    .line 383
    if-ne v6, v7, :cond_6

    .line 386
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 395
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_3
    if-eqz v3, :cond_4

    .line 396
    const/high16 v5, 0x3f400000    # 0.75f

    .line 399
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDDescriptor()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 400
    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v5, v6

    .line 403
    :cond_5
    return v5

    .line 385
    .restart local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .restart local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x402

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 390
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_7
    const-string/jumbo v6, "UsbDescriptorParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Undefined Audio Output terminal l: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 391
    const-string/jumbo v8, " t:0x"

    .line 390
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 391
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 390
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getParsingSpec()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsbSpec()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    return v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public hasHIDDescriptor()Z
    .locals 2

    .prologue
    .line 263
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(B)Ljava/util/ArrayList;

    move-result-object v0

    .line 264
    .local v0, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public hasMIDIInterface()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 272
    invoke-virtual {p0, v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(B)Ljava/util/ArrayList;

    move-result-object v2

    .line 273
    .local v2, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 275
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 276
    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 277
    .local v3, "interfaceDescr":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()B

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 278
    return v7

    .line 281
    .end local v3    # "interfaceDescr":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_1
    const-string/jumbo v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Undefined Audio Class Interface l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 282
    const-string/jumbo v6, " t:0x"

    .line 281
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 282
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public isInputHeadset()Z
    .locals 4

    .prologue
    .line 359
    const-string/jumbo v0, "UsbDescriptorParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "---- isInputHeadset() prob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutputHeadset()Z
    .locals 4

    .prologue
    .line 414
    const-string/jumbo v0, "UsbDescriptorParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "---- isOutputHeadset() prob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetProbability()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseDescriptors([B)V
    .locals 5
    .param p1, "descriptors"    # [B

    .prologue
    .line 148
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 150
    new-instance v2, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v2, p1}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 151
    .local v2, "stream":Lcom/android/server/usb/descriptors/ByteStream;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v3

    if-lez v3, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_1
    if-eqz v0, :cond_0

    .line 162
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 165
    invoke-virtual {v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .restart local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "UsbDescriptorParser"

    const-string/jumbo v4, "Exception allocating USB descriptor."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 166
    .end local v0    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 167
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "UsbDescriptorParser"

    const-string/jumbo v4, "Exception parsing USB descriptors."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->setStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 172
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    throw v3

    .line 176
    :cond_1
    return-void
.end method

.method public parseDevice(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddr"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors(Ljava/lang/String;)[B

    move-result-object v0

    .line 183
    .local v0, "rawDescriptors":[B
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDescriptors([B)V

    .line 185
    const/4 v1, 0x1

    return v1

    .line 187
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setACInterfaceSpec(I)V
    .locals 0
    .param p1, "spec"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 58
    return-void
.end method
