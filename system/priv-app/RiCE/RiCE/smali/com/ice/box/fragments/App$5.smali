.class Lcom/ice/box/fragments/App$5;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/App;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/App;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/App;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/ice/box/fragments/App$5;->this$0:Lcom/ice/box/fragments/App;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const-string p1, "renovate.fingerprint.unlock"

    .line 168
    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->returnSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/fragments/App$5;->this$0:Lcom/ice/box/fragments/App;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "renovate.fingerprint.unlock"

    invoke-static {v0, v1, p1}, Lcom/ice/box/helpers/RootUtils;->setProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lcom/ice/box/fragments/App$5;->this$0:Lcom/ice/box/fragments/App;

    iget-object p1, p1, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 175
    :catch_0
    iget-object p0, p0, Lcom/ice/box/fragments/App$5;->this$0:Lcom/ice/box/fragments/App;

    iget-object p0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    const-string p1, "Sorry..that didn\'t work..is Renovate ROM?"

    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
