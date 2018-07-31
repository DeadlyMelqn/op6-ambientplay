.class Lcom/ice/box/fragments/OP_Misc$1;
.super Ljava/lang/Object;
.source "OP_Misc.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/OP_Misc;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/OP_Misc;

.field final synthetic val$bool:Z


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/OP_Misc;Z)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ice/box/fragments/OP_Misc$1;->this$0:Lcom/ice/box/fragments/OP_Misc;

    iput-boolean p2, p0, Lcom/ice/box/fragments/OP_Misc$1;->val$bool:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 43
    iget-boolean p1, p0, Lcom/ice/box/fragments/OP_Misc$1;->val$bool:Z

    const/4 p2, 0x1

    const v0, 0x7f10006e

    if-eqz p1, :cond_0

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$1;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_alternative_brightness"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Successful!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$1;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->access$000(Lcom/ice/box/fragments/OP_Misc;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$1;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->access$000(Lcom/ice/box/fragments/OP_Misc;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/OP_Misc$1;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Misc;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$1;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "tweaks_alternative_brightness"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Successful!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$1;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->access$000(Lcom/ice/box/fragments/OP_Misc;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$1;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->access$000(Lcom/ice/box/fragments/OP_Misc;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/OP_Misc$1;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Misc;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :goto_0
    return p2
.end method
