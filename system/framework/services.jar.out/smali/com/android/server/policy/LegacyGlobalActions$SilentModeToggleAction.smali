.class Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;
.super Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 1022
    const v1, 0x10802ff

    .line 1023
    const v2, 0x10802fe

    .line 1024
    const v3, 0x1040248

    .line 1025
    const v4, 0x1040247

    .line 1026
    const v5, 0x1040246

    move-object v0, p0

    .line 1022
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1027
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1031
    if-eqz p1, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get3(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1036
    :goto_0
    return-void

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get3(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1045
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x1

    return v0
.end method
