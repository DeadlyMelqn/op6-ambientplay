.class Landroid/widget/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/ListPopupWindow$3;->this$0:Landroid/widget/ListPopupWindow;

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1130
    iget-object v1, p0, Landroid/widget/ListPopupWindow$3;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/widget/ListPopupWindow;->-get0(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    .line 1132
    .local v0, "dropDownList":Landroid/widget/DropDownListView;
    if-eqz v0, :cond_0

    .line 1133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 1136
    .end local v0    # "dropDownList":Landroid/widget/DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1139
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
