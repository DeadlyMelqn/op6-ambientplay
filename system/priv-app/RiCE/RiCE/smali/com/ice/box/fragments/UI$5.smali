.class Lcom/ice/box/fragments/UI$5;
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

    .line 232
    iput-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 235
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    iget-object v0, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$500(Lcom/ice/box/fragments/UI;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 237
    iget-object v0, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$500(Lcom/ice/box/fragments/UI;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 238
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 239
    aget-object v3, v0, v2

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    aget-object p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v2, 0x7f10009c

    const v3, 0x7f10006e

    const v4, 0x7f100079

    const/4 v5, 0x1

    if-eqz p2, :cond_3

    .line 246
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 247
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 248
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$700(Lcom/ice/box/fragments/UI;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_2

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    .line 254
    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "policy_control"

    const-string v0, "immersive.full="

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Successful!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 259
    :catch_0
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    return v1

    .line 262
    :cond_3
    aget-object p2, v0, v5

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 263
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 264
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 265
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$700(Lcom/ice/box/fragments/UI;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 266
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_3

    .line 268
    :cond_4
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    .line 271
    :goto_3
    :try_start_1
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "policy_control"

    const-string v0, "immersive.full=*"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Successful!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v5

    .line 276
    :catch_1
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 p2, 0x2

    .line 279
    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 280
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$700(Lcom/ice/box/fragments/UI;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 281
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 282
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 283
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    iget-object p1, p1, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string p2, "immersive_perapp"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    const p2, 0x7f10009b

    if-nez p1, :cond_6

    .line 286
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    goto :goto_4

    .line 287
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string p2, ", "

    .line 290
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 292
    :try_start_2
    iget-object p2, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p2 .. p2}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "policy_control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "immersive.full="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Successful!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v5

    .line 298
    :catch_2
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    return v1

    .line 303
    :cond_8
    iget-object p1, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/UI;->access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/UI$5;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    return v1

    :cond_9
    :goto_4
    return v1
.end method
