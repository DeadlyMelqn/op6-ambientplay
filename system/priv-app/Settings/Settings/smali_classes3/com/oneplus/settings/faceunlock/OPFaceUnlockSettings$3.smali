.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;
.super Ljava/lang/Object;
.source "OPFaceUnlockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->showDisableAospFaceUnlockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->disableAospFaceUnlock(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->-wrap0(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 264
    return-void
.end method
