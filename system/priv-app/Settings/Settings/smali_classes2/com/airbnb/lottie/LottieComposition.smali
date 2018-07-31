.class public Lcom/airbnb/lottie/LottieComposition;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieComposition$Factory;
    }
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private final characters:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private final dpScale:F

.field private final endFrame:J

.field private final fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final frameRate:F

.field private final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final layerMap:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final majorVersion:I

.field private final minorVersion:I

.field private final patchVersion:I

.field private final performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

.field private final precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final startFrame:J

.field private final warnings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/graphics/Rect;JJFFIII)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "startFrame"    # J
    .param p4, "endFrame"    # J
    .param p6, "frameRate"    # F
    .param p7, "dpScale"    # F
    .param p8, "major"    # I
    .param p9, "minor"    # I
    .param p10, "patch"    # I

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    .line 47
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroid/support/v4/util/SparseArrayCompat;

    .line 48
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    .line 52
    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker;

    invoke-direct {v0}, Lcom/airbnb/lottie/PerformanceTracker;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    .line 65
    iput-object p1, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 66
    iput-wide p2, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:J

    .line 67
    iput-wide p4, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:J

    .line 68
    iput p6, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    .line 69
    iput p7, p0, Lcom/airbnb/lottie/LottieComposition;->dpScale:F

    .line 70
    iput p8, p0, Lcom/airbnb/lottie/LottieComposition;->majorVersion:I

    .line 71
    iput p9, p0, Lcom/airbnb/lottie/LottieComposition;->minorVersion:I

    .line 72
    iput p10, p0, Lcom/airbnb/lottie/LottieComposition;->patchVersion:I

    .line 73
    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-static {p0, v0, v1, v2}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(Lcom/airbnb/lottie/LottieComposition;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string/jumbo v0, "Lottie only supports bodymovin >= 4.5.0"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;JJFFIIILcom/airbnb/lottie/LottieComposition$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Rect;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # F
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I
    .param p11, "x8"    # Lcom/airbnb/lottie/LottieComposition$1;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p10}, Lcom/airbnb/lottie/LottieComposition;-><init>(Landroid/graphics/Rect;JJFFIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 1
    .param p1, "warning"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 80
    const-string/jumbo v0, "LOTTIE"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCharacters()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public getDpScale()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->dpScale:F

    return v0
.end method

.method public getDuration()J
    .locals 6

    .prologue
    .line 106
    iget-wide v2, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:J

    iget-wide v4, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:J

    sub-long v0, v2, v4

    .line 107
    .local v0, "frameDuration":J
    long-to-float v2, v0

    iget v3, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    return-wide v2
.end method

.method public getDurationFrames()F
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getEndFrame()J
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:J

    return-wide v0
.end method

.method public getFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method getImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->minorVersion:I

    return v0
.end method

.method public getPatchVersion()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 122
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->patchVersion:I

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    return-object v0
.end method

.method public getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getStartFrame()J
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:J

    return-wide v0
.end method

.method public getWarnings()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasImages()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 1
    .param p1, "id"    # J
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/layer/Layer;

    return-object v0
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/PerformanceTracker;->setEnabled(Z)V

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LottieComposition:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_2_R":Ljava/lang/Object;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 172
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/layer/Layer;

    .line 173
    .local v1, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    const-string/jumbo v3, "\t"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
