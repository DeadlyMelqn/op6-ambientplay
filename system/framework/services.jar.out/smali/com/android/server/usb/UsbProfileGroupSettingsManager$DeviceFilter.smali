.class Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;
.super Ljava/lang/Object;
.source "UsbProfileGroupSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbProfileGroupSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceFilter"
.end annotation


# instance fields
.field public final mClass:I

.field public final mManufacturerName:Ljava/lang/String;

.field public final mProductId:I

.field public final mProductName:Ljava/lang/String;

.field public final mProtocol:I

.field public final mSerialNumber:Ljava/lang/String;

.field public final mSubclass:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # I
    .param p2, "pid"    # I
    .param p3, "clasz"    # I
    .param p4, "subclass"    # I
    .param p5, "protocol"    # I
    .param p6, "manufacturer"    # Ljava/lang/String;
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "serialnum"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    .line 188
    iput p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    .line 189
    iput p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    .line 190
    iput p4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    .line 191
    iput p5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    .line 192
    iput-object p6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 193
    iput-object p7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    .line 194
    iput-object p8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    .line 199
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    .line 200
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    .line 201
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    .line 202
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    .line 203
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private matches(III)Z
    .locals 4
    .param p1, "clasz"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 293
    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-ne p1, v2, :cond_4

    .line 294
    :cond_0
    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-ne p2, v2, :cond_4

    .line 295
    :cond_1
    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-ne p3, v2, :cond_3

    .line 293
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 295
    goto :goto_0

    :cond_4
    move v0, v1

    .line 293
    goto :goto_0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;
    .locals 19
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v2, -0x1

    .line 211
    .local v2, "vendorId":I
    const/4 v3, -0x1

    .line 212
    .local v3, "productId":I
    const/4 v4, -0x1

    .line 213
    .local v4, "deviceClass":I
    const/4 v5, -0x1

    .line 214
    .local v5, "deviceSubclass":I
    const/4 v6, -0x1

    .line 215
    .local v6, "deviceProtocol":I
    const/4 v7, 0x0

    .line 216
    .local v7, "manufacturerName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 217
    .local v8, "productName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 219
    .local v9, "serialNumber":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    .line 220
    .local v10, "count":I
    const/4 v12, 0x0

    .end local v7    # "manufacturerName":Ljava/lang/String;
    .end local v8    # "productName":Ljava/lang/String;
    .end local v9    # "serialNumber":Ljava/lang/String;
    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_a

    .line 221
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 222
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 224
    .local v16, "value":Ljava/lang/String;
    const-string/jumbo v1, "manufacturer-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    move-object/from16 v7, v16

    .line 220
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const-string/jumbo v1, "product-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    move-object/from16 v8, v16

    .local v8, "productName":Ljava/lang/String;
    goto :goto_1

    .line 228
    .end local v8    # "productName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "serial-number"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    move-object/from16 v9, v16

    .local v9, "serialNumber":Ljava/lang/String;
    goto :goto_1

    .line 232
    .end local v9    # "serialNumber":Ljava/lang/String;
    :cond_3
    const/16 v15, 0xa

    .line 233
    .local v15, "radix":I
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v1, v0, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ne v1, v0, :cond_5

    .line 234
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x78

    move/from16 v0, v17

    if-eq v1, v0, :cond_4

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x58

    move/from16 v0, v17

    if-ne v1, v0, :cond_5

    .line 236
    :cond_4
    const/16 v15, 0x10

    .line 237
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 240
    :cond_5
    :try_start_0
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 245
    .local v13, "intValue":I
    const-string/jumbo v1, "vendor-id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 246
    move v2, v13

    goto :goto_1

    .line 241
    .end local v13    # "intValue":I
    :catch_0
    move-exception v11

    .line 242
    .local v11, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "invalid number for field "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 247
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "intValue":I
    :cond_6
    const-string/jumbo v1, "product-id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 248
    move v3, v13

    goto/16 :goto_1

    .line 249
    :cond_7
    const-string/jumbo v1, "class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 250
    move v4, v13

    goto/16 :goto_1

    .line 251
    :cond_8
    const-string/jumbo v1, "subclass"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 252
    move v5, v13

    goto/16 :goto_1

    .line 253
    :cond_9
    const-string/jumbo v1, "protocol"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    move v6, v13

    goto/16 :goto_1

    .line 258
    .end local v13    # "intValue":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "radix":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_a
    new-instance v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public contains(Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;)Z
    .locals 4
    .param p1, "device"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 336
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_0

    iget v0, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v1, :cond_0

    return v2

    .line 337
    :cond_0
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v3, :cond_1

    iget v0, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    return v2

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 339
    iget-object v1, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 338
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 340
    return v2

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 343
    return v2

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 345
    if-eqz v0, :cond_4

    .line 347
    return v2

    .line 351
    :cond_4
    iget v0, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    iget v1, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    iget v2, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->matches(III)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 357
    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-ne v2, v3, :cond_1

    .line 359
    :cond_0
    return v4

    .line 358
    :cond_1
    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v2, v3, :cond_0

    .line 361
    instance-of v2, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;

    if-eqz v2, :cond_f

    move-object v1, p1

    .line 362
    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;

    .line 364
    .local v1, "filter":Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;
    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v2, v3, :cond_2

    .line 365
    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v2, v3, :cond_3

    .line 369
    :cond_2
    return v4

    .line 366
    :cond_3
    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-ne v2, v3, :cond_2

    .line 367
    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v2, v3, :cond_2

    .line 368
    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-ne v2, v3, :cond_2

    .line 371
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 372
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 383
    :cond_4
    return v4

    .line 373
    :cond_5
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 374
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 375
    :cond_6
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 376
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 377
    :cond_7
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 378
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 379
    :cond_8
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 380
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 381
    :cond_9
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 382
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 385
    :cond_a
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 386
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 387
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 385
    if-nez v2, :cond_d

    .line 388
    :cond_b
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 389
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 390
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 385
    if-nez v2, :cond_d

    .line 391
    :cond_c
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 392
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 393
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 385
    if-eqz v2, :cond_e

    .line 394
    :cond_d
    return v4

    .line 396
    :cond_e
    return v5

    .line 398
    .end local v1    # "filter":Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;
    :cond_f
    instance-of v2, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_1d

    move-object v0, p1

    .line 399
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 400
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v2, v3, :cond_10

    .line 401
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v2, v3, :cond_11

    .line 405
    :cond_10
    return v4

    .line 402
    :cond_11
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-ne v2, v3, :cond_10

    .line 403
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v2, v3, :cond_10

    .line 404
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-ne v2, v3, :cond_10

    .line 407
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    .line 413
    :cond_12
    return v4

    .line 408
    :cond_13
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_14

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    .line 409
    :cond_14
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 410
    :cond_15
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_16

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    .line 411
    :cond_16
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 412
    :cond_17
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v2, :cond_18

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    .line 415
    :cond_18
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 416
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 415
    if-nez v2, :cond_1b

    .line 417
    :cond_19
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 418
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 415
    if-nez v2, :cond_1b

    .line 419
    :cond_1a
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 420
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 415
    if-eqz v2, :cond_1c

    .line 421
    :cond_1b
    return v4

    .line 423
    :cond_1c
    return v5

    .line 425
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_1d
    return v4
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 430
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    .line 431
    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    .line 430
    xor-int/2addr v0, v1

    return v0
.end method

.method public matches(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 299
    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v3, v5, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    iget v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v3, v4, :cond_0

    return v6

    .line 300
    :cond_0
    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v3, v5, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    iget v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v3, v4, :cond_1

    return v6

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return v6

    .line 302
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    return v6

    .line 303
    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    return v6

    .line 304
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 305
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 304
    if-eqz v3, :cond_5

    .line 305
    return v6

    .line 306
    :cond_5
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 307
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 306
    if-eqz v3, :cond_6

    .line 307
    return v6

    .line 308
    :cond_6
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 309
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 308
    if-eqz v3, :cond_7

    .line 309
    return v6

    .line 312
    :cond_7
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v4

    .line 313
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v5

    .line 312
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->matches(III)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 313
    return v7

    .line 316
    :cond_8
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 317
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_a

    .line 318
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 319
    .local v2, "intf":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    .line 320
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v5

    .line 319
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->matches(III)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 320
    return v7

    .line 317
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v2    # "intf":Landroid/hardware/usb/UsbInterface;
    :cond_a
    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const-string/jumbo v1, ",mClass="

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const-string/jumbo v1, ",mSubclass="

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    const-string/jumbo v1, ",mProtocol="

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    const-string/jumbo v1, ",mManufacturerName="

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v1, ",mProductName="

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v1, ",mSerialNumber="

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    const-string/jumbo v1, "]"

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 264
    const-string/jumbo v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_0

    .line 266
    const-string/jumbo v0, "vendor-id"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    :cond_0
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v3, :cond_1

    .line 269
    const-string/jumbo v0, "product-id"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    :cond_1
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-eq v0, v3, :cond_2

    .line 272
    const-string/jumbo v0, "class"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    :cond_2
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v0, v3, :cond_3

    .line 275
    const-string/jumbo v0, "subclass"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    :cond_3
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v0, v3, :cond_4

    .line 278
    const-string/jumbo v0, "protocol"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 281
    const-string/jumbo v0, "manufacturer-name"

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 284
    const-string/jumbo v0, "product-name"

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 287
    const-string/jumbo v0, "serial-number"

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    :cond_7
    const-string/jumbo v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    return-void
.end method
