.class Lcom/ice/box/fragments/OP_Misc$2;
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

    .line 69
    iput-object p1, p0, Lcom/ice/box/fragments/OP_Misc$2;->this$0:Lcom/ice/box/fragments/OP_Misc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const-string p0, "am start -n com.oneplus.security/com.oneplus.security.autorun.AutorunMainActivity"

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method
