.class public final Lcom/google/ads/AdSize;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final BANNER:Lcom/google/ads/AdSize;

.field public static final FULL_WIDTH:I = -0x1

.field public static final IAB_BANNER:Lcom/google/ads/AdSize;

.field public static final IAB_LEADERBOARD:Lcom/google/ads/AdSize;

.field public static final IAB_MRECT:Lcom/google/ads/AdSize;

.field public static final IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

.field public static final LANDSCAPE_AD_HEIGHT:I = 0x20

.field public static final LARGE_AD_HEIGHT:I = 0x5a

.field public static final PORTRAIT_AD_HEIGHT:I = 0x32

.field public static final SMART_BANNER:Lcom/google/ads/AdSize;


# instance fields
.field private final zzcn:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/ads/AdSize;

    const-string v1, "mb"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const-string v1, "mb"

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const-string v1, "as"

    const/16 v2, 0x12c

    const/16 v3, 0xfa

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const-string v1, "as"

    const/16 v2, 0x1d4

    const/16 v3, 0x3c

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const-string v1, "as"

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const-string v1, "as"

    const/16 v2, 0xa0

    const/16 v3, 0x258

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    new-instance p3, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {p0, p3}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/ads/AdSize;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/google/ads/AdSize;

    iget-object p0, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    iget-object p1, p1, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final varargs findBestSize([Lcom/google/ads/AdSize;)Lcom/google/ads/AdSize;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v3

    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, p1, v5

    invoke-virtual/range {v6 .. v6}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v7

    invoke-virtual/range {v6 .. v6}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    move-result v9

    if-eqz v9, :cond_2

    mul-int/2addr v7, v8

    int-to-float v7, v7

    mul-int v8, v2, v3

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v7, v8

    if-lez v9, :cond_1

    div-float v7, v8, v7

    :cond_1
    cmpl-float v8, v7, v1

    if-lez v8, :cond_2

    move-object v0, v6

    move v1, v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getHeightInPixels(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result p0

    return p0
.end method

.method public final getWidthInPixels(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdSize;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isAutoHeight()Z
    .locals 0

    iget-object p0, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdSize;->isAutoHeight()Z

    move-result p0

    return p0
.end method

.method public final isCustomAdSize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isFullWidth()Z
    .locals 0

    iget-object p0, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdSize;->isFullWidth()Z

    move-result p0

    return p0
.end method

.method public final isSizeAppropriate(II)Z
    .locals 3

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result p0

    int-to-float p1, p1

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v2, v0, v1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    int-to-float p1, p2

    int-to-float p0, p0

    mul-float/2addr v1, p0

    cmpg-float p2, p1, v1

    if-gtz p2, :cond_0

    mul-float/2addr p0, v2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/AdSize;->zzcn:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
