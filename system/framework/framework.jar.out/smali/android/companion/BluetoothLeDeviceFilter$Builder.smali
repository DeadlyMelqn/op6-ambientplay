.class public final Landroid/companion/BluetoothLeDeviceFilter$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "BluetoothLeDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/BluetoothLeDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder",
        "<",
        "Landroid/companion/BluetoothLeDeviceFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private mNamePattern:Ljava/util/regex/Pattern;

.field private mRawDataFilter:[B

.field private mRawDataFilterMask:[B

.field private mRenameBytesFrom:I

.field private mRenameBytesLength:I

.field private mRenameBytesReverseOrder:Z

.field private mRenameNameFrom:I

.field private mRenameNameLength:I

.field private mRenamePrefix:Ljava/lang/String;

.field private mRenameSuffix:Ljava/lang/String;

.field private mScanFilter:Landroid/bluetooth/le/ScanFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 291
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    .line 298
    iput v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    .line 300
    iput v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 291
    return-void
.end method

.method private checkRangeNotEmpty(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 408
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "Range must be non-empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 409
    return-void
.end method

.method private checkRenameNotSet()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Renaming rule can only be set once"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 405
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/companion/BluetoothLeDeviceFilter;->getRenamePrefixLengthLimit()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 415
    :goto_0
    const-string/jumbo v1, "Prefix is too long"

    .line 414
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 416
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    .line 417
    iput-object p2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameSuffix:Ljava/lang/String;

    .line 418
    return-object p0

    .line 414
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/companion/BluetoothLeDeviceFilter;
    .locals 13

    .prologue
    .line 425
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->markUsed()V

    .line 426
    new-instance v0, Landroid/companion/BluetoothLeDeviceFilter;

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 427
    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilter:[B

    iget-object v4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilterMask:[B

    .line 428
    iget-object v5, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    iget-object v6, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameSuffix:Ljava/lang/String;

    .line 429
    iget v7, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    iget v8, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesLength:I

    .line 430
    iget v9, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    iget v10, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameLength:I

    .line 431
    iget-boolean v11, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 426
    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/companion/BluetoothLeDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZLandroid/companion/BluetoothLeDeviceFilter;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->build()Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object v0

    return-object v0
.end method

.method public setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 0
    .param p1, "regex"    # Ljava/util/regex/Pattern;

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 311
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 312
    return-object p0
.end method

.method public setRawDataFilter([B[B)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 3
    .param p1, "rawDataFilter"    # [B
    .param p2, "rawDataFilterMask"    # [B

    .prologue
    const/4 v0, 0x1

    .line 338
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 339
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    if-eqz p2, :cond_0

    .line 341
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    const-string/jumbo v1, "Mask and filter should be the same length"

    .line 340
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 343
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilter:[B

    .line 344
    iput-object p2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilterMask:[B

    .line 345
    return-object p0

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRenameFromBytes(Ljava/lang/String;Ljava/lang/String;IILjava/nio/ByteOrder;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "bytesFrom"    # I
    .param p4, "bytesLength"    # I
    .param p5, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 369
    invoke-direct {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRenameNotSet()V

    .line 370
    invoke-direct {p0, p4}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRangeNotEmpty(I)V

    .line 371
    iput p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    .line 372
    iput p4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesLength:I

    .line 373
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 374
    invoke-direct {p0, p1, p2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRenameFromName(Ljava/lang/String;Ljava/lang/String;II)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "nameFrom"    # I
    .param p4, "nameLength"    # I

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRenameNotSet()V

    .line 396
    invoke-direct {p0, p4}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRangeNotEmpty(I)V

    .line 397
    iput p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    .line 398
    iput p4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameLength:I

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 400
    invoke-direct {p0, p1, p2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setScanFilter(Landroid/bluetooth/le/ScanFilter;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 0
    .param p1, "scanFilter"    # Landroid/bluetooth/le/ScanFilter;

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 324
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 325
    return-object p0
.end method
