.class Lcom/ice/box/fragments/UI$7;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/UI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/UI;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/UI;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/ice/box/fragments/UI$7;->this$0:Lcom/ice/box/fragments/UI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 p1, 0x0

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/fragments/UI$7;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "immersive.full="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "["

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successful!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "["

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "]"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 407
    iget-object p2, p0, Lcom/ice/box/fragments/UI$7;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/fragments/UI;->access$500(Lcom/ice/box/fragments/UI;)Landroid/preference/ListPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 408
    iget-object p2, p0, Lcom/ice/box/fragments/UI$7;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 409
    iget-object p2, p0, Lcom/ice/box/fragments/UI$7;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 410
    iget-object p2, p0, Lcom/ice/box/fragments/UI$7;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p2

    const v0, 0x7f10009c

    invoke-virtual {p2, v0}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 416
    :catch_0
    iget-object p2, p0, Lcom/ice/box/fragments/UI$7;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p2

    iget-object p0, p0, Lcom/ice/box/fragments/UI$7;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    return p1
.end method
