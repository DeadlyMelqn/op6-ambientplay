.class Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController$AlertParams;->createListView(Lcom/oneplus/lib/app/OPAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

.field final synthetic val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/oneplus/lib/app/OPAlertController$RecycleListView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/app/OPAlertController$AlertParams;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->this$1:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    .line 1048
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1052
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1053
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->this$1:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v2, v2, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    .line 1054
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->this$1:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v2, v2, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    .line 1055
    .local v0, "isItemChecked":Z
    if-eqz v0, :cond_0

    .line 1056
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1059
    .end local v0    # "isItemChecked":Z
    :cond_0
    return-object v1
.end method
