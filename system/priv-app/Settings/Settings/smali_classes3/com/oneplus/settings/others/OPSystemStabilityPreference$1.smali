.class Lcom/oneplus/settings/others/OPSystemStabilityPreference$1;
.super Ljava/lang/Object;
.source "OPSystemStabilityPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/others/OPSystemStabilityPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPSystemStabilityPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/others/OPSystemStabilityPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/others/OPSystemStabilityPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/others/OPSystemStabilityPreference$1;->this$0:Lcom/oneplus/settings/others/OPSystemStabilityPreference;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "op_legal_notices_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string/jumbo v1, "key_from_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/oneplus/settings/others/OPSystemStabilityPreference$1;->this$0:Lcom/oneplus/settings/others/OPSystemStabilityPreference;

    invoke-static {v1}, Lcom/oneplus/settings/others/OPSystemStabilityPreference;->-get0(Lcom/oneplus/settings/others/OPSystemStabilityPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method