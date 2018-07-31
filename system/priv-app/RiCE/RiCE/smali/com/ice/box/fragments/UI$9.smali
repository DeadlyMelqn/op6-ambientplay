.class Lcom/ice/box/fragments/UI$9;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    .line 451
    iput-object p1, p0, Lcom/ice/box/fragments/UI$9;->this$0:Lcom/ice/box/fragments/UI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 454
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p1 .. p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/ice/box/fragments/UI$9;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {v1 .. v1}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_disable_volume_warning"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Successful!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 461
    :catch_0
    iget-object p1, p0, Lcom/ice/box/fragments/UI$9;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/UI$9;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
