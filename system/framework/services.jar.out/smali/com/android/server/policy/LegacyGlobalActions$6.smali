.class Lcom/android/server/policy/LegacyGlobalActions$6;
.super Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # I
    .param p6, "$anonymous4"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get9(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    .line 257
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set0(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    .line 259
    :cond_1
    return-void

    .line 256
    :cond_2
    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get9(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-set2(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 247
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1, p1}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap0(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method
