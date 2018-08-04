.class public Landroid/transition/ChangeScroll;
.super Landroid/transition/Transition;
.source "ChangeScroll.java"


# static fields
.field private static final PROPERTIES:[Ljava/lang/String;

.field private static final PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "android:changeScroll:x"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "android:changeScroll:y"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Landroid/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 62
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v1, "android:changeScroll:x"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v1, "android:changeScroll:y"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/transition/ChangeScroll;->captureValues(Landroid/transition/TransitionValues;)V

    .line 54
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/transition/ChangeScroll;->captureValues(Landroid/transition/TransitionValues;)V

    .line 49
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 69
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 70
    :cond_0
    return-object v7

    .line 72
    :cond_1
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 73
    .local v6, "view":Landroid/view/View;
    iget-object v7, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeScroll:x"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 74
    .local v4, "startX":I
    iget-object v7, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeScroll:x"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    .local v0, "endX":I
    iget-object v7, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeScroll:y"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 76
    .local v5, "startY":I
    iget-object v7, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:changeScroll:y"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 77
    .local v1, "endY":I
    const/4 v2, 0x0

    .line 78
    .local v2, "scrollXAnimator":Landroid/animation/Animator;
    const/4 v3, 0x0

    .line 79
    .local v3, "scrollYAnimator":Landroid/animation/Animator;
    if-eq v4, v0, :cond_2

    .line 80
    invoke-virtual {v6, v4}, Landroid/view/View;->setScrollX(I)V

    .line 81
    const-string/jumbo v7, "scrollX"

    new-array v8, v11, [I

    aput v4, v8, v9

    aput v0, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 83
    .end local v2    # "scrollXAnimator":Landroid/animation/Animator;
    :cond_2
    if-eq v5, v1, :cond_3

    .line 84
    invoke-virtual {v6, v5}, Landroid/view/View;->setScrollY(I)V

    .line 85
    const-string/jumbo v7, "scrollY"

    new-array v8, v11, [I

    aput v5, v8, v9

    aput v1, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 87
    .end local v3    # "scrollYAnimator":Landroid/animation/Animator;
    :cond_3
    invoke-static {v2, v3}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v7

    return-object v7
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-object v0
.end method