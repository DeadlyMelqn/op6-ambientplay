.class Landroid/support/v17/leanback/widget/picker/Picker$1;
.super Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/Picker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/picker/Picker;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/picker/Picker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/picker/Picker;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    .line 492
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 5
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .prologue
    .line 499
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    .line 502
    .local v2, "pickerScrollArrayAdapter":Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 503
    .local v0, "colIndex":I
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnAlpha(IZ)V

    .line 504
    if-eqz p2, :cond_0

    .line 505
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v3

    add-int v1, v3, p3

    .line 506
    .local v1, "newValue":I
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    invoke-virtual {v3, v0, v1}, Landroid/support/v17/leanback/widget/picker/Picker;->onColumnValueChanged(II)V

    .line 508
    .end local v1    # "newValue":I
    :cond_0
    return-void
.end method
