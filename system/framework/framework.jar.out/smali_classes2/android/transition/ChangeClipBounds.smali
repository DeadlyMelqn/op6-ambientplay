.class public Landroid/transition/ChangeClipBounds;
.super Landroid/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "android:clipBounds:clip"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v5, 0x0

    .line 55
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 56
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 61
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:clipBounds:clip"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    if-nez v1, :cond_1

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:clipBounds:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 76
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 71
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v8, 0x0

    .line 81
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 84
    :cond_0
    return-object v8

    .line 82
    :cond_1
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:clip"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 81
    if-nez v6, :cond_0

    .line 83
    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:clip"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 81
    if-nez v6, :cond_0

    .line 86
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:clip"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 87
    .local v5, "start":Landroid/graphics/Rect;
    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:clip"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 88
    .local v1, "end":Landroid/graphics/Rect;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    .line 89
    .local v2, "endIsNull":Z
    :goto_0
    if-nez v5, :cond_3

    if-nez v1, :cond_3

    .line 90
    return-object v8

    .line 88
    .end local v2    # "endIsNull":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "endIsNull":Z
    goto :goto_0

    .line 93
    :cond_3
    if-nez v5, :cond_5

    .line 94
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:bounds"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "start":Landroid/graphics/Rect;
    check-cast v5, Landroid/graphics/Rect;

    .line 98
    .restart local v5    # "start":Landroid/graphics/Rect;
    :cond_4
    :goto_1
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 99
    return-object v8

    .line 95
    :cond_5
    if-nez v1, :cond_4

    .line 96
    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:bounds"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "end":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .restart local v1    # "end":Landroid/graphics/Rect;
    goto :goto_1

    .line 102
    :cond_6
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 103
    new-instance v4, Landroid/animation/RectEvaluator;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v4, v6}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 105
    .local v4, "evaluator":Landroid/animation/RectEvaluator;
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const-string/jumbo v7, "clipBounds"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v6, v7, v4, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 106
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_7

    .line 107
    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 108
    .local v3, "endView":Landroid/view/View;
    new-instance v6, Landroid/transition/ChangeClipBounds$1;

    invoke-direct {v6, p0, v3}, Landroid/transition/ChangeClipBounds$1;-><init>(Landroid/transition/ChangeClipBounds;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    .end local v3    # "endView":Landroid/view/View;
    :cond_7
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
