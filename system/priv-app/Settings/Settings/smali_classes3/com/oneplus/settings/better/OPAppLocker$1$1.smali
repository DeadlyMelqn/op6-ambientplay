.class Lcom/oneplus/settings/better/OPAppLocker$1$1;
.super Ljava/lang/Object;
.source "OPAppLocker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPAppLocker$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/better/OPAppLocker$1;

.field final synthetic val$model:Lcom/oneplus/settings/better/OPAppModel;

.field final synthetic val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPAppLocker$1;Lcom/oneplus/settings/ui/OPTextViewButtonPreference;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/settings/better/OPAppLocker$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->this$1:Lcom/oneplus/settings/better/OPAppLocker$1;

    iput-object p2, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    iput-object p3, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonEnable(Z)V

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->this$1:Lcom/oneplus/settings/better/OPAppLocker$1;

    iget-object v0, v0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPAppLocker;->-get4(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->this$1:Lcom/oneplus/settings/better/OPAppLocker$1;

    iget-object v0, v0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPAppLocker;->-get1(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/app/AppOpsManager;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPAppLocker$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    .line 68
    const/16 v3, 0x3f

    .line 70
    const/4 v4, 0x1

    .line 68
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 71
    return-void
.end method
