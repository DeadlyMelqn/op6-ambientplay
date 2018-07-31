.class Lcom/ice/box/fragments/Buttons$9;
.super Ljava/lang/Object;
.source "Buttons.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/Buttons;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/Buttons;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/Buttons;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/ice/box/fragments/Buttons$9;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 422
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 424
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons$9;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_custom_recents_app"

    .line 425
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 424
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 428
    :catch_0
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons$9;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/Buttons;->access$100(Lcom/ice/box/fragments/Buttons;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/Buttons$9;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f10006e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
