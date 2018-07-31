.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$Builder;
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final EMPTY_AXES:[I

.field static final FONTS_ORIGIN_CONFIG:Ljava/lang/String; = "fonts.xml"

.field static final FONTS_SLATE_CONFIG:Ljava/lang/String; = "fonts_slate.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I = 0x0

.field public static final ONEPLUS_FONT_ORIGIN:I = 0x1

.field public static final ONEPLUS_FONT_SLATE:I = 0x2

.field public static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final STYLE_ITALIC:I = 0x1

.field private static final STYLE_NORMAL:I

.field private static TAG:Ljava/lang/String;

.field private static TAG_FONT:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

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

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field private static final sLock:Ljava/lang/Object;

.field static sOriginFallbackFonts:[Landroid/graphics/FontFamily;

.field static sOriginSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static sSlateFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSlateSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
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
.field private mStyle:I

.field private mSupportedAxes:[I

.field private mWeight:I

.field public native_instance:J


# direct methods
.method static synthetic -get0(Landroid/graphics/Typeface;)I
    .locals 1
    .param p0, "-this"    # Landroid/graphics/Typeface;

    .prologue
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method static synthetic -get1(Landroid/graphics/Typeface;)I
    .locals 1
    .param p0, "-this"    # Landroid/graphics/Typeface;

    .prologue
    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method static synthetic -get2()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "weight"    # I
    .param p2, "italic"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(JIZ)J
    .locals 2
    .param p0, "native_instance"    # J
    .param p2, "weight"    # I
    .param p3, "italic"    # Z

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 81
    const-string/jumbo v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "Font"

    sput-object v0, Landroid/graphics/Typeface;->TAG_FONT:Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 99
    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 106
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sLock:Ljava/lang/Object;

    .line 156
    new-array v0, v3, [I

    sput-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    .line 1045
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 1047
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 1048
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 1049
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1050
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1051
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 1053
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    .line 1054
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    .line 1055
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    .line 1056
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    .line 1057
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    .line 1053
    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 79
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    const/4 v0, 0x0

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 144
    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 897
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 898
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 902
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 903
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 904
    return-void
.end method

.method synthetic constructor <init>(JLandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "ni"    # J
    .param p3, "-this1"    # Landroid/graphics/Typeface;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/Typeface;-><init>(J)V

    return-void
.end method

.method public static changeFont(I)V
    .locals 3
    .param p0, "fontId"    # I

    .prologue
    .line 1118
    if-nez p0, :cond_0

    .line 1119
    return-void

    .line 1122
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->sOriginSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Typeface;->sSlateSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1123
    sget-object v0, Landroid/graphics/Typeface;->TAG_FONT:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Change font:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 1125
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1126
    sget-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1127
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 1128
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Landroid/graphics/Typeface;->sOriginSystemFontMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 1129
    sget-object v0, Landroid/graphics/Typeface;->sOriginFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1137
    :cond_1
    :goto_0
    return-void

    .line 1130
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 1131
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Landroid/graphics/Typeface;->sSlateSystemFontMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 1132
    sget-object v0, Landroid/graphics/Typeface;->sSlateFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1135
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->TAG_FONT:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sOriginSystemFontMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->sOriginSystemFontMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sSlateSystemFontMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->sSlateSystemFontMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 712
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 713
    :cond_0
    const/4 p1, 0x0

    .line 715
    :cond_1
    const-wide/16 v0, 0x0

    .line 716
    .local v0, "ni":J
    if-eqz p0, :cond_3

    .line 718
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_2

    .line 719
    return-object p0

    .line 722
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 726
    :cond_3
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 728
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_4

    .line 729
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 730
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_4

    .line 731
    return-object v3

    .line 735
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 736
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_5

    .line 737
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 738
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 740
    :cond_5
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 742
    return-object v3
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 694
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 695
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 697
    :cond_0
    return-object v1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 13
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 769
    if-nez p1, :cond_0

    .line 770
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 772
    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v1, :cond_4

    .line 773
    sget-object v12, Landroid/graphics/Typeface;->sLock:Ljava/lang/Object;

    monitor-enter v12

    .line 774
    :try_start_0
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-direct {v1, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 775
    .local v11, "typeface":Landroid/graphics/Typeface;
    if-eqz v11, :cond_1

    monitor-exit v12

    return-object v11

    .line 777
    :cond_1
    const/4 v2, 0x0

    .line 778
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 777
    :try_start_1
    invoke-static/range {v0 .. v5}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v10

    .line 779
    .local v10, "key":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "typeface":Landroid/graphics/Typeface;
    check-cast v11, Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    .restart local v11    # "typeface":Landroid/graphics/Typeface;
    if-eqz v11, :cond_2

    monitor-exit v12

    return-object v11

    .line 782
    :cond_2
    :try_start_2
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 783
    .local v0, "fontFamily":Landroid/graphics/FontFamily;
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 784
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 785
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 783
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->allowUnsupportedFont()V

    .line 791
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    .line 792
    const/4 v1, 0x1

    new-array v9, v1, [Landroid/graphics/FontFamily;

    const/4 v1, 0x0

    aput-object v0, v9, v1

    .line 793
    .local v9, "families":[Landroid/graphics/FontFamily;
    const/4 v1, -0x1

    .line 794
    const/4 v2, -0x1

    .line 793
    invoke-static {v9, v1, v2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v11

    .line 795
    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    .line 796
    return-object v11

    .line 798
    .end local v9    # "families":[Landroid/graphics/FontFamily;
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v12

    .line 802
    .end local v0    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Font asset not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method private static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    const/4 v4, -0x1

    .line 862
    array-length v2, p0

    new-array v1, v2, [J

    .line 863
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 864
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 866
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "weight"    # I
    .param p2, "italic"    # I

    .prologue
    .line 885
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 886
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 887
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 890
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 892
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 826
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 836
    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v1, :cond_1

    .line 837
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .local v0, "fontFamily":Landroid/graphics/FontFamily;
    move-object v1, p0

    move v5, v4

    .line 838
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->allowUnsupportedFont()V

    .line 845
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    .line 846
    const/4 v1, 0x1

    new-array v6, v1, [Landroid/graphics/FontFamily;

    aput-object v0, v6, v2

    .line 847
    .local v6, "families":[Landroid/graphics/FontFamily;
    invoke-static {v6, v4, v4}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 850
    .end local v6    # "families":[Landroid/graphics/FontFamily;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 853
    .end local v0    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Font not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 13
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cookie"    # I

    .prologue
    .line 184
    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v1, :cond_3

    .line 185
    sget-object v12, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v12

    .line 187
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 188
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 186
    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, "key":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .local v11, "typeface":Landroid/graphics/Typeface;
    if-eqz v11, :cond_0

    monitor-exit v12

    return-object v11

    .line 192
    :cond_0
    :try_start_1
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 194
    .local v0, "fontFamily":Landroid/graphics/FontFamily;
    const/4 v4, 0x0

    .line 195
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 196
    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 194
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 198
    const/4 v1, 0x0

    monitor-exit v12

    return-object v1

    .line 200
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    new-array v9, v1, [Landroid/graphics/FontFamily;

    const/4 v1, 0x0

    aput-object v0, v9, v1

    .line 202
    .local v9, "families":[Landroid/graphics/FontFamily;
    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 201
    invoke-static {v9, v1, v2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v11

    .line 203
    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    .line 204
    return-object v11

    .end local v9    # "families":[Landroid/graphics/FontFamily;
    :cond_2
    monitor-exit v12

    .line 208
    .end local v0    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    const/4 v1, 0x0

    return-object v1

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method public static createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 27
    .param p0, "entry"    # Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 218
    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v3, :cond_8

    .line 219
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    if-eqz v3, :cond_3

    move-object/from16 v21, p0

    .line 220
    check-cast v21, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    .line 222
    .local v21, "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v17

    .line 223
    .local v17, "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v13, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    if-eqz v17, :cond_1

    .line 225
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    .line 226
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 227
    .local v12, "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v11, "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    .line 229
    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 231
    :cond_0
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 236
    .end local v11    # "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v12    # "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "i":I
    .end local v19    # "j":I
    :cond_1
    new-instance v22, Landroid/provider/FontRequest;

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 236
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4, v5, v13}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 238
    .local v22, "request":Landroid/provider/FontRequest;
    invoke-static/range {v22 .. v22}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v23

    .line 239
    .local v23, "typeface":Landroid/graphics/Typeface;
    if-nez v23, :cond_2

    sget-object v23, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    return-object v23

    .line 242
    .end local v13    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    .end local v17    # "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v21    # "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    .end local v22    # "request":Landroid/provider/FontRequest;
    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v23

    .line 243
    .restart local v23    # "typeface":Landroid/graphics/Typeface;
    if-eqz v23, :cond_4

    return-object v23

    :cond_4
    move-object/from16 v15, p0

    .line 247
    check-cast v15, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    .line 249
    .local v15, "filesEntry":Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
    new-instance v2, Landroid/graphics/FontFamily;

    invoke-direct {v2}, Landroid/graphics/FontFamily;-><init>()V

    .line 250
    .local v2, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v15}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v25

    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v24, v3

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    aget-object v16, v25, v24

    .line 252
    .local v16, "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v9

    .line 253
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 254
    const/4 v10, 0x0

    move-object/from16 v3, p1

    .line 252
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 255
    const/4 v3, 0x0

    return-object v3

    .line 250
    :cond_5
    add-int/lit8 v3, v24, 0x1

    move/from16 v24, v3

    goto :goto_2

    .line 258
    .end local v16    # "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_7

    .line 259
    const/4 v3, 0x0

    return-object v3

    .line 261
    :cond_7
    const/4 v3, 0x1

    new-array v14, v3, [Landroid/graphics/FontFamily;

    const/4 v3, 0x0

    aput-object v2, v14, v3

    .line 263
    .local v14, "familyChain":[Landroid/graphics/FontFamily;
    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 262
    invoke-static {v14, v3, v4}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v23

    .line 264
    sget-object v9, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v9

    .line 265
    const/4 v5, 0x0

    .line 266
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 267
    const/4 v8, -0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 265
    :try_start_0
    invoke-static/range {v3 .. v8}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v20

    .line 268
    .local v20, "key":Ljava/lang/String;
    sget-object v3, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 270
    return-object v23

    .line 264
    .end local v20    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v9

    throw v3

    .line 272
    .end local v2    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v14    # "familyChain":[Landroid/graphics/FontFamily;
    .end local v15    # "filesEntry":Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_8
    const/4 v3, 0x0

    return-object v3
.end method

.method public static createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    .prologue
    .line 748
    .local p1, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    .line 749
    .local v0, "ni":J
    :goto_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2

    .line 748
    .end local v0    # "ni":J
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .restart local v0    # "ni":J
    goto :goto_0
.end method

.method private static createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 758
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 10
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 280
    sget-object v8, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v8

    .line 281
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 282
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 281
    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "key":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .local v7, "typeface":Landroid/graphics/Typeface;
    if-eqz v7, :cond_0

    monitor-exit v8

    .line 285
    return-object v7

    :cond_0
    monitor-exit v8

    .line 288
    return-object v9

    .line 280
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 1063
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "fontId"    # I
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 1143
    const/4 v0, 0x0

    .line 1144
    .local v0, "typeface":Landroid/graphics/Typeface;
    sget-object v1, Landroid/graphics/Typeface;->sOriginSystemFontMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Typeface;->sSlateSystemFontMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1145
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 1146
    sget-object v1, Landroid/graphics/Typeface;->sOriginSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "typeface":Landroid/graphics/Typeface;
    check-cast v0, Landroid/graphics/Typeface;

    .line 1155
    :goto_0
    return-object v0

    .line 1147
    .restart local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 1148
    sget-object v1, Landroid/graphics/Typeface;->sSlateSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "typeface":Landroid/graphics/Typeface;
    check-cast v0, Landroid/graphics/Typeface;

    .local v0, "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1150
    .local v0, "typeface":Landroid/graphics/Typeface;
    :cond_1
    sget-object v1, Landroid/graphics/Typeface;->sOriginSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "typeface":Landroid/graphics/Typeface;
    check-cast v0, Landroid/graphics/Typeface;

    .local v0, "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1153
    .local v0, "typeface":Landroid/graphics/Typeface;
    :cond_2
    sget-object v1, Landroid/graphics/Typeface;->TAG_FONT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOriginSystemFontMap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Typeface;->sOriginSystemFontMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sSlateSystemFontMap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Typeface;->sSlateSystemFontMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static init()V
    .locals 1

    .prologue
    .line 945
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/graphics/Typeface;->init(I)V

    .line 946
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->init(I)V

    .line 948
    return-void
.end method

.method private static init(I)V
    .locals 30
    .param p0, "fontId"    # I

    .prologue
    .line 952
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v21

    .line 956
    .local v21, "systemFontConfigLocation":Ljava/io/File;
    const/16 v25, 0x1

    move/from16 v0, p0

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 957
    new-instance v7, Ljava/io/File;

    const-string/jumbo v25, "fonts.xml"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 965
    .local v7, "configFilename":Ljava/io/File;
    :goto_0
    :try_start_0
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 966
    .local v18, "fontsIn":Ljava/io/FileInputStream;
    invoke-static/range {v18 .. v18}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/text/FontConfig;

    move-result-object v16

    .line 968
    .local v16, "fontConfig":Landroid/text/FontConfig;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 970
    .local v6, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v15, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 974
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v25

    aget-object v12, v25, v19

    .line 975
    .local v12, "f":Landroid/text/FontConfig$Family;
    if-eqz v19, :cond_0

    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_1

    .line 976
    :cond_0
    invoke-static {v12, v6}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v14

    .line 977
    .local v14, "family":Landroid/graphics/FontFamily;
    if-eqz v14, :cond_1

    .line 978
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 973
    .end local v14    # "family":Landroid/graphics/FontFamily;
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 958
    .end local v6    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v7    # "configFilename":Ljava/io/File;
    .end local v12    # "f":Landroid/text/FontConfig$Family;
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/text/FontConfig;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    :cond_2
    const/16 v25, 0x2

    move/from16 v0, p0

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 959
    new-instance v7, Ljava/io/File;

    const-string/jumbo v25, "fonts_slate.xml"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v7    # "configFilename":Ljava/io/File;
    goto :goto_0

    .line 961
    .end local v7    # "configFilename":Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/io/File;

    const-string/jumbo v25, "fonts.xml"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v7    # "configFilename":Ljava/io/File;
    goto :goto_0

    .line 982
    .restart local v6    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v16    # "fontConfig":Landroid/text/FontConfig;
    .restart local v18    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v19    # "i":I
    :cond_4
    :try_start_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/graphics/FontFamily;

    sput-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 985
    const/16 v25, 0x1

    move/from16 v0, p0

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 986
    sget-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/graphics/FontFamily;

    sput-object v25, Landroid/graphics/Typeface;->sOriginFallbackFonts:[Landroid/graphics/FontFamily;

    .line 991
    :cond_5
    :goto_2
    sget-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 993
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 994
    .local v22, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/16 v19, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 996
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v25

    aget-object v12, v25, v19

    .line 997
    .restart local v12    # "f":Landroid/text/FontConfig$Family;
    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 998
    if-nez v19, :cond_9

    .line 1001
    sget-object v23, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 1011
    .local v23, "typeface":Landroid/graphics/Typeface;
    :goto_4
    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 987
    .end local v12    # "f":Landroid/text/FontConfig$Family;
    .end local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_7
    const/16 v25, 0x2

    move/from16 v0, p0

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 988
    sget-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/graphics/FontFamily;

    sput-object v25, Landroid/graphics/Typeface;->sSlateFallbackFonts:[Landroid/graphics/FontFamily;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 1032
    .end local v6    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/text/FontConfig;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    :catch_0
    move-exception v10

    .line 1033
    .local v10, "e":Ljava/lang/RuntimeException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v26, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_8
    :goto_5
    return-void

    .line 1003
    .restart local v6    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v12    # "f":Landroid/text/FontConfig$Family;
    .restart local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v16    # "fontConfig":Landroid/text/FontConfig;
    .restart local v18    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v19    # "i":I
    .restart local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_9
    :try_start_2
    invoke-static {v12, v6}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v17

    .line 1004
    .local v17, "fontFamily":Landroid/graphics/FontFamily;
    if-eqz v17, :cond_6

    .line 1007
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v13, v0, [Landroid/graphics/FontFamily;

    const/16 v25, 0x0

    aput-object v17, v13, v25

    .line 1009
    .local v13, "families":[Landroid/graphics/FontFamily;
    const/16 v25, -0x1

    const/16 v26, -0x1

    .line 1008
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v13, v0, v1}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v23

    .restart local v23    # "typeface":Landroid/graphics/Typeface;
    goto :goto_4

    .line 1014
    .end local v12    # "f":Landroid/text/FontConfig$Family;
    .end local v13    # "families":[Landroid/graphics/FontFamily;
    .end local v17    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getAliases()[Landroid/text/FontConfig$Alias;

    move-result-object v26

    const/16 v25, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_6
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    aget-object v4, v26, v25

    .line 1015
    .local v4, "alias":Landroid/text/FontConfig$Alias;
    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 1016
    .local v5, "base":Landroid/graphics/Typeface;
    move-object/from16 v20, v5

    .line 1017
    .local v20, "newFace":Landroid/graphics/Typeface;
    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v24

    .line 1018
    .local v24, "weight":I
    const/16 v28, 0x190

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    .line 1019
    new-instance v20, Landroid/graphics/Typeface;

    .end local v20    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v28

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1021
    .restart local v20    # "newFace":Landroid/graphics/Typeface;
    :cond_b
    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 1023
    .end local v4    # "alias":Landroid/text/FontConfig$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v20    # "newFace":Landroid/graphics/Typeface;
    .end local v24    # "weight":I
    :cond_c
    sput-object v22, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 1026
    const/16 v25, 0x1

    move/from16 v0, p0

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1027
    new-instance v25, Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v25, Landroid/graphics/Typeface;->sOriginSystemFontMap:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_5

    .line 1035
    .end local v6    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/text/FontConfig;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    .end local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v8

    .line 1036
    .local v8, "e":Ljava/io/FileNotFoundException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error opening "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1028
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v16    # "fontConfig":Landroid/text/FontConfig;
    .restart local v18    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v19    # "i":I
    .restart local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_d
    const/16 v25, 0x2

    move/from16 v0, p0

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 1029
    :try_start_3
    new-instance v25, Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v25, Landroid/graphics/Typeface;->sSlateSystemFontMap:Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    .line 1037
    .end local v6    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/text/FontConfig;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    .end local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_2
    move-exception v9

    .line 1038
    .local v9, "e":Ljava/io/IOException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error reading "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1039
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 1040
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "XML parse exception for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5
.end method

.method private static makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;
    .locals 23
    .param p0, "family"    # Landroid/text/FontConfig$Family;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$Family;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    .prologue
    .line 908
    .local p1, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v8, Landroid/graphics/FontFamily;

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v4

    invoke-direct {v8, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;I)V

    .line 909
    .local v8, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v19, v3

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    aget-object v17, v20, v19

    .line 910
    .local v17, "font":Landroid/text/FontConfig$Font;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/system/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 911
    .local v18, "fullPathName":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 912
    .local v9, "fontBuffer":Ljava/nio/ByteBuffer;
    if-nez v9, :cond_5

    .line 913
    const/4 v10, 0x0

    const/4 v15, 0x0

    .local v15, "file":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 914
    .end local v15    # "file":Ljava/io/FileInputStream;
    .local v16, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 915
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 916
    .local v6, "fontSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 917
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 921
    if-eqz v16, :cond_0

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v10, :cond_5

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 918
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .line 919
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    .end local v14    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto :goto_0

    .line 921
    .restart local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "fontSize":J
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v15    # "file":Ljava/io/FileInputStream;
    :goto_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_5
    if-eqz v15, :cond_2

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_6
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 918
    :catch_3
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 921
    .end local v14    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_6

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 923
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v11

    .line 924
    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v12

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v13, 0x1

    .line 923
    :goto_7
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 925
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 924
    :cond_6
    const/4 v13, 0x0

    goto :goto_7

    .line 928
    .end local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "font":Landroid/text/FontConfig$Font;
    .end local v18    # "fullPathName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_8

    .line 931
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to load Family: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v3, 0x0

    return-object v3

    .line 934
    :cond_8
    return-object v8

    .line 921
    .restart local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    .restart local v17    # "font":Landroid/text/FontConfig$Font;
    .restart local v18    # "fullPathName":Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object v4, v10

    goto/16 :goto_5

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .local v15, "file":Ljava/io/FileInputStream;
    move-object v4, v10

    goto/16 :goto_5

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method private static native nativeCreateFromArray([JII)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeGetSupportedAxes(J)[I
.end method

.method private static native nativeGetWeight(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 159
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 160
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 161
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1078
    if-ne p0, p1, :cond_0

    return v1

    .line 1079
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 1081
    check-cast v0, Landroid/graphics/Typeface;

    .line 1083
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1069
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 1070
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1074
    return-void

    .line 1071
    :catchall_0
    move-exception v0

    .line 1072
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1071
    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1092
    const/16 v0, 0x11

    .line 1093
    .local v0, "result":I
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 1094
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 1095
    return v0
.end method

.method public final isBold()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 170
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isItalic()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportedAxes(I)Z
    .locals 4
    .param p1, "axis"    # I

    .prologue
    const/4 v0, 0x0

    .line 1100
    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v1, :cond_1

    .line 1101
    monitor-enter p0

    .line 1102
    :try_start_0
    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v1, :cond_0

    .line 1103
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1104
    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v1, :cond_0

    .line 1105
    sget-object v1, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1110
    :cond_1
    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 1101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
