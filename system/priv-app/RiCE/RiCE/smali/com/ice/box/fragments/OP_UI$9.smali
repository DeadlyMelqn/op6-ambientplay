.class Lcom/ice/box/fragments/OP_UI$9;
.super Ljava/lang/Object;
.source "OP_UI.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/OP_UI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/OP_UI;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/OP_UI;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/ice/box/fragments/OP_UI$9;->this$0:Lcom/ice/box/fragments/OP_UI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 343
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p1 .. p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI$9;->this$0:Lcom/ice/box/fragments/OP_UI;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_qs_vibration"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 350
    :catch_0
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI$9;->this$0:Lcom/ice/box/fragments/OP_UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_UI;->access$000(Lcom/ice/box/fragments/OP_UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/OP_UI$9;->this$0:Lcom/ice/box/fragments/OP_UI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
