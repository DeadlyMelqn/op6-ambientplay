.class Lcom/android/settings/vpn2/AppManagementFragment$1;
.super Ljava/lang/Object;
.source "AppManagementFragment.java"

# interfaces
.implements Lcom/android/settings/vpn2/AppDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/AppManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/AppManagementFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/AppManagementFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/vpn2/AppManagementFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment$1;->this$0:Lcom/android/settings/vpn2/AppManagementFragment;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onForget()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment$1;->this$0:Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-static {v0}, Lcom/android/settings/vpn2/AppManagementFragment;->-wrap0(Lcom/android/settings/vpn2/AppManagementFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment$1;->this$0:Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-static {v0, v1, v1}, Lcom/android/settings/vpn2/AppManagementFragment;->-wrap1(Lcom/android/settings/vpn2/AppManagementFragment;ZZ)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment$1;->this$0:Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/AppManagementFragment;->finish()V

    .line 95
    return-void
.end method