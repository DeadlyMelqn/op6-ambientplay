.class Lcom/android/systemui/qs/QSBtFooter$6;
.super Landroid/widget/ArrayAdapter;
.source "QSBtFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSBtFooter;->listAudioDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/systemui/qs/QSBtFooter$AudioItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBtFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBtFooter;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSBtFooter;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    .local p4, "$anonymous2":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/QSBtFooter$AudioItem;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter$6;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    .line 394
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1
    return-void
.end method

.method private fillData(Landroid/widget/TextView;IZ)V
    .locals 4
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "position"    # I
    .param p3, "isDropDown"    # Z

    .prologue
    const/4 v3, 0x0

    .line 408
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSBtFooter$6;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBtFooter$AudioItem;

    .line 410
    .local v0, "item":Lcom/android/systemui/qs/QSBtFooter$AudioItem;
    if-eqz p3, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBtFooter$AudioItem;->getIcon()I

    move-result v1

    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 412
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$6;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSBtFooter;->-get4(Lcom/android/systemui/qs/QSBtFooter;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 413
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 414
    const/16 v1, 0x13

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 415
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$6;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSBtFooter;->-get7(Lcom/android/systemui/qs/QSBtFooter;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter$6;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v2}, Lcom/android/systemui/qs/QSBtFooter;->-get7(Lcom/android/systemui/qs/QSBtFooter;)I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 427
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$6;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSBtFooter;->-get5(Lcom/android/systemui/qs/QSBtFooter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    const v1, 0x7f0803f2

    invoke-virtual {p1, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 422
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter$6;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSBtFooter;->-get4(Lcom/android/systemui/qs/QSBtFooter;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 423
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 424
    const/16 v1, 0x15

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 425
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 420
    :cond_1
    const v1, 0x7f0803f1

    invoke-virtual {p1, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 402
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 403
    .local v0, "text":Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/qs/QSBtFooter$6;->fillData(Landroid/widget/TextView;IZ)V

    .line 404
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 396
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 397
    .local v0, "text":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/qs/QSBtFooter$6;->fillData(Landroid/widget/TextView;IZ)V

    .line 398
    return-object v0
.end method
