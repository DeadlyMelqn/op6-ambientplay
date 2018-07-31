.class Lcom/ice/box/fragments/OP_Remap$5;
.super Ljava/lang/Object;
.source "OP_Remap.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/OP_Remap;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/OP_Remap;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/OP_Remap;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/ice/box/fragments/OP_Remap$5;->this$0:Lcom/ice/box/fragments/OP_Remap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 177
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Remap$5;->this$0:Lcom/ice/box/fragments/OP_Remap;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_custom_back_long_app"

    .line 178
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "ICEDEBUG"

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tweaks_custom_back_long_app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 182
    :catch_0
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Remap$5;->this$0:Lcom/ice/box/fragments/OP_Remap;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Remap;->access$000(Lcom/ice/box/fragments/OP_Remap;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/OP_Remap$5;->this$0:Lcom/ice/box/fragments/OP_Remap;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f10006e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
