.class Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$3;
.super Ljava/lang/Object;
.source "ExtendedGlobalActionsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$3;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$3;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get3(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    move-result-object v0

    .line 189
    .local v0, "action":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    instance-of v1, v0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$LongPressAction;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$3;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get2(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->dismiss()V

    .line 191
    check-cast v0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$LongPressAction;

    .end local v0    # "action":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    invoke-interface {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$LongPressAction;->onLongPress()Z

    move-result v1

    return v1

    .line 193
    .restart local v0    # "action":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
