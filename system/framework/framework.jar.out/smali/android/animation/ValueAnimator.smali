.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mAnimationEndRequested:Z

.field private mCurrentFraction:F

.field private mDuration:J

.field private mFirstFrameTime:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastFrameTime:J

.field private mOverallFraction:F

.field private mPauseTime:J

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mReversing:Z

.field private mRunning:Z

.field mSeekFraction:F

.field private mSelfPulse:Z

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field mStartTimeCommitted:Z

.field private mStarted:Z

.field private mSuppressSelfPulseRequested:Z

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 131
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 130
    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 319
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 94
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 114
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 127
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 145
    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 151
    iput v1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 156
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 162
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 172
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 178
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 185
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 191
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 196
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 203
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 212
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 219
    iput v3, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 225
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 231
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 238
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 320
    return-void
.end method

.method private addAnimationCallback(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 1483
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    .line 1484
    return-void

    .line 1486
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 1487
    return-void
.end method

.method private addOneShotCommitCallback()V
    .locals 1

    .prologue
    .line 1469
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    .line 1470
    return-void

    .line 1472
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1473
    return-void
.end method

.method public static areAnimatorsEnabled()Z
    .locals 2

    .prologue
    .line 311
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clampFraction(F)F
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 694
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 695
    const/4 p1, 0x0

    .line 699
    :cond_0
    :goto_0
    return p1

    .line 696
    :cond_1
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 697
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x8

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 1186
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v4, :cond_0

    .line 1187
    return-void

    .line 1189
    :cond_0
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1191
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1192
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1193
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 1194
    .local v1, "notify":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 1196
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1198
    :cond_2
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1199
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1200
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1201
    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1202
    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1203
    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1204
    if-eqz v1, :cond_4

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1206
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1207
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1208
    .local v2, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 1209
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v5, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v4, p0, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 1208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1193
    .end local v0    # "i":I
    .end local v1    # "notify":Z
    .end local v2    # "numListeners":I
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "notify":Z
    goto :goto_0

    .line 1213
    :cond_4
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1214
    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1215
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v4

    .line 1216
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1215
    invoke-static {v10, v11, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1218
    :cond_5
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .prologue
    .line 1591
    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private getCurrentIteration(F)I
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 663
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 667
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 668
    .local v0, "iteration":D
    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 669
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 671
    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private getCurrentIterationFraction(FZ)F
    .locals 3
    .param p1, "fraction"    # F
    .param p2, "inReverse"    # Z

    .prologue
    .line 680
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 681
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    move-result v1

    .line 682
    .local v1, "iteration":I
    int-to-float v2, v1

    sub-float v0, p1, v2

    .line 683
    .local v0, "currentFraction":F
    invoke-direct {p0, v1, p2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    .end local v0    # "currentFraction":F
    :cond_0
    return v0
.end method

.method public static getDurationScale()F
    .locals 1

    .prologue
    .line 294
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private getScaledDuration()J
    .locals 2

    .prologue
    .line 583
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private isPulsingInternal()Z
    .locals 4

    .prologue
    .line 1249
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyStartListeners()V
    .locals 5

    .prologue
    .line 985
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 987
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 988
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 989
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 990
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v3, p0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 994
    return-void
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 351
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 352
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 353
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 354
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    .prologue
    .line 369
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 370
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 371
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    .line 334
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 335
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 336
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 411
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 412
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 413
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 414
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 383
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 384
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 385
    return-object v0
.end method

.method private removeAnimationCallback()V
    .locals 1

    .prologue
    .line 1476
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    .line 1477
    return-void

    .line 1479
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1480
    return-void
.end method

.method public static setDurationScale(F)V
    .locals 0
    .param p0, "durationScale"    # F

    .prologue
    .line 286
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 287
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .prologue
    .line 807
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    .line 808
    return-void
.end method

.method private shouldPlayBackward(IZ)Z
    .locals 4
    .param p1, "iteration"    # I
    .param p2, "inReverse"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 708
    if-lez p1, :cond_4

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 709
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    if-lt p1, v2, :cond_0

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 712
    :cond_0
    if-eqz p2, :cond_2

    .line 713
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 715
    :cond_2
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 718
    :cond_4
    return p2
.end method

.method private start(Z)V
    .locals 13
    .param p1, "playBackwards"    # Z

    .prologue
    const/4 v12, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 1010
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1011
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1013
    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1014
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1016
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_1

    .line 1017
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 1019
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v2, v1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .line 1020
    .local v0, "fraction":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1025
    .end local v0    # "fraction":F
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1026
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1027
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1028
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1032
    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1033
    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1034
    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1035
    invoke-direct {p0, v10, v11}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1037
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v1, v2, v10

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v12

    if-ltz v1, :cond_5

    .line 1041
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1042
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_6

    .line 1046
    invoke-virtual {p0, v10, v11}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 1051
    :cond_3
    :goto_2
    return-void

    .line 1022
    :cond_4
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    .line 1037
    :cond_5
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 1048
    :cond_6
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_2
.end method

.method private startAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x8

    const/4 v2, 0x0

    .line 1225
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v0

    .line 1227
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 1226
    invoke-static {v4, v5, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1230
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1231
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1232
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1233
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 1234
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1238
    :goto_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1239
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1241
    :cond_1
    return-void

    .line 1236
    :cond_2
    iput v2, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_0
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 900
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 903
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    return-void
.end method

.method animateBasedOnPlayTime(JJZ)V
    .locals 13
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J
    .param p5, "inReverse"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 1332
    cmp-long v7, p1, v8

    if-ltz v7, :cond_0

    cmp-long v7, p3, v8

    if-gez v7, :cond_1

    .line 1333
    :cond_0
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Error: Play time should never be negative."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1336
    :cond_1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1338
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v7, :cond_2

    .line 1339
    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v8, p1, v8

    long-to-int v4, v8

    .line 1340
    .local v4, "iteration":I
    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v8, p3, v8

    long-to-int v5, v8

    .line 1343
    .local v5, "lastIteration":I
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1344
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1346
    if-eq v4, v5, :cond_2

    .line 1347
    iget-object v7, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 1348
    iget-object v7, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1349
    .local v6, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 1350
    iget-object v7, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v7, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1349
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1356
    .end local v3    # "i":I
    .end local v4    # "iteration":I
    .end local v5    # "lastIteration":I
    .end local v6    # "numListeners":I
    :cond_2
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mDuration:J

    mul-long/2addr v8, v10

    cmp-long v7, p1, v8

    if-ltz v7, :cond_3

    .line 1357
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->skipToEndValue(Z)V

    .line 1364
    :goto_1
    return-void

    .line 1360
    :cond_3
    long-to-float v7, p1

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v8, v8

    div-float v2, v7, v8

    .line 1361
    .local v2, "fraction":F
    move/from16 v0, p5

    invoke-direct {p0, v2, v0}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v2

    .line 1362
    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1
.end method

.method animateBasedOnTime(J)Z
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    .line 1290
    const/4 v1, 0x0

    .line 1291
    .local v1, "done":Z
    iget-boolean v10, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v10, :cond_1

    .line 1292
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v8

    .line 1293
    .local v8, "scaledDuration":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    .line 1294
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v10, p1, v10

    long-to-float v10, v10

    long-to-float v11, v8

    div-float v2, v10, v11

    .line 1295
    .local v2, "fraction":F
    :goto_0
    iget v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1296
    .local v4, "lastFraction":F
    float-to-int v10, v2

    float-to-int v11, v4

    if-le v10, v11, :cond_3

    const/4 v6, 0x1

    .line 1297
    .local v6, "newIteration":Z
    :goto_1
    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_5

    .line 1298
    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    const/4 v5, 0x1

    .line 1299
    .local v5, "lastIterationFinished":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    .line 1301
    const/4 v1, 0x1

    .line 1313
    :cond_0
    :goto_3
    invoke-direct {p0, v2}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result v10

    iput v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1315
    iget v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v11, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1314
    invoke-direct {p0, v10, v11}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    .line 1316
    .local v0, "currentIterationFraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1318
    .end local v0    # "currentIterationFraction":F
    .end local v2    # "fraction":F
    .end local v4    # "lastFraction":F
    .end local v5    # "lastIterationFinished":Z
    .end local v6    # "newIteration":Z
    .end local v8    # "scaledDuration":J
    :cond_1
    return v1

    .line 1294
    .restart local v8    # "scaledDuration":J
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "fraction":F
    goto :goto_0

    .line 1296
    .restart local v4    # "lastFraction":F
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "newIteration":Z
    goto :goto_1

    .line 1298
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "lastIterationFinished":Z
    goto :goto_2

    .line 1297
    .end local v5    # "lastIterationFinished":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "lastIterationFinished":Z
    goto :goto_2

    .line 1302
    :cond_6
    if-eqz v6, :cond_7

    xor-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_7

    .line 1304
    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 1305
    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1306
    .local v7, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v7, :cond_0

    .line 1307
    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v10, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1306
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1310
    .end local v3    # "i":I
    .end local v7    # "numListeners":I
    :cond_7
    if-eqz v5, :cond_0

    .line 1311
    const/4 v1, 0x1

    goto :goto_3
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 1513
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1514
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1515
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1516
    .local v2, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1517
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1519
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1520
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1521
    .local v1, "numListeners":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1522
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1521
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1525
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method public canReverse()Z
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 1070
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1071
    new-instance v3, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v4, "Animators may only be run on Looper threads"

    invoke-direct {v3, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1076
    :cond_0
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v3, :cond_1

    .line 1077
    return-void

    .line 1083
    :cond_1
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1084
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_3

    .line 1086
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1089
    :cond_3
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1090
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 1091
    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 1094
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1096
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1527
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 1529
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1530
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1531
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1533
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1534
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1535
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1536
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1537
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1538
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1539
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1540
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1541
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1542
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1543
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1544
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1545
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1546
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1547
    iput v10, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1548
    iput v10, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1549
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1550
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1552
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1553
    .local v4, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_1

    .line 1554
    array-length v3, v4

    .line 1555
    .local v3, "numValues":I
    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1556
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1557
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1558
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1559
    .local v2, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v1

    .line 1560
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1563
    .end local v1    # "i":I
    .end local v2    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "numValues":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .locals 5
    .param p1, "frameTime"    # J

    .prologue
    .line 1265
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v2, :cond_0

    .line 1266
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1267
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    sub-long v0, p1, v2

    .line 1268
    .local v0, "adjustment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1269
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1275
    .end local v0    # "adjustment":J
    :cond_0
    return-void
.end method

.method public final doAnimationFrame(J)Z
    .locals 11
    .param p1, "frameTime"    # J

    .prologue
    .line 1397
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 1400
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v3, :cond_1

    move-wide v6, p1

    :goto_0
    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1404
    :cond_0
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v3, :cond_2

    .line 1405
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1406
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1407
    const/4 v3, 0x0

    return v3

    .line 1400
    :cond_1
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    long-to-float v3, v6

    sget v6, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v3, v6

    float-to-long v6, v3

    add-long/2addr v6, p1

    goto :goto_0

    .line 1408
    :cond_2
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v3, :cond_3

    .line 1409
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1410
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 1412
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v8, p1, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1416
    :cond_3
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_5

    .line 1419
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    cmp-long v3, v6, p1

    if-lez v3, :cond_4

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4

    .line 1423
    const/4 v3, 0x0

    return v3

    .line 1427
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1428
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1432
    :cond_5
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    .line 1433
    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_6

    .line 1434
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    long-to-float v3, v6

    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v3, v6

    float-to-long v4, v3

    .line 1435
    .local v4, "seekTime":J
    sub-long v6, p1, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1436
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1438
    .end local v4    # "seekTime":J
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1440
    :cond_7
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1445
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1446
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    move-result v2

    .line 1448
    .local v2, "finished":Z
    if-eqz v2, :cond_8

    .line 1449
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1451
    :cond_8
    return v2
.end method

.method public end()V
    .locals 2

    .prologue
    .line 1100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_2

    .line 1105
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1110
    :cond_1
    :goto_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1111
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1112
    return-void

    .line 1107
    :cond_2
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    .line 1108
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    .line 1110
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 823
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 824
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 827
    :cond_0
    return-object v2
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 841
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 842
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 846
    :cond_0
    return-object v2
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .locals 1

    .prologue
    .line 1649
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayTime()J
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 732
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 733
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2

    .line 735
    :cond_1
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 736
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    return-wide v2

    .line 738
    :cond_2
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 739
    .local v0, "durationScale":F
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2

    .line 738
    .end local v0    # "durationScale":F
    :cond_3
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .restart local v0    # "durationScale":F
    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 593
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1256
    const-string/jumbo v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 750
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 6

    .prologue
    .line 598
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 599
    const-wide/16 v0, -0x1

    return-wide v0

    .line 601
    :cond_0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 554
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 555
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 556
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 557
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 561
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 1386
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1141
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 1131
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1132
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 1133
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1134
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1135
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1137
    :cond_0
    return-void
.end method

.method pulseAnimationFrame(J)Z
    .locals 1
    .param p1, "frameTime"    # J

    .prologue
    .line 1456
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz v0, :cond_0

    .line 1463
    const/4 v0, 0x0

    return v0

    .line 1465
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 910
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 911
    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 914
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 915
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v1, 0x0

    .line 924
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 925
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 928
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 929
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 931
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1117
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animators may only be resumed from the same thread that the animator was started on"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1122
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1123
    invoke-direct {p0, v2, v3}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1126
    :cond_1
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 1127
    return-void
.end method

.method public reverse()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1158
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1159
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1160
    .local v2, "currentTime":J
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    .line 1161
    .local v0, "currentPlayTime":J
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 1162
    .local v4, "timeLeft":J
    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1163
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1164
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1171
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :goto_0
    return-void

    .line 1165
    :cond_0
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v6, :cond_1

    .line 1166
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1167
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 1169
    :cond_1
    invoke-direct {p0, v8}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    .prologue
    .line 1642
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 8
    .param p1, "fraction"    # F

    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 639
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 640
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 641
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    long-to-float v1, v6

    mul-float/2addr v1, p1

    float-to-long v4, v1

    .line 643
    .local v4, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 646
    .local v2, "currentTime":J
    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 652
    .end local v2    # "currentTime":J
    .end local v4    # "seekTime":J
    :goto_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 653
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, p1, v1}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    .line 654
    .local v0, "currentIterationFraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 655
    return-void

    .line 650
    .end local v0    # "currentIterationFraction":F
    :cond_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    .prologue
    .line 616
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    long-to-float v1, p1

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 617
    .local v0, "fraction":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 618
    return-void

    .line 616
    .end local v0    # "fraction":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "fraction":F
    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 574
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 579
    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    .prologue
    const/4 v1, 0x0

    .line 979
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 980
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 982
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .param p1, "values"    # [F

    .prologue
    const/4 v3, 0x0

    .line 460
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 461
    :cond_0
    return-void

    .line 463
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 464
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 470
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 471
    return-void

    .line 466
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 467
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .param p1, "values"    # [I

    .prologue
    const/4 v3, 0x0

    .line 432
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 433
    :cond_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 436
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 442
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 443
    return-void

    .line 438
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 439
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 945
    if-eqz p1, :cond_0

    .line 946
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 950
    :goto_0
    return-void

    .line 948
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 497
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 498
    :cond_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 501
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, v4, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 507
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 508
    return-void

    .line 503
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 504
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 859
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 860
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 879
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 880
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 763
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 764
    const-string/jumbo v0, "ValueAnimator"

    const-string/jumbo v1, "Start delay should always be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-wide/16 p1, 0x0

    .line 767
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 768
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 519
    array-length v1, p1

    .line 520
    .local v1, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 521
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 522
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 523
    aget-object v2, p1, v0

    .line 524
    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 528
    return-void
.end method

.method skipToEndValue(Z)V
    .locals 3
    .param p1, "inReverse"    # Z

    .prologue
    .line 1375
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1376
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1377
    .local v0, "endFraction":F
    :goto_0
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1379
    const/4 v0, 0x0

    .line 1381
    :cond_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1382
    return-void

    .line 1376
    .end local v0    # "endFraction":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "endFraction":F
    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1066
    return-void
.end method

.method startWithoutPulsing(Z)V
    .locals 1
    .param p1, "inReverse"    # Z

    .prologue
    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1055
    if-eqz p1, :cond_0

    .line 1056
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 1060
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1061
    return-void

    .line 1058
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1597
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1602
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
