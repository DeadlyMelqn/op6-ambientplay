.class Lcom/ice/box/fragments/OP_HBM$3;
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

    .line 104
    iput-object p1, p0, Lcom/ice/box/fragments/OP_HBM$3;->this$0:Lcom/ice/box/fragments/OP_HBM;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 107
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 108
    iget-object p0, p0, Lcom/ice/box/fragments/OP_HBM$3;->this$0:Lcom/ice/box/fragments/OP_HBM;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->access$000(Lcom/ice/box/fragments/OP_HBM;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "hbm_bootstart"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "ICEDEBUG"

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hbm_bootstart value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
