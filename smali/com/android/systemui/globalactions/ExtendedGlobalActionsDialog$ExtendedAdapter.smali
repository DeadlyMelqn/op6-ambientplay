.class Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExtendedGlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;
    .param p2, "-this1"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;-><init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 306
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 307
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    .line 309
    .local v0, "action":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get6(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;->showDuringKeyguard()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 306
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get1(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;->showBeforeProvisioning()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 315
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 317
    .end local v0    # "action":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    :cond_3
    return v1
.end method

.method public getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "filteredPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 334
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    .line 335
    .local v0, "action":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get6(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;->showDuringKeyguard()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 333
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get1(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;->showBeforeProvisioning()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 341
    :cond_2
    if-ne v1, p1, :cond_3

    .line 342
    return-object v0

    .line 344
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 347
    .end local v0    # "action":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 348
    const-string/jumbo v5, " out of range of showable actions"

    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    const-string/jumbo v5, ", filtered count="

    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getCount()I

    move-result v5

    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    const-string/jumbo v5, ", keyguardshowing="

    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    iget-object v5, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get6(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Z

    move-result v5

    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 351
    const-string/jumbo v5, ", provisioned="

    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 351
    iget-object v5, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get1(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Z

    move-result v5

    .line 347
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
    .line 330
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 356
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    move-result-object v0

    .line 361
    .local v0, "action":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    iget-object v2, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get0(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get0(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-interface {v0, v2, p2, p3, v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 362
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 363
    invoke-static {p3}, Lcom/android/systemui/HardwareUiLayout;->get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/HardwareUiLayout;->setDivisionView(Landroid/view/View;)V

    .line 365
    :cond_0
    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
