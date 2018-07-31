.class Lcom/ice/box/fragments/OP_HBM$2;
.super Ljava/lang/Object;
.source "OP_HBM.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/OP_HBM;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/OP_HBM;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/OP_HBM;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ice/box/fragments/OP_HBM$2;->this$0:Lcom/ice/box/fragments/OP_HBM;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 83
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 84
    iget-object p2, p0, Lcom/ice/box/fragments/OP_HBM$2;->this$0:Lcom/ice/box/fragments/OP_HBM;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/fragments/OP_HBM;->access$000(Lcom/ice/box/fragments/OP_HBM;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "hbm_autostart"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ice/box/fragments/OP_HBM$2;->this$0:Lcom/ice/box/fragments/OP_HBM;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ice/box/services/LightSensorService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "enabled"

    .line 86
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "sticky"

    .line 88
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object p0, p0, Lcom/ice/box/fragments/OP_HBM$2;->this$0:Lcom/ice/box/fragments/OP_HBM;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const-string v1, "sticky"

    const/4 v2, 0x2

    .line 91
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    iget-object p0, p0, Lcom/ice/box/fragments/OP_HBM$2;->this$0:Lcom/ice/box/fragments/OP_HBM;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    const-string p0, "ICEDEBUG"

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hbm_autostart value: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
