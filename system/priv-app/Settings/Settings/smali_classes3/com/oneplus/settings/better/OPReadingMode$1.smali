.class Lcom/oneplus/settings/better/OPReadingMode$1;
.super Landroid/os/Handler;
.source "OPReadingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPReadingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPReadingMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPReadingMode;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPReadingMode;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    .line 51
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPReadingMode;->-get2(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 57
    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPReadingMode;->-get0(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 58
    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPReadingMode;->-get0(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v5}, Lcom/oneplus/settings/better/OPReadingMode;->-get4(Lcom/oneplus/settings/better/OPReadingMode;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v5

    .line 59
    iget v6, p1, Landroid/os/Message;->what:I

    .line 58
    invoke-virtual {v5, v6}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPReadingMode;->-get0(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 61
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 62
    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPReadingMode;->-get0(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 63
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v2, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPReadingMode;->-get3(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;-><init>(Landroid/content/Context;)V

    .line 64
    .local v2, "pref":Lcom/oneplus/settings/ui/OPTextViewButtonPreference;
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonEnable(Z)V

    .line 67
    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPReadingMode;->-get3(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f1114

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonString(Ljava/lang/String;)V

    .line 68
    new-instance v4, Lcom/oneplus/settings/better/OPReadingMode$1$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/oneplus/settings/better/OPReadingMode$1$1;-><init>(Lcom/oneplus/settings/better/OPReadingMode$1;Lcom/oneplus/settings/ui/OPTextViewButtonPreference;Lcom/oneplus/settings/better/OPAppModel;)V

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPReadingMode;->-get2(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "model":Lcom/oneplus/settings/better/OPAppModel;
    .end local v2    # "pref":Lcom/oneplus/settings/ui/OPTextViewButtonPreference;
    :cond_0
    return-void
.end method
