.class public Lcom/android/systemui/recents/views/AnimationProps;
.super Ljava/lang/Object;
.source "AnimationProps.java"


# static fields
.field public static final IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;


# instance fields
.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mPropDuration:Landroid/util/SparseLongArray;

.field private mPropInterpolators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field

.field private mPropStartDelay:Landroid/util/SparseLongArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "startDelay"    # I
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    return-void
.end method

.method public constructor <init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "startDelay"    # I
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    .line 98
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    .line 99
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    .line 100
    invoke-virtual {p0, p4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    .line 101
    return-void
.end method

.method public constructor <init>(ILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "duration"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    return-void
.end method

.method public constructor <init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "duration"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1, "propertyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/animation/ValueAnimator;",
            ">(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "animator":Landroid/animation/ValueAnimator;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/AnimationProps;->getStartDelay(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    return-object p2
.end method

.method public createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 109
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    :cond_0
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 113
    return-object v0
.end method

.method public getDuration(I)J
    .locals 8
    .param p1, "propertyType"    # I

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 167
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    .line 169
    .local v0, "duration":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 170
    return-wide v0

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    return-wide v2

    .line 174
    .end local v0    # "duration":J
    :cond_1
    return-wide v6
.end method

.method public getInterpolator(I)Landroid/view/animation/Interpolator;
    .locals 4
    .param p1, "propertyType"    # I

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    .line 195
    .local v0, "interp":Landroid/view/animation/Interpolator;
    if-eqz v0, :cond_0

    .line 196
    return-object v0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    return-object v1

    .line 200
    .end local v0    # "interp":Landroid/view/animation/Interpolator;
    :cond_1
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    return-object v1
.end method

.method public getListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public getStartDelay(I)J
    .locals 8
    .param p1, "propertyType"    # I

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 142
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    .line 144
    .local v0, "startDelay":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 145
    return-wide v0

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    return-wide v2

    .line 149
    .end local v0    # "startDelay":J
    :cond_1
    return-wide v6
.end method

.method public isImmediate()Z
    .locals 6

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    .line 223
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 225
    const/4 v2, 0x0

    return v2

    .line 223
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 4
    .param p1, "propertyType"    # I
    .param p2, "duration"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 160
    return-object p0
.end method

.method public setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 1
    .param p1, "propertyType"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 185
    return-object p0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 208
    return-object p0
.end method

.method public setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 4
    .param p1, "propertyType"    # I
    .param p2, "startDelay"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 135
    return-object p0
.end method
