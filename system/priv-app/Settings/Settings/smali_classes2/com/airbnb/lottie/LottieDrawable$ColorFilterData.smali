.class Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
.super Ljava/lang/Object;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorFilterData"
.end annotation


# instance fields
.field final colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final contentName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final layerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    .line 730
    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    .line 731
    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    .line 732
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 747
    if-eq p0, p1, :cond_1

    .line 751
    instance-of v3, p1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 755
    check-cast v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    .line 757
    .local v0, "other":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_3

    :goto_0
    move v1, v2

    :cond_0
    return v1

    .line 748
    .end local v0    # "other":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    :cond_1
    return v1

    .line 752
    :cond_2
    return v2

    .line 757
    .restart local v0    # "other":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    :cond_3
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    iget-object v4, v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v3, v4, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 735
    const/16 v0, 0x11

    .line 736
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 740
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 743
    :goto_1
    return v0

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit16 v0, v1, 0x20f

    goto :goto_0

    .line 741
    :cond_1
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v0, v1, v2

    goto :goto_1
.end method
