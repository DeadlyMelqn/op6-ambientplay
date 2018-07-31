.class Lcom/ice/box/fragments/OP_Misc$3;
.super Ljava/lang/Object;
.source "OP_Misc.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/OP_Misc;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/ice/box/fragments/OP_Misc$3;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 86
    new-instance p1, Landroid/content/Intent;

    invoke-direct/range {p1 .. p1}, Landroid/content/Intent;-><init>()V

    .line 87
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ZenModeSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    iget-object p0, p0, Lcom/ice/box/fragments/OP_Misc$3;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Misc;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method
