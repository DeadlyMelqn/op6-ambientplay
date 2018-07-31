.class Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;
.super Ljava/lang/Object;
.source "UsbProfileGroupSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbProfileGroupSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryFilter"
.end annotation


# instance fields
.field public final mManufacturer:Ljava/lang/String;

.field public final mModel:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .locals 1
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 458
    iput-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 459
    iput-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, "manufacturer":Ljava/lang/String;
    const/4 v3, 0x0

    .line 472
    .local v3, "model":Ljava/lang/String;
    const/4 v6, 0x0

    .line 474
    .local v6, "version":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 475
    .local v0, "count":I
    const/4 v1, 0x0

    .end local v2    # "manufacturer":Ljava/lang/String;
    .end local v3    # "model":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 476
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v7, "manufacturer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 480
    move-object v2, v5

    .line 475
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    const-string/jumbo v7, "model"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 482
    move-object v3, v5

    .local v3, "model":Ljava/lang/String;
    goto :goto_1

    .line 483
    .end local v3    # "model":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "version"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 484
    move-object v6, v5

    .local v6, "version":Ljava/lang/String;
    goto :goto_1

    .line 487
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;

    invoke-direct {v7, v2, v3, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public contains(Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;)Z
    .locals 3
    .param p1, "accessory"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 519
    return v2

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 528
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 529
    :cond_0
    return v2

    .line 528
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 531
    instance-of v3, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 532
    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;

    .line 533
    .local v1, "filter":Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 534
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 533
    if-eqz v3, :cond_2

    .line 535
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 533
    :cond_2
    return v2

    .line 537
    .end local v1    # "filter":Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;
    :cond_3
    instance-of v3, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 538
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 539
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 540
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 539
    if-eqz v3, :cond_4

    .line 541
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 539
    :cond_4
    return v2

    .line 543
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 549
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    .line 548
    :goto_1
    xor-int/2addr v0, v2

    .line 550
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 548
    :goto_2
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 549
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 550
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public matches(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .param p1, "acc"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AccessoryFilter[mManufacturer=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    const-string/jumbo v1, "\", mModel=\""

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    const-string/jumbo v1, "\", mVersion=\""

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    const-string/jumbo v1, "\"]"

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 491
    const-string/jumbo v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 493
    const-string/jumbo v0, "manufacturer"

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 496
    const-string/jumbo v0, "model"

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 499
    const-string/jumbo v0, "version"

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    :cond_2
    const-string/jumbo v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    return-void
.end method
