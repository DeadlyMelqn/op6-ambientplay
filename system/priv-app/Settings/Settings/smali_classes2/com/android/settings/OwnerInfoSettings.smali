.class public Lcom/android/settings/OwnerInfoSettings;
.super Landroid/app/DialogFragment;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG_OWNER_INFO:Ljava/lang/String; = "ownerInfo"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "info":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v2, 0x7f0a028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "parent"    # Landroid/app/Fragment;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {v0}, Lcom/android/settings/OwnerInfoSettings;-><init>()V

    .line 91
    .local v0, "dialog":Lcom/android/settings/OwnerInfoSettings;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/OwnerInfoSettings;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ownerInfo"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/OwnerInfoSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "info":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SecuritySettings$SecuritySubSettings;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateOwnerInfo()V

    .line 85
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    .line 47
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040137

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->initView()V

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    const v1, 0x7f0f06f6

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    const v1, 0x7f0f06c3

    .line 54
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    const v1, 0x7f0f06bf

    .line 54
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
