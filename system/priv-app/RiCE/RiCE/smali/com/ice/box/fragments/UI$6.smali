.class Lcom/ice/box/fragments/UI$6;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 342
    iput-object p1, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 345
    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 346
    new-instance v1, Landroid/content/Intent;

    invoke-direct/range {v1 .. v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 347
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 348
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct/range {v4 .. v4}, Ljava/util/ArrayList;-><init>()V

    .line 352
    invoke-interface/range {v1 .. v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface/range {v1 .. v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v1 .. v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 353
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual/range {v3 .. v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_1
    invoke-interface/range {v1 .. v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v1 .. v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v5, 0x80

    .line 359
    :try_start_0
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 364
    :cond_1
    new-instance v1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    invoke-direct {v1, v0}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 365
    invoke-interface/range {v4 .. v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 366
    invoke-interface/range {v4 .. v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 369
    :try_start_1
    invoke-interface/range {v4 .. v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface/range {v4 .. v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v4 .. v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 370
    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v1, v2

    .line 371
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 375
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    iget-object v0, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    iget-object v0, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    const-string v1, "immersive.full="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    iget-object v0, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    .line 383
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    iget-object v0, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    const-string v1, "immersive.full=*"

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    iget-object v0, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    const-string v1, "immersive.full="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/util/HashSet;

    invoke-static/range {v0 .. v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 387
    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object v0

    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setNegativeButtonText(I)V

    .line 390
    iget-object v0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object v0

    const v1, 0x7f100043

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setPositiveButtonText(I)V

    .line 391
    iget-object p0, p0, Lcom/ice/box/fragments/UI$6;->this$0:Lcom/ice/box/fragments/UI;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;

    move-result-object p0

    const v0, 0x7f10009d

    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setDialogTitle(I)V

    return-void
.end method
