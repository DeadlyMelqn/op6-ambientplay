.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final BOLD_WEIGHT:I = 0x2bc

.field public static final NORMAL_WEIGHT:I = 0x190

.field private static final sLock:Ljava/lang/Object;

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mFallbackFamilyName:Ljava/lang/String;

.field private mFd:Ljava/io/FileDescriptor;

.field private mFontBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mFonts:[Landroid/provider/FontsContract$FontInfo;

.field private mItalic:I

.field private mPath:Ljava/lang/String;

.field private mTtcIndex:I

.field private mWeight:I


# direct methods
.method static synthetic -wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;
    .locals 1
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I

    .prologue
    invoke-static/range {p0 .. p5}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 545
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    .line 549
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 548
    sput-object v0, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 344
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 383
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 384
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "path"    # Ljava/io/File;

    .prologue
    const/4 v0, -0x1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 344
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 352
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v0, -0x1

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 344
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 364
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    .line 365
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 344
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 373
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public constructor <init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V
    .locals 1
    .param p1, "fonts"    # [Landroid/provider/FontsContract$FontInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/provider/FontsContract$FontInfo;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "buffers":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    const/4 v0, -0x1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 344
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 402
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    .line 403
    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    .line 404
    return-void
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;
    .locals 8
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I

    .prologue
    .line 520
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v3

    .line 521
    .local v3, "pkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 523
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 524
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    if-eqz p3, :cond_1

    .line 536
    const/4 v5, 0x0

    array-length v6, p3

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v0, p3, v5

    .line 537
    .local v0, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v0}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string/jumbo v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 542
    .end local v0    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private resolveFallbackTypeface()Landroid/graphics/Typeface;
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 552
    iget-object v8, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 553
    return-object v9

    .line 556
    :cond_0
    sget-object v8, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    iget-object v9, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 557
    .local v0, "base":Landroid/graphics/Typeface;
    if-nez v0, :cond_1

    .line 558
    sget-object v0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 561
    :cond_1
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v8, v10, :cond_2

    iget v8, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v8, v10, :cond_2

    .line 562
    return-object v0

    .line 565
    :cond_2
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v8, v10, :cond_3

    invoke-static {v0}, Landroid/graphics/Typeface;->-get1(Landroid/graphics/Typeface;)I

    move-result v5

    .line 567
    .local v5, "weight":I
    :goto_0
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v8, v10, :cond_5

    invoke-static {v0}, Landroid/graphics/Typeface;->-get0(Landroid/graphics/Typeface;)I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    :goto_1
    const/4 v2, 0x1

    .line 568
    .local v2, "italic":Z
    :goto_2
    shl-int/lit8 v8, v5, 0x1

    if-eqz v2, :cond_6

    :goto_3
    or-int v3, v8, v6

    .line 571
    .local v3, "key":I
    sget-object v7, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    monitor-enter v7

    .line 572
    :try_start_0
    sget-object v6, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v8, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 573
    .local v1, "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v1, :cond_7

    .line 574
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_7

    monitor-exit v7

    .line 576
    return-object v4

    .line 565
    .end local v1    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v2    # "italic":Z
    .end local v3    # "key":I
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    .end local v5    # "weight":I
    :cond_3
    iget v5, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .restart local v5    # "weight":I
    goto :goto_0

    .line 567
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "italic":Z
    goto :goto_2

    .end local v2    # "italic":Z
    :cond_5
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v8, v6, :cond_4

    goto :goto_1

    .restart local v2    # "italic":Z
    :cond_6
    move v6, v7

    .line 568
    goto :goto_3

    .line 580
    .restart local v1    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .restart local v3    # "key":I
    :cond_7
    :try_start_1
    new-instance v4, Landroid/graphics/Typeface;

    .line 582
    iget-wide v8, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 581
    invoke-static {v8, v9, v5, v2}, Landroid/graphics/Typeface;->-wrap1(JIZ)J

    move-result-wide v8

    .line 580
    const/4 v6, 0x0

    invoke-direct {v4, v8, v9, v6}, Landroid/graphics/Typeface;-><init>(JLandroid/graphics/Typeface;)V

    .line 584
    .restart local v4    # "typeface":Landroid/graphics/Typeface;
    if-nez v1, :cond_8

    .line 585
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v6, 0x4

    invoke-direct {v1, v6}, Landroid/util/SparseArray;-><init>(I)V

    .line 586
    .restart local v1    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v6, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v8, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v6, v8, v9, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 588
    :cond_8
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 590
    return-object v4

    .line 571
    .end local v1    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method public build()Landroid/graphics/Typeface;
    .locals 29

    .prologue
    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_b

    .line 600
    const/4 v14, 0x0

    const/16 v22, 0x0

    .local v22, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 601
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .local v23, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 602
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 603
    .local v6, "size":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 605
    .local v9, "buffer":Ljava/nio/ByteBuffer;
    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    .line 606
    .local v8, "fontFamily":Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget v10, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 607
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 608
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v3

    .line 617
    if-eqz v23, :cond_0

    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v14, :cond_1

    :try_start_3
    throw v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 615
    :catch_0
    move-exception v20

    .local v20, "e":Ljava/io/IOException;
    move-object/from16 v22, v23

    .line 616
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v6    # "size":J
    .end local v8    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    .end local v23    # "fis":Ljava/io/FileInputStream;
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    .line 617
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v2    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "size":J
    .restart local v8    # "fontFamily":Landroid/graphics/FontFamily;
    .restart local v9    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v23    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v14

    goto :goto_0

    .line 608
    :cond_1
    return-object v3

    .line 610
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_5

    .line 611
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v3

    .line 617
    if-eqz v23, :cond_3

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_2
    if-eqz v14, :cond_4

    :try_start_6
    throw v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v14

    goto :goto_2

    .line 611
    :cond_4
    return-object v3

    .line 613
    :cond_5
    const/4 v3, 0x1

    :try_start_7
    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    .line 614
    .local v21, "families":[Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v3

    .line 617
    if-eqz v23, :cond_6

    :try_start_8
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_6
    :goto_3
    if-eqz v14, :cond_7

    :try_start_9
    throw v14
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_3
    move-exception v14

    goto :goto_3

    .line 614
    :cond_7
    return-object v3

    .line 617
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v6    # "size":J
    .end local v8    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    .end local v21    # "families":[Landroid/graphics/FontFamily;
    .end local v23    # "fis":Ljava/io/FileInputStream;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    .end local v22    # "fis":Ljava/io/FileInputStream;
    :goto_4
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v28, v4

    move-object v4, v3

    move-object/from16 v3, v28

    :goto_5
    if-eqz v22, :cond_8

    :try_start_b
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_8
    :goto_6
    if-eqz v4, :cond_a

    :try_start_c
    throw v4

    .line 615
    :catch_5
    move-exception v20

    .restart local v20    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 617
    .end local v20    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    if-nez v4, :cond_9

    move-object v4, v5

    goto :goto_6

    :cond_9
    if-eq v4, v5, :cond_8

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    throw v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 618
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v3, :cond_f

    .line 620
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 619
    invoke-static/range {v10 .. v15}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v25

    .line 621
    .local v25, "key":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 622
    :try_start_d
    invoke-static {}, Landroid/graphics/Typeface;->-get2()Landroid/util/LruCache;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Typeface;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 623
    .local v27, "typeface":Landroid/graphics/Typeface;
    if-eqz v27, :cond_c

    monitor-exit v4

    return-object v27

    .line 624
    :cond_c
    :try_start_e
    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    .line 625
    .restart local v8    # "fontFamily":Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    .line 626
    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v18, v0

    const/4 v14, 0x1

    move-object v10, v8

    .line 625
    invoke-virtual/range {v10 .. v18}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 627
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 628
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 630
    :cond_d
    :try_start_f
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_e

    .line 631
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 633
    :cond_e
    const/4 v3, 0x1

    :try_start_10
    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    .line 634
    .restart local v21    # "families":[Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v27

    .line 635
    invoke-static {}, Landroid/graphics/Typeface;->-get2()Landroid/util/LruCache;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    monitor-exit v4

    .line 636
    return-object v27

    .line 621
    .end local v8    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v21    # "families":[Landroid/graphics/FontFamily;
    .end local v27    # "typeface":Landroid/graphics/Typeface;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 638
    .end local v25    # "key":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 639
    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    .line 640
    .restart local v8    # "fontFamily":Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object v10, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_10

    .line 641
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 642
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    .line 644
    :cond_10
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_11

    .line 645
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    .line 647
    :cond_11
    const/4 v3, 0x1

    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    .line 648
    .restart local v21    # "families":[Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    .line 649
    .end local v8    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v21    # "families":[Landroid/graphics/FontFamily;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v3, :cond_18

    .line 650
    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    .line 651
    .restart local v8    # "fontFamily":Landroid/graphics/FontFamily;
    const/16 v19, 0x0

    .line 652
    .local v19, "atLeastOneFont":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_7
    if-ge v3, v5, :cond_16

    aget-object v24, v4, v3

    .line 653
    .local v24, "font":Landroid/provider/FontsContract$FontInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 654
    .local v11, "fontBuffer":Ljava/nio/ByteBuffer;
    if-nez v11, :cond_13

    .line 652
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 658
    :cond_13
    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getTtcIndex()I

    move-result v12

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v13

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getWeight()I

    move-result v14

    .line 659
    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->isItalic()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v15, 0x1

    :goto_9
    move-object v10, v8

    .line 657
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v26

    .line 660
    .local v26, "success":Z
    if-nez v26, :cond_15

    .line 661
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 662
    const/4 v3, 0x0

    return-object v3

    .line 659
    .end local v26    # "success":Z
    :cond_14
    const/4 v15, 0x0

    goto :goto_9

    .line 664
    .restart local v26    # "success":Z
    :cond_15
    const/16 v19, 0x1

    goto :goto_8

    .line 666
    .end local v11    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v24    # "font":Landroid/provider/FontsContract$FontInfo;
    .end local v26    # "success":Z
    :cond_16
    if-nez v19, :cond_17

    .line 669
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 670
    const/4 v3, 0x0

    return-object v3

    .line 672
    :cond_17
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    .line 673
    const/4 v3, 0x1

    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    .line 674
    .restart local v21    # "families":[Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    .line 678
    .end local v8    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v19    # "atLeastOneFont":Z
    .end local v21    # "families":[Landroid/graphics/FontFamily;
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "No source was set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v14

    goto/16 :goto_5

    .end local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v3

    move-object/from16 v22, v23

    .end local v23    # "fis":Ljava/io/FileInputStream;
    .local v22, "fis":Ljava/io/FileInputStream;
    move-object v4, v14

    goto/16 :goto_5

    .end local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object/from16 v22, v23

    .end local v23    # "fis":Ljava/io/FileInputStream;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method public setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 0
    .param p1, "familyName"    # Ljava/lang/String;

    .prologue
    .line 505
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    .line 506
    return-object p0
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 2
    .param p1, "variationSettings"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 456
    const-string/jumbo v1, "Font variation settings can not be specified for FontResult source."

    .line 455
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v0, :cond_1

    .line 459
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 462
    return-object p0
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .locals 2
    .param p1, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .prologue
    .line 471
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 473
    const-string/jumbo v1, "Font variation settings can not be specified for FontResult source."

    .line 472
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v0, :cond_1

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 479
    return-object p0
.end method

.method public setItalic(Z)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "italic"    # Z

    .prologue
    .line 426
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 427
    return-object p0

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .locals 2
    .param p1, "ttcIndex"    # I

    .prologue
    .line 438
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 440
    const-string/jumbo v1, "TTC index can not be specified for FontResult source."

    .line 439
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    .line 443
    return-object p0
.end method

.method public setWeight(I)Landroid/graphics/Typeface$Builder;
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 414
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 415
    return-object p0
.end method
