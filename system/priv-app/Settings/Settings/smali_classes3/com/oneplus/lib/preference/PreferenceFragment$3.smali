.class Lcom/oneplus/lib/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/preference/PreferenceFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceFragment$3;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 412
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment$3;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v2}, Lcom/oneplus/lib/preference/PreferenceFragment;->-get0(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 413
    .local v0, "selectedItem":Ljava/lang/Object;
    instance-of v2, v0, Lcom/oneplus/lib/preference/Preference;

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment$3;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v2}, Lcom/oneplus/lib/preference/PreferenceFragment;->-get0(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 415
    .local v1, "selectedView":Landroid/view/View;
    check-cast v0, Lcom/oneplus/lib/preference/Preference;

    .end local v0    # "selectedItem":Ljava/lang/Object;
    invoke-virtual {v0, v1, p2, p3}, Lcom/oneplus/lib/preference/Preference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 418
    .end local v1    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedItem":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
