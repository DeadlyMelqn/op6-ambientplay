.class Lcom/ice/box/fragments/Buttons$10;
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

    .line 452
    iput-object p1, p0, Lcom/ice/box/fragments/Buttons$10;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 455
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 457
    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 458
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 459
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 464
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 466
    :try_start_0
    iget-object p2, p0, Lcom/ice/box/fragments/Buttons$10;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-virtual/range {p2 .. p2}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "tweaks_custom_fp_up_action"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Successful!"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    const/4 v1, 0x1

    if-eq p1, p2, :cond_2

    .line 469
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons$10;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/Buttons;->access$500(Lcom/ice/box/fragments/Buttons;)Landroid/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2

    .line 471
    :cond_2
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons$10;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/Buttons;->access$500(Lcom/ice/box/fragments/Buttons;)Landroid/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 472
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons$10;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/Buttons;->access$500(Lcom/ice/box/fragments/Buttons;)Landroid/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSelectable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v1

    .line 476
    :catch_0
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons$10;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/Buttons;->access$100(Lcom/ice/box/fragments/Buttons;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/Buttons$10;->this$0:Lcom/ice/box/fragments/Buttons;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f10006e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    return v0
.end method
