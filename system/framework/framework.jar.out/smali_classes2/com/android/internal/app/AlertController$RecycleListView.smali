.class public Lcom/android/internal/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field private final mPaddingBottomNoButtons:I

.field private final mPaddingTopNoTitle:I

.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 909
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 910
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 913
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 906
    iput-boolean v3, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 916
    sget-object v1, Lcom/android/internal/R$styleable;->RecycleListView:[I

    .line 915
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 918
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 917
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 919
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 921
    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method

.method public setHasDecor(ZZ)V
    .locals 5
    .param p1, "hasTitle"    # Z
    .param p2, "hasButtons"    # Z

    .prologue
    .line 924
    if-eqz p2, :cond_0

    xor-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v1

    .line 926
    .local v1, "paddingLeft":I
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v3

    .line 927
    .local v3, "paddingTop":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v2

    .line 928
    .local v2, "paddingRight":I
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v0

    .line 929
    .local v0, "paddingBottom":I
    :goto_1
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/app/AlertController$RecycleListView;->setPadding(IIII)V

    .line 931
    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingTop":I
    :cond_1
    return-void

    .line 926
    .restart local v1    # "paddingLeft":I
    :cond_2
    iget v3, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    .restart local v3    # "paddingTop":I
    goto :goto_0

    .line 928
    .restart local v2    # "paddingRight":I
    :cond_3
    iget v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .restart local v0    # "paddingBottom":I
    goto :goto_1
.end method
