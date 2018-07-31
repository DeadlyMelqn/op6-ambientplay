.class public final Landroid/media/VolumeShaper$Configuration$Builder;
.super Ljava/lang/Object;
.source "VolumeShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMs:D

.field private mId:I

.field private mInterpolatorType:I

.field private mOptionFlags:I

.field private mTimes:[F

.field private mType:I

.field private mVolumes:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 761
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 762
    iput v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 763
    iput v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 764
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 765
    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 766
    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 772
    return-void
.end method

.method public constructor <init>(Landroid/media/VolumeShaper$Configuration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 761
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 762
    iput v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 763
    iput v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 764
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 765
    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 766
    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 781
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 782
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getId()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 783
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getAllOptionFlags()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 784
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getInterpolatorType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 785
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 786
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getTimes()[F

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 787
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getVolumes()[F

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 788
    return-void
.end method


# virtual methods
.method public build()Landroid/media/VolumeShaper$Configuration;
    .locals 11

    .prologue
    .line 1036
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .line 1037
    .local v10, "log":Z
    :goto_0
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v2, 0x1

    invoke-static {v0, v1, v10, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    .line 1038
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    iget v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    iget v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    iget-wide v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 1039
    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 1038
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[FLandroid/media/VolumeShaper$Configuration;)V

    return-object v0

    .line 1036
    .end local v10    # "log":Z
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "log":Z
    goto :goto_0
.end method

.method public invertVolumes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 943
    iget v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 944
    .local v1, "log":Z
    :goto_0
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v7, 0x1

    invoke-static {v5, v6, v1, v7}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    .line 945
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v5, v8

    .line 946
    .local v4, "min":F
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v5, v8

    .line 947
    .local v2, "max":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 948
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v5, v0

    cmpg-float v5, v5, v4

    if-gez v5, :cond_2

    .line 949
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v5, v0

    .line 947
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 943
    .end local v0    # "i":I
    .end local v1    # "log":Z
    .end local v2    # "max":F
    .end local v4    # "min":F
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "log":Z
    goto :goto_0

    .line 950
    .restart local v0    # "i":I
    .restart local v2    # "max":F
    .restart local v4    # "min":F
    :cond_2
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v5, v0

    cmpl-float v5, v5, v2

    if-lez v5, :cond_0

    .line 951
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v5, v0

    goto :goto_2

    .line 955
    :cond_3
    add-float v3, v2, v4

    .line 956
    .local v3, "maxmin":F
    const/4 v0, 0x0

    :goto_3
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 957
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v0

    sub-float v6, v3, v6

    aput v6, v5, v0

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 959
    :cond_4
    return-object p0
.end method

.method public reflectTimes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 918
    iget v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 919
    .local v1, "log":Z
    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v5}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    .line 921
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_1

    .line 922
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v2, v3, v0

    .line 923
    .local v2, "temp":F
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget v4, v4, v5

    sub-float v4, v6, v4

    aput v4, v3, v0

    .line 924
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    sub-float v5, v6, v2

    aput v5, v3, v4

    .line 925
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v3, v0

    .line 926
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget v4, v4, v5

    aput v4, v3, v0

    .line 927
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aput v2, v3, v4

    .line 921
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 918
    .end local v0    # "i":I
    .end local v1    # "log":Z
    .end local v2    # "temp":F
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "log":Z
    goto :goto_0

    .line 929
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v3, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 930
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v4, v4, v0

    sub-float v4, v6, v4

    aput v4, v3, v0

    .line 932
    :cond_2
    return-object p0
.end method

.method public scaleToEndVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 10
    .param p1, "volume"    # F

    .prologue
    const/4 v9, 0x0

    .line 974
    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    .line 975
    .local v2, "log":Z
    :goto_0
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v8, 0x1

    invoke-static {v6, v7, v2, v8}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    .line 976
    invoke-static {p1, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap1(FZ)V

    .line 977
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v6, v9

    .line 978
    .local v5, "startVolume":F
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v0, v6, v7

    .line 979
    .local v0, "endVolume":F
    cmpl-float v6, v0, v5

    if-nez v6, :cond_1

    .line 981
    sub-float v3, p1, v5

    .line 982
    .local v3, "offset":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 983
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v7, v7, v1

    iget-object v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v8, v8, v1

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    aput v7, v6, v1

    .line 982
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 974
    .end local v0    # "endVolume":F
    .end local v1    # "i":I
    .end local v2    # "log":Z
    .end local v3    # "offset":F
    .end local v5    # "startVolume":F
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "log":Z
    goto :goto_0

    .line 987
    .restart local v0    # "endVolume":F
    .restart local v5    # "startVolume":F
    :cond_1
    sub-float v6, p1, v5

    sub-float v7, v0, v5

    div-float v4, v6, v7

    .line 988
    .local v4, "scale":F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 989
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v7, v7, v1

    sub-float/2addr v7, v5

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    aput v7, v6, v1

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 992
    .end local v4    # "scale":F
    :cond_2
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v6, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap2([FZ)V

    .line 993
    return-object p0
.end method

.method public scaleToStartVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 10
    .param p1, "volume"    # F

    .prologue
    const/4 v9, 0x0

    .line 1008
    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    .line 1009
    .local v2, "log":Z
    :goto_0
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v8, 0x1

    invoke-static {v6, v7, v2, v8}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    .line 1010
    invoke-static {p1, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap1(FZ)V

    .line 1011
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v6, v9

    .line 1012
    .local v5, "startVolume":F
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v0, v6, v7

    .line 1013
    .local v0, "endVolume":F
    cmpl-float v6, v0, v5

    if-nez v6, :cond_1

    .line 1015
    sub-float v3, p1, v5

    .line 1016
    .local v3, "offset":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 1017
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v7, v7, v1

    iget-object v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v8, v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    aput v7, v6, v1

    .line 1016
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1008
    .end local v0    # "endVolume":F
    .end local v1    # "i":I
    .end local v2    # "log":Z
    .end local v3    # "offset":F
    .end local v5    # "startVolume":F
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "log":Z
    goto :goto_0

    .line 1020
    .restart local v0    # "endVolume":F
    .restart local v5    # "startVolume":F
    :cond_1
    sub-float v6, p1, v0

    sub-float v7, v5, v0

    div-float v4, v6, v7

    .line 1021
    .local v4, "scale":F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 1022
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v7, v7, v1

    sub-float/2addr v7, v0

    mul-float/2addr v7, v4

    add-float/2addr v7, v0

    aput v7, v6, v1

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1025
    .end local v4    # "scale":F
    :cond_2
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v6, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap2([FZ)V

    .line 1026
    return-object p0
.end method

.method public setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "times"    # [F
    .param p2, "volumes"    # [F

    .prologue
    const/4 v2, 0x0

    .line 902
    iget v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 903
    .local v0, "log":Z
    :goto_0
    invoke-static {p1, p2, v0, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    .line 904
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 905
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 906
    return-object p0

    .line 902
    .end local v0    # "log":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "log":Z
    goto :goto_0
.end method

.method public setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "durationMillis"    # J

    .prologue
    .line 865
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 866
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_0
    long-to-double v0, p1

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 870
    return-object p0
.end method

.method public setId(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 799
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_0
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 803
    return-object p0
.end method

.method public setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "interpolatorType"    # I

    .prologue
    .line 820
    packed-switch p1, :pswitch_data_0

    .line 828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid interpolatorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :pswitch_0
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 831
    return-object p0

    .line 820
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3
    .param p1, "optionFlags"    # I

    .prologue
    .line 847
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid bits in flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_0
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v0, v0, -0x4

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 851
    return-object p0
.end method
