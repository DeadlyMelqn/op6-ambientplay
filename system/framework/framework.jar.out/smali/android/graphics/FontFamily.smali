.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBuilderPtr:J

.field public mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "FontFamily"

    sput-object v0, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "variant"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1, p2}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 53
    return-void
.end method

.method private static native nAbort(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nAddAxisValue(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static nAddFont(JLjava/nio/ByteBuffer;I)Z
    .locals 6
    .param p0, "builderPtr"    # J
    .param p2, "font"    # Ljava/nio/ByteBuffer;
    .param p3, "ttcIndex"    # I

    .prologue
    const/4 v4, -0x1

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v5, v4

    .line 174
    invoke-static/range {v0 .. v5}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z

    move-result v0

    return v0
.end method

.method private static native nAddFont(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native nAddFontFromAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;IZIII)Z
.end method

.method private static native nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native nAllowUnsupportedFont(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nCreateFamily(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitBuilder(Ljava/lang/String;I)J
.end method

.method private static native nUnrefFamily(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public abortCreation()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This FontFamily is already frozen or abandoned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nAbort(J)V

    .line 75
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 76
    return-void
.end method

.method public addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .locals 20
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unable to call addFont after freezing."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_0
    const/16 v18, 0x0

    const/16 v16, 0x0

    .local v16, "file":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    .end local v16    # "file":Ljava/io/FileInputStream;
    .local v17, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 99
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 100
    .local v6, "fontSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v10

    .line 101
    .local v10, "fontBuffer":Ljava/nio/ByteBuffer;
    if-eqz p3, :cond_1

    .line 102
    const/4 v3, 0x0

    move-object/from16 v0, p3

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v14, p3, v3

    .line 103
    .local v14, "axis":Landroid/graphics/fonts/FontVariationAxis;
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v14}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v11

    invoke-static {v8, v9, v5, v11}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v14    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move/from16 v11, p2

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v8 .. v13}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    .line 110
    if-eqz v17, :cond_2

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    if-eqz v18, :cond_3

    :try_start_3
    throw v18
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 107
    :catch_0
    move-exception v15

    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v16, v17

    .line 108
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v10    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "file":Ljava/io/FileInputStream;
    :goto_2
    sget-object v3, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v3, 0x0

    return v3

    .line 110
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "fontSize":J
    .restart local v10    # "fontBuffer":Ljava/nio/ByteBuffer;
    .restart local v17    # "file":Ljava/io/FileInputStream;
    :catch_1
    move-exception v18

    goto :goto_1

    .line 106
    :cond_3
    return v3

    .line 110
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v10    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v16    # "file":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_4
    if-eqz v16, :cond_4

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    if-eqz v4, :cond_6

    :try_start_6
    throw v4

    .line 107
    :catch_3
    move-exception v15

    .restart local v15    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 110
    .end local v15    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_5

    :cond_5
    if-eq v4, v5, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4

    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v17    # "file":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "file":Ljava/io/FileInputStream;
    .local v16, "file":Ljava/io/FileInputStream;
    move-object/from16 v4, v18

    goto :goto_4

    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v17    # "file":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z
    .locals 12
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "isAsset"    # Z
    .param p5, "ttcIndex"    # I
    .param p6, "weight"    # I
    .param p7, "isItalic"    # I
    .param p8, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .prologue
    .line 141
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unable to call addFontFromAsset after freezing."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_0
    if-eqz p8, :cond_1

    .line 145
    const/4 v2, 0x0

    move-object/from16 v0, p8

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v11, p8, v2

    .line 146
    .local v11, "axis":Landroid/graphics/fonts/FontVariationAxis;
    iget-wide v4, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v11}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v11    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_1
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Landroid/graphics/FontFamily;->nAddFontFromAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;IZIII)Z

    move-result v2

    return v2
.end method

.method public addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .locals 7
    .param p1, "font"    # Ljava/nio/ByteBuffer;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I

    .prologue
    .line 115
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to call addFontWeightStyle after freezing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    if-eqz p3, :cond_1

    .line 119
    const/4 v0, 0x0

    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v6, p3, v0

    .line 120
    .local v6, "axis":Landroid/graphics/fonts/FontVariationAxis;
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v6    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_1
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z

    move-result v0

    return v0
.end method

.method public allowUnsupportedFont()V
    .locals 4

    .prologue
    .line 166
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to allow unsupported font."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nAllowUnsupportedFont(J)V

    .line 170
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 81
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 82
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nUnrefFamily(J)V

    .line 84
    :cond_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 85
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nAbort(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    return-void

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 87
    throw v0
.end method

.method public freeze()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This FontFamily is already frozen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 66
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 67
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
