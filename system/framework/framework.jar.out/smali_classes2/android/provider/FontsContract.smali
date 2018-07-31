.class public Landroid/provider/FontsContract;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/FontsContract$1;,
        Landroid/provider/FontsContract$Columns;,
        Landroid/provider/FontsContract$FontFamilyResult;,
        Landroid/provider/FontsContract$FontInfo;,
        Landroid/provider/FontsContract$FontRequestCallback;
    }
.end annotation


# static fields
.field private static final SYNC_FONT_FETCH_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "FontsContract"

.field private static final THREAD_RENEWAL_THRESHOLD_MS:I = 0x2710

.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field private static volatile sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sInQueueSet:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static final sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

.field private static sThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1()Landroid/os/HandlerThread;
    .locals 1

    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "-value"    # Landroid/os/Handler;

    .prologue
    sput-object p0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic -set1(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "-value"    # Landroid/os/HandlerThread;

    .prologue
    sput-object p0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    .line 315
    new-instance v0, Landroid/provider/FontsContract$1;

    invoke-direct {v0}, Landroid/provider/FontsContract$1;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    sget-object v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;->$INST$0:Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;

    .line 720
    sput-object v0, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "fonts"    # [Landroid/provider/FontsContract$FontInfo;

    .prologue
    const/4 v2, 0x0

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    return-object v2

    .line 627
    :cond_0
    invoke-static {p0, p2, p1}, Landroid/provider/FontsContract;->prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v0

    .line 628
    .local v0, "uriBuffer":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    return-object v2

    .line 631
    :cond_1
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-direct {v1, p2, v0}, Landroid/graphics/Typeface$Builder;-><init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V

    invoke-virtual {v1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v1, "shas":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 748
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 750
    :cond_0
    return-object v1
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x0

    .line 734
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 735
    return v3

    .line 737
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 738
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 739
    return v3

    .line 737
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "request"    # Landroid/provider/FontRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v5}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3

    .line 594
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/provider/FontsContract;->getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 595
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_1

    .line 596
    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v5}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3

    .line 601
    :cond_1
    :try_start_0
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 600
    invoke-static {p0, p2, v3, p1}, Landroid/provider/FontsContract;->getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;

    move-result-object v1

    .line 602
    .local v1, "fonts":[Landroid/provider/FontsContract$FontInfo;
    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 603
    .end local v1    # "fonts":[Landroid/provider/FontsContract$FontInfo;
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v5}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3
.end method

.method public static getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 758
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v18, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 762
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 764
    const-string/jumbo v4, "file"

    .line 762
    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 766
    .local v12, "fileBaseUri":Landroid/net/Uri;
    const/16 v25, 0x0

    const/4 v11, 0x0

    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v26, "_id"

    const/16 v27, 0x0

    aput-object v26, v4, v27

    .line 767
    const-string/jumbo v26, "file_id"

    const/16 v27, 0x1

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_ttc_index"

    const/16 v27, 0x2

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_variation_settings"

    const/16 v27, 0x3

    aput-object v26, v4, v27

    .line 768
    const-string/jumbo v26, "font_weight"

    const/16 v27, 0x4

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_italic"

    const/16 v27, 0x5

    aput-object v26, v4, v27

    const-string/jumbo v26, "result_code"

    const/16 v27, 0x6

    aput-object v26, v4, v27

    .line 769
    const-string/jumbo v5, "query = ?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v6, v27

    const/4 v7, 0x0

    move-object/from16 v8, p3

    .line 766
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 772
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 773
    const-string/jumbo v2, "result_code"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 774
    .local v20, "resultCodeColumnIndex":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 775
    .end local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    .local v19, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    :try_start_1
    const-string/jumbo v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 776
    .local v16, "idColumnIndex":I
    const-string/jumbo v2, "file_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 777
    .local v13, "fileIdColumnIndex":I
    const-string/jumbo v2, "font_ttc_index"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 778
    .local v21, "ttcIndexColumnIndex":I
    const-string/jumbo v2, "font_variation_settings"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 779
    .local v23, "vsColumnIndex":I
    const-string/jumbo v2, "font_weight"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 780
    .local v24, "weightColumnIndex":I
    const-string/jumbo v2, "font_italic"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 781
    .local v17, "italicColumnIndex":I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 782
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    .line 783
    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 784
    .local v10, "resultCode":I
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_2

    .line 785
    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 786
    .local v6, "ttcIndex":I
    :goto_2
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_3

    .line 787
    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 790
    :goto_3
    const/4 v2, -0x1

    if-ne v13, v2, :cond_4

    .line 791
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 792
    .local v14, "id":J
    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 799
    .local v5, "fileUri":Landroid/net/Uri;
    :goto_4
    const/4 v2, -0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_6

    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_6

    .line 800
    move/from16 v0, v24

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 801
    .local v8, "weight":I
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    const/4 v9, 0x1

    .line 807
    .local v9, "italic":Z
    :goto_5
    invoke-static/range {v22 .. v22}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    .line 808
    .local v7, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    new-instance v4, Landroid/provider/FontsContract$FontInfo;

    invoke-direct/range {v4 .. v10}, Landroid/provider/FontsContract$FontInfo;-><init>(Landroid/net/Uri;I[Landroid/graphics/fonts/FontVariationAxis;IZI)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 811
    .end local v5    # "fileUri":Landroid/net/Uri;
    .end local v6    # "ttcIndex":I
    .end local v7    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v8    # "weight":I
    .end local v9    # "italic":Z
    .end local v10    # "resultCode":I
    .end local v13    # "fileIdColumnIndex":I
    .end local v14    # "id":J
    .end local v16    # "idColumnIndex":I
    .end local v17    # "italicColumnIndex":I
    .end local v21    # "ttcIndexColumnIndex":I
    .end local v23    # "vsColumnIndex":I
    .end local v24    # "weightColumnIndex":I
    :catch_0
    move-exception v2

    move-object/from16 v18, v19

    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v19    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    .end local v20    # "resultCodeColumnIndex":I
    .restart local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    :goto_6
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v28, v4

    move-object v4, v2

    move-object/from16 v2, v28

    :goto_7
    if-eqz v11, :cond_0

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_8
    if-eqz v4, :cond_b

    throw v4

    .line 783
    .end local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "fileIdColumnIndex":I
    .restart local v16    # "idColumnIndex":I
    .restart local v17    # "italicColumnIndex":I
    .restart local v19    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    .restart local v20    # "resultCodeColumnIndex":I
    .restart local v21    # "ttcIndexColumnIndex":I
    .restart local v23    # "vsColumnIndex":I
    .restart local v24    # "weightColumnIndex":I
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "resultCode":I
    goto :goto_1

    .line 785
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "ttcIndex":I
    goto :goto_2

    .line 787
    :cond_3
    const/16 v22, 0x0

    .local v22, "variationSettings":Ljava/lang/String;
    goto :goto_3

    .line 794
    .end local v22    # "variationSettings":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 795
    .restart local v14    # "id":J
    invoke-static {v12, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    .restart local v5    # "fileUri":Landroid/net/Uri;
    goto :goto_4

    .line 801
    .restart local v8    # "weight":I
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "italic":Z
    goto :goto_5

    .line 803
    .end local v8    # "weight":I
    .end local v9    # "italic":Z
    :cond_6
    const/16 v8, 0x190

    .line 804
    .restart local v8    # "weight":I
    const/4 v9, 0x0

    .restart local v9    # "italic":Z
    goto :goto_5

    .end local v5    # "fileUri":Landroid/net/Uri;
    .end local v6    # "ttcIndex":I
    .end local v8    # "weight":I
    .end local v9    # "italic":Z
    .end local v10    # "resultCode":I
    .end local v14    # "id":J
    :cond_7
    move-object/from16 v18, v19

    .line 811
    .end local v13    # "fileIdColumnIndex":I
    .end local v16    # "idColumnIndex":I
    .end local v17    # "italicColumnIndex":I
    .end local v19    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    .end local v20    # "resultCodeColumnIndex":I
    .end local v21    # "ttcIndexColumnIndex":I
    .end local v23    # "vsColumnIndex":I
    .end local v24    # "weightColumnIndex":I
    .restart local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    :cond_8
    if-eqz v11, :cond_9

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_9
    :goto_9
    if-eqz v25, :cond_c

    throw v25

    :catch_1
    move-exception v25

    goto :goto_9

    .end local v11    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v25

    if-nez v4, :cond_a

    move-object/from16 v4, v25

    goto :goto_8

    :cond_a
    move-object/from16 v0, v25

    if-eq v4, v0, :cond_0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_b
    throw v2

    .line 812
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_c
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/provider/FontsContract$FontInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/provider/FontsContract$FontInfo;

    return-object v2

    .line 811
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    move-object/from16 v4, v25

    goto :goto_7

    .end local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    .restart local v20    # "resultCodeColumnIndex":I
    :catchall_2
    move-exception v2

    move-object/from16 v4, v25

    move-object/from16 v18, v19

    .end local v19    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    .restart local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    goto :goto_7

    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v20    # "resultCodeColumnIndex":I
    :catch_3
    move-exception v2

    goto :goto_6
.end method

.method public static getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;
    .locals 16
    .param p0, "request"    # Landroid/provider/FontRequest;

    .prologue
    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "id":Ljava/lang/String;
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;

    .line 332
    .local v8, "cachedTypeface":Landroid/graphics/Typeface;
    if-eqz v8, :cond_0

    .line 333
    return-object v8

    .line 339
    :cond_0
    sget-object v12, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    monitor-enter v12

    .line 340
    :try_start_0
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 341
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "fonts"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    .line 342
    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 343
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    .line 345
    :cond_1
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 346
    .local v4, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    .line 347
    .local v7, "cond":Ljava/util/concurrent/locks/Condition;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 348
    .local v3, "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/graphics/Typeface;>;"
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 349
    .local v6, "waiting":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 351
    .local v5, "timeout":Ljava/util/concurrent/atomic/AtomicBoolean;
    sget-object v13, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$3;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x2710

    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1f4

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 378
    .local v10, "remaining":J
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    :try_start_2
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v12

    .line 381
    return-object v0

    .line 385
    :cond_2
    :try_start_3
    invoke-interface {v7, v10, v11}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    .line 389
    :goto_0
    :try_start_4
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 400
    :try_start_5
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v12

    .line 390
    return-object v0

    .line 386
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 392
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_2

    .line 393
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 394
    const-string/jumbo v0, "FontsContract"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Remote font fetch timed out: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v13

    .line 394
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    const-string/jumbo v13, "/"

    .line 394
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v13

    .line 394
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 400
    :try_start_7
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 396
    const/4 v0, 0x0

    monitor-exit v12

    return-object v0

    .line 399
    :catchall_0
    move-exception v0

    .line 400
    :try_start_8
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 399
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 339
    .end local v3    # "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/graphics/Typeface;>;"
    .end local v4    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v5    # "timeout":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v6    # "waiting":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v7    # "cond":Ljava/util/concurrent/locks/Condition;
    .end local v10    # "remaining":J
    :catchall_1
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public static getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "request"    # Landroid/provider/FontRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 687
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, "providerAuthority":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 689
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_0

    .line 690
    new-instance v7, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No package found for authority: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 693
    :cond_0
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 694
    new-instance v7, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found content provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 695
    const-string/jumbo v9, ", but package was not "

    .line 694
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 695
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v9

    .line 694
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 698
    :cond_1
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 699
    return-object v1

    .line 703
    :cond_2
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 704
    const/16 v8, 0x40

    .line 703
    invoke-virtual {p0, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 705
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v7}, Landroid/provider/FontsContract;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v6

    .line 706
    .local v6, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 708
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 709
    .local v4, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 711
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 712
    .local v5, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 713
    invoke-static {v6, v5}, Landroid/provider/FontsContract;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 714
    return-object v1

    .line 709
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    .end local v5    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4
    return-object v9
.end method

.method static synthetic lambda$-android_provider_FontsContract_13824(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .locals 6
    .param p0, "request"    # Landroid/provider/FontRequest;
    .param p1, "id"    # Ljava/lang/String;
    .param p3, "lock"    # Ljava/util/concurrent/locks/Lock;
    .param p4, "timeout"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p5, "waiting"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p6, "cond"    # Ljava/util/concurrent/locks/Condition;

    .prologue
    .line 353
    .local p2, "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/graphics/Typeface;>;"
    :try_start_0
    sget-object v3, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, p0}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;

    move-result-object v1

    .line 354
    .local v1, "result":Landroid/provider/FontsContract$FontFamilyResult;
    invoke-virtual {v1}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 355
    sget-object v3, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 356
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_0

    .line 357
    sget-object v3, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v1    # "result":Landroid/provider/FontsContract$FontFamilyResult;
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 366
    :try_start_1
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    .line 367
    const/4 v3, 0x0

    invoke-virtual {p5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 368
    invoke-interface {p6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :cond_2
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 370
    :catchall_0
    move-exception v3

    .line 371
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 370
    throw v3

    .line 361
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method static synthetic lambda$-android_provider_FontsContract_20860(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "cachedTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_20965(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "request"    # Landroid/provider/FontRequest;
    .param p3, "callerThreadHandler"    # Landroid/os/Handler;
    .param p4, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 503
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 511
    .local v4, "result":Landroid/provider/FontsContract$FontFamilyResult;
    sget-object v8, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 512
    .local v0, "anotherCachedTypeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 513
    new-instance v8, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;

    invoke-direct {v8, v7, p4, v0}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    return-void

    .line 504
    .end local v0    # "anotherCachedTypeface":Landroid/graphics/Typeface;
    .end local v4    # "result":Landroid/provider/FontsContract$FontFamilyResult;
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    invoke-direct {v8, v7, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void

    .line 517
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "anotherCachedTypeface":Landroid/graphics/Typeface;
    .restart local v4    # "result":Landroid/provider/FontsContract$FontFamilyResult;
    :cond_0
    invoke-virtual {v4}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v8

    if-eqz v8, :cond_1

    .line 518
    invoke-virtual {v4}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 529
    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x3

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 531
    return-void

    .line 520
    :pswitch_0
    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    invoke-direct {v7, v10, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    return-void

    .line 524
    :pswitch_1
    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x2

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void

    .line 535
    :cond_1
    invoke-virtual {v4}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v3

    .line 536
    .local v3, "fonts":[Landroid/provider/FontsContract$FontInfo;
    if-eqz v3, :cond_2

    array-length v8, v3

    if-nez v8, :cond_3

    .line 537
    :cond_2
    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x4

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 539
    return-void

    .line 541
    :cond_3
    array-length v8, v3

    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v2, v3, v7

    .line 542
    .local v2, "font":Landroid/provider/FontsContract$FontInfo;
    invoke-virtual {v2}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v9

    if-eqz v9, :cond_5

    .line 545
    invoke-virtual {v2}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v5

    .line 546
    .local v5, "resultCode":I
    if-gez v5, :cond_4

    .line 548
    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x5

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    :goto_1
    return-void

    .line 551
    :cond_4
    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$4;

    invoke-direct {v7, v5, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 541
    .end local v5    # "resultCode":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 558
    .end local v2    # "font":Landroid/provider/FontsContract$FontInfo;
    :cond_6
    invoke-static {p0, p1, v3}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 559
    .local v6, "typeface":Landroid/graphics/Typeface;
    if-nez v6, :cond_7

    .line 562
    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x6

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-void

    .line 567
    :cond_7
    sget-object v7, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;

    invoke-direct {v7, v10, p4, v6}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$-android_provider_FontsContract_21192(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .prologue
    .line 506
    const/4 v0, -0x1

    .line 505
    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_21625(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "anotherCachedTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_21964(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .prologue
    .line 521
    const/4 v0, -0x2

    .line 520
    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_22246(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .prologue
    .line 525
    const/4 v0, -0x3

    .line 524
    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_22572(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .prologue
    .line 530
    const/4 v0, -0x3

    .line 529
    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_22911(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .prologue
    .line 538
    const/4 v0, 0x1

    .line 537
    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_23564(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .prologue
    .line 549
    const/4 v0, -0x3

    .line 548
    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_23765(Landroid/provider/FontsContract$FontRequestCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "resultCode"    # I

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_24251(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .prologue
    .line 563
    const/4 v0, -0x3

    .line 562
    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_24509(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 568
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_31229([B[B)I
    .locals 3
    .param p0, "l"    # [B
    .param p1, "r"    # [B

    .prologue
    .line 721
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 722
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 724
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 725
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    .line 726
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    return v1

    .line 724
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fonts"    # [Landroid/provider/FontsContract$FontInfo;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/provider/FontsContract$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 647
    .local v13, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 649
    .local v15, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v19, v3

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    aget-object v12, p1, v19

    .line 650
    .local v12, "font":Landroid/provider/FontsContract$FontInfo;
    invoke-virtual {v12}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    :cond_0
    :goto_1
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {v12}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v16

    .line 655
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 659
    const/4 v8, 0x0

    .line 660
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    const/16 v18, 0x0

    const/4 v14, 0x0

    .line 661
    .local v14, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string/jumbo v3, "r"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v3, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v14

    .line 662
    .local v14, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v14, :cond_3

    .line 663
    const/16 v17, 0x0

    const/4 v10, 0x0

    .line 664
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 665
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 666
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 667
    .local v6, "size":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v8

    .line 670
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v11, :cond_2

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    :goto_2
    if-eqz v17, :cond_3

    :try_start_4
    throw v17
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 668
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    move-object v10, v11

    .line 674
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "size":J
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    if-eqz v14, :cond_4

    :try_start_5
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_4
    if-eqz v18, :cond_5

    :try_start_6
    throw v18
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 672
    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v9

    .line 678
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 670
    .restart local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "size":J
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v17

    goto :goto_2

    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "size":J
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    .end local v10    # "fis":Ljava/io/FileInputStream;
    :goto_5
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    :goto_6
    if-eqz v10, :cond_6

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_6
    :goto_7
    if-eqz v4, :cond_9

    :try_start_9
    throw v4

    .line 668
    :catch_4
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 670
    .end local v9    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    if-nez v4, :cond_7

    move-object v4, v5

    goto :goto_7

    :cond_7
    if-eq v4, v5, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    .line 674
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_6
    move-exception v3

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    :goto_8
    if-eqz v14, :cond_8

    :try_start_b
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :cond_8
    :goto_9
    if-eqz v4, :cond_b

    :try_start_c
    throw v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 670
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    :try_start_d
    throw v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 674
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_8

    .restart local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_7
    move-exception v18

    goto :goto_4

    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_8
    move-exception v5

    if-nez v4, :cond_a

    move-object v4, v5

    goto :goto_9

    :cond_a
    if-eq v4, v5, :cond_8

    :try_start_e
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_b
    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    .line 680
    .end local v12    # "font":Landroid/provider/FontsContract$FontInfo;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_c
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3

    .line 670
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "font":Landroid/provider/FontsContract$FontInfo;
    .restart local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "uri":Landroid/net/Uri;
    :catchall_3
    move-exception v3

    move-object/from16 v4, v17

    goto :goto_6

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v3

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    move-object/from16 v4, v17

    goto :goto_6

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method public static requestFonts(Landroid/content/Context;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/os/CancellationSignal;Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/provider/FontRequest;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .prologue
    .line 493
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 494
    .local v4, "callerThreadHandler":Landroid/os/Handler;
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    .line 495
    .local v6, "cachedTypeface":Landroid/graphics/Typeface;
    if-eqz v6, :cond_0

    .line 496
    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p4, v6}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void

    .line 500
    :cond_0
    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    return-void
.end method

.method public static setApplicationContextForResources(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    .line 176
    return-void
.end method
