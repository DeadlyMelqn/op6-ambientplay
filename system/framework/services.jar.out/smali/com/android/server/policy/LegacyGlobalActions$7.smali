.class Lcom/android/server/policy/LegacyGlobalActions$7;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$7;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 335
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
    .line 339
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$7;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get0(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    .line 340
    .local v0, "action":Lcom/android/server/policy/LegacyGlobalActions$Action;
    instance-of v1, v0, Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;

    if-eqz v1, :cond_0

    .line 341
    check-cast v0, Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;

    .end local v0    # "action":Lcom/android/server/policy/LegacyGlobalActions$Action;
    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;->onLongPress()Z

    move-result v1

    return v1

    .line 343
    .restart local v0    # "action":Lcom/android/server/policy/LegacyGlobalActions$Action;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
