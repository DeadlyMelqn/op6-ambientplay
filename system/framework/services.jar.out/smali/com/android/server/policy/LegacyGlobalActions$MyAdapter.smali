.class Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p2, "-this1"    # Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 706
    const/4 v1, 0x0

    .line 708
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 709
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/LegacyGlobalActions$Action;

    .line 711
    .local v0, "action":Lcom/android/server/policy/LegacyGlobalActions$Action;
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 708
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get5(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 717
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 719
    .end local v0    # "action":Lcom/android/server/policy/LegacyGlobalActions$Action;
    :cond_3
    return v1
.end method

.method public getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 735
    const/4 v1, 0x0

    .line 736
    .local v1, "filteredPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 737
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/LegacyGlobalActions$Action;

    .line 738
    .local v0, "action":Lcom/android/server/policy/LegacyGlobalActions$Action;
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 736
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get5(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 744
    :cond_2
    if-ne v1, p1, :cond_3

    .line 745
    return-object v0

    .line 747
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 750
    .end local v0    # "action":Lcom/android/server/policy/LegacyGlobalActions$Action;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 751
    const-string/jumbo v5, " out of range of showable actions"

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 752
    const-string/jumbo v5, ", filtered count="

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 752
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v5

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 753
    const-string/jumbo v5, ", keyguardshowing="

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 753
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v5

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 754
    const-string/jumbo v5, ", provisioned="

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 754
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get5(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v5

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 732
    invoke-virtual {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 759
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 764
    invoke-virtual {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    .line 765
    .local v0, "action":Lcom/android/server/policy/LegacyGlobalActions$Action;
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/server/policy/LegacyGlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
