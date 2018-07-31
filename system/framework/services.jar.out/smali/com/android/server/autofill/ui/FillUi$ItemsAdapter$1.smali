.class Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;
.super Landroid/widget/Filter;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 503
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 507
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 508
    .local v5, "results":Landroid/widget/Filter$FilterResults;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 509
    iget-object v7, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v7}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-get0(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 510
    iget-object v7, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v7}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-get0(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 511
    return-object v5

    .line 513
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v1, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "constraintLowerCase":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v7}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-get0(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 516
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 517
    iget-object v7, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v7}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-get0(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    .line 518
    .local v3, "item":Lcom/android/server/autofill/ui/FillUi$ViewItem;
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/FillUi$ViewItem;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 520
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_2

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$ViewItem;->-get0(Lcom/android/server/autofill/ui/FillUi$ViewItem;)Landroid/service/autofill/Dataset;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v7

    if-nez v7, :cond_2

    .line 523
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_2
    if-eqz v6, :cond_1

    .line 522
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 520
    if-eqz v7, :cond_1

    goto :goto_1

    .line 526
    .end local v3    # "item":Lcom/android/server/autofill/ui/FillUi$ViewItem;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    iput-object v1, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 527
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 528
    return-object v5
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 534
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-get1(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 535
    .local v1, "oldItemCount":I
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-get1(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 536
    iget v3, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v3, :cond_0

    .line 538
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 539
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-get1(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-get1(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x1

    .line 542
    .local v2, "resultCountChanged":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 543
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    iget-object v3, v3, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi;->-wrap0(Lcom/android/server/autofill/ui/FillUi;)V

    .line 545
    :cond_1
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->notifyDataSetChanged()V

    .line 546
    return-void

    .line 541
    .end local v2    # "resultCountChanged":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "resultCountChanged":Z
    goto :goto_0
.end method
