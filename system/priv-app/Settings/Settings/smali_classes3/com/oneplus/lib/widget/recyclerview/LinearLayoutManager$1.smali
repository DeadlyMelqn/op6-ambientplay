.class Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$1;
.super Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    .line 426
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 1
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
