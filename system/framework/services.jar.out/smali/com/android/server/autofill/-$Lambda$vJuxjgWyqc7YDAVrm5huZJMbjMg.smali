.class final synthetic Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->lambda$-com_android_server_autofill_AutofillManagerService_6601(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;->$m$0(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
