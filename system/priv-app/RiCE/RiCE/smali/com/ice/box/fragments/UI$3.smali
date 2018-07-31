.class Lcom/ice/box/fragments/UI$3;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/fragments/UI;
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

    .line 102
    iput-object p1, p0, Lcom/ice/box/fragments/UI$3;->this$0:Lcom/ice/box/fragments/UI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 104
    iget-object p1, p0, Lcom/ice/box/fragments/UI$3;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$000(Lcom/ice/box/fragments/UI;)I

    move-result p1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/fragments/UI$3;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_navbar_height"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successful!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    iget-object v0, p0, Lcom/ice/box/fragments/UI$3;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/ice/box/fragments/UI$3;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {v1 .. v1}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/ice/box/fragments/UI$3;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ice/box/fragments/UI$3;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100183

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ice/box/fragments/UI$3;->this$0:Lcom/ice/box/fragments/UI;

    .line 112
    invoke-static/range {v2 .. v2}, Lcom/ice/box/fragments/UI;->access$000(Lcom/ice/box/fragments/UI;)I

    move-result v2

    invoke-static/range {v2 .. v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/ice/box/fragments/UI$3;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$400(Lcom/ice/box/fragments/UI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successful!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
