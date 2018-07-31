.class public Lcom/android/systemui/statusbar/notification/TextViewTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "TextViewTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/TextViewTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 31
    sput-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method private getEllipsisCount()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 123
    .local v0, "l":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 125
    .local v1, "lines":I
    if-lez v1, :cond_0

    .line 127
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    return v2

    .line 130
    .end local v1    # "lines":I
    :cond_0
    return v3
.end method

.method private hasSameSpans(Lcom/android/systemui/statusbar/notification/TextViewTransformState;)Z
    .locals 13
    .param p1, "otherTvs"    # Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 62
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v0, v9, Landroid/text/Spanned;

    .line 63
    .local v0, "hasSpans":Z
    iget-object v9, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v2, v9, Landroid/text/Spanned;

    .line 64
    .local v2, "otherHasSpans":Z
    if-eq v0, v2, :cond_0

    .line 65
    return v11

    .line 66
    :cond_0
    if-nez v0, :cond_1

    .line 67
    return v12

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    check-cast v6, Landroid/text/Spanned;

    .line 71
    .local v6, "ownSpanned":Landroid/text/Spanned;
    invoke-interface {v6}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Ljava/lang/Object;

    invoke-interface {v6, v11, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 72
    .local v8, "spans":[Ljava/lang/Object;
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    check-cast v4, Landroid/text/Spanned;

    .line 73
    .local v4, "otherSpanned":Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Ljava/lang/Object;

    invoke-interface {v4, v11, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 74
    .local v5, "otherSpans":[Ljava/lang/Object;
    array-length v9, v8

    array-length v10, v5

    if-eq v9, v10, :cond_2

    .line 75
    return v11

    .line 77
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v8

    if-ge v1, v9, :cond_6

    .line 78
    aget-object v7, v8, v1

    .line 79
    .local v7, "span":Ljava/lang/Object;
    aget-object v3, v5, v1

    .line 80
    .local v3, "otherSpan":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 81
    return v11

    .line 83
    :cond_3
    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 84
    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    if-eq v9, v10, :cond_5

    .line 85
    :cond_4
    return v11

    .line 77
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v3    # "otherSpan":Ljava/lang/Object;
    .end local v7    # "span":Ljava/lang/Object;
    :cond_6
    return v12
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    .locals 2

    .prologue
    .line 134
    sget-object v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 135
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    if-eqz v0, :cond_0

    .line 136
    return-object v0

    .line 138
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;-><init>()V

    return-object v1
.end method


# virtual methods
.method protected getViewHeight()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    return v0
.end method

.method protected getViewWidth()I
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 106
    .local v0, "l":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v1

    return v1
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    .line 38
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    .line 41
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 144
    sget-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    .line 151
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 6
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    const/4 v3, 0x1

    return v3

    .line 48
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 49
    check-cast v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 50
    .local v1, "otherTvs":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v2

    .line 52
    .local v2, "ownEllipsized":I
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v0

    .line 53
    .local v0, "otherEllipsized":I
    if-ne v2, v0, :cond_1

    .line 54
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 55
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->hasSameSpans(Lcom/android/systemui/statusbar/notification/TextViewTransformState;)Z

    move-result v3

    .line 53
    :cond_1
    return v3

    .line 58
    .end local v0    # "otherEllipsized":I
    .end local v1    # "otherTvs":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    .end local v2    # "ownEllipsized":I
    :cond_2
    return v3
.end method

.method protected transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 6
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    instance-of v4, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    if-nez v4, :cond_0

    .line 94
    return v3

    :cond_0
    move-object v1, p1

    .line 96
    check-cast v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 97
    .local v1, "otherTvs":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 98
    .local v0, "lineCount":I
    if-ne v0, v2, :cond_2

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v4

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getViewHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getViewHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 98
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 100
    goto :goto_0

    :cond_2
    move v2, v3

    .line 98
    goto :goto_0
.end method
