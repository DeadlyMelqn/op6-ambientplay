.class Lcom/ice/box/fragments/OP_Misc$4;
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

.field final synthetic val$curret_value_bool_final:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/OP_Misc;Ljava/lang/Boolean;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ice/box/fragments/OP_Misc$4;->this$0:Lcom/ice/box/fragments/OP_Misc;

    iput-object p2, p0, Lcom/ice/box/fragments/OP_Misc$4;->val$curret_value_bool_final:Ljava/lang/Boolean;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$4;->val$curret_value_bool_final:Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const p2, 0x7f10006e

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "echo 0 > /system/priv-app/RiCE/cust_flag_clock"

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$4;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->access$000(Lcom/ice/box/fragments/OP_Misc;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$4;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->access$000(Lcom/ice/box/fragments/OP_Misc;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/OP_Misc$4;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Misc;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "echo 3 > /system/priv-app/RiCE/cust_flag_clock"

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$4;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->access$000(Lcom/ice/box/fragments/OP_Misc;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    :catch_1
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Misc$4;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/fragments/OP_Misc;->access$000(Lcom/ice/box/fragments/OP_Misc;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/OP_Misc$4;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Misc;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
