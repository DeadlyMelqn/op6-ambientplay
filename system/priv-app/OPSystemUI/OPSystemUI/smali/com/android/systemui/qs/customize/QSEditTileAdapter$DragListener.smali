.class public Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;
.super Ljava/lang/Object;
.source "QSEditTileAdapter.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSEditTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;
    }
.end annotation


# instance fields
.field private final mScrollWorker:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;
    .param p1, "goToPage"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->scrollPage(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    .line 204
    return-void
.end method

.method private checkIfDragToPage(I)V
    .locals 6
    .param p1, "goToPage"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 239
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get1()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 240
    invoke-static {v4, v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set1(J)J

    .line 242
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get6(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get0()I

    move-result v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->canScrollToNextPage()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get2()I

    move-result v1

    if-ne p1, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 245
    .local v0, "canGo":Z
    :goto_1
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get7()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set1(J)J

    .line 247
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set0(I)I

    .line 249
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get6(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get6(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get3()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 244
    .end local v0    # "canGo":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "canGo":Z
    goto :goto_1
.end method

.method private moveItem()V
    .locals 6

    .prologue
    .line 212
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 213
    .local v0, "adapterSource":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "customListSource":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 217
    .local v2, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v3

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v4

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemMoved(II)V

    .line 220
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set2(I)I

    .line 221
    return-void
.end method

.method private scrollPage(I)V
    .locals 2
    .param p1, "goToPage"    # I

    .prologue
    .line 224
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set1(J)J

    .line 225
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get0()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->scrollNextPage()V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->scrollPrevPage()V

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_qs_customize_QSEditTileAdapter$DragListener_13817(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "source"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onAfterItemRemoved(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_QSEditTileAdapter$DragListener_15396()V
    .locals 3

    .prologue
    .line 382
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get4()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "post view changing event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onAfterItemAdded(Landroid/support/v7/widget/RecyclerView;)V

    .line 386
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 387
    .local v0, "adapterSource":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 259
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 260
    .local v13, "viewSource":Landroid/view/View;
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v14, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    move-object/from16 v14, p1

    check-cast v14, Landroid/support/v7/widget/RecyclerView;

    iput-object v14, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    iget-object v14, v14, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-wrap0(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v14

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set3(I)I

    .line 276
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInLowerPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInLowerPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 277
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get4()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "from lower to lower, skip it"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v14, 0x1

    return v14

    .line 265
    :cond_0
    const/4 v14, 0x2

    if-ne v2, v14, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-wrap1(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v8

    .line 267
    .local v8, "goToPage":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->checkIfDragToPage(I)V

    .line 269
    .end local v8    # "goToPage":I
    :cond_1
    const/4 v14, 0x1

    return v14

    .line 272
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/RecyclerView;

    iput-object v14, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    invoke-virtual {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->getAdapterPosition()I

    move-result v14

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set3(I)I

    goto :goto_0

    .line 284
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 395
    :cond_4
    :goto_1
    :pswitch_0
    const/4 v14, 0x1

    return v14

    .line 287
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    iget-object v14, v14, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-wrap0(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v4

    .line 290
    .local v4, "currentPosition":I
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v14

    if-eq v14, v4, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v15

    if-eq v14, v15, :cond_4

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->moveItem()V

    goto :goto_1

    .line 298
    .end local v4    # "currentPosition":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    iget-object v14, v14, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-ne v14, v15, :cond_5

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-wrap1(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v8

    .line 304
    .restart local v8    # "goToPage":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->checkIfDragToPage(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-wrap0(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v4

    .line 307
    .restart local v4    # "currentPosition":I
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v14

    if-eq v14, v4, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v15

    if-eq v14, v15, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->moveItem()V

    goto/16 :goto_1

    .line 313
    .end local v4    # "currentPosition":I
    .end local v8    # "goToPage":I
    :cond_5
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 316
    const/4 v7, 0x1

    .line 318
    .local v7, "differentPager":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v15

    if-ne v14, v15, :cond_6

    .line 319
    const/4 v7, 0x0

    .line 321
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    iget-object v14, v14, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 322
    .local v3, "adapterSource":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    iget-object v14, v14, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 324
    .local v12, "targetAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    if-eqz v7, :cond_7

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onBeforeItemAdded(Landroid/support/v7/widget/RecyclerView;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onBeforeItemRemoved(Landroid/support/v7/widget/RecyclerView;)V

    .line 329
    :cond_7
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v5

    .line 330
    .local v5, "customListSource":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v14

    invoke-interface {v5, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 331
    .local v9, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get9()I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    .line 333
    invoke-virtual {v12}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v6

    .line 335
    .local v6, "customListTarget":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-le v14, v15, :cond_8

    .line 336
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set3(I)I

    .line 338
    :cond_8
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    invoke-interface {v6, v14, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 339
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    .line 341
    if-eqz v7, :cond_9

    .line 345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    iget-object v11, v14, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    .line 346
    .local v11, "source":Landroid/support/v7/widget/RecyclerView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get6(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1, v11}, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set2(I)I

    .line 361
    .end local v11    # "source":Landroid/support/v7/widget/RecyclerView;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    iput-object v15, v14, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    goto/16 :goto_1

    .line 351
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/qs/customize/QSEditPageManager;->rebuildPager(Landroid/support/v7/widget/RecyclerView;)I

    move-result v10

    .line 352
    .local v10, "scrollDirection":I
    const/4 v14, 0x1

    if-ne v10, v14, :cond_a

    .line 354
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set2(I)I

    goto :goto_2

    .line 357
    :cond_a
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get10()I

    move-result v14

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set2(I)I

    goto :goto_2

    .line 371
    .end local v3    # "adapterSource":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .end local v5    # "customListSource":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    .end local v6    # "customListTarget":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    .end local v7    # "differentPager":Z
    .end local v9    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .end local v10    # "scrollDirection":I
    .end local v12    # "targetAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    :pswitch_3
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get11()Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    if-nez v14, :cond_4

    .line 372
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get11()Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v14

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    .line 375
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-set1(J)J

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get6(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get8(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/qs/customize/QSEditPageManager;->endDragAndDrop()V

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v14}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get6(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/systemui/qs/customize/-$Lambda$3wtCMwN4ebVvuc-6mIdikfyMI50;

    const/16 v16, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/android/systemui/qs/customize/-$Lambda$3wtCMwN4ebVvuc-6mIdikfyMI50;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
