.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;,
        Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;,
        Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;
    }
.end annotation


# static fields
.field private static final DELETED_MESSAGE:I = 0x2

.field private static final DELETED_MESSAGE_DELAYED:I = 0x64

.field private static final DELETED_MESSAGE_FAILED:I = 0x3

.field private static final DELETING_MESSAGE:I = 0x1

.field public static final FINGERPRINT_PARCELABLE:Ljava/lang/String; = "fingerprint_parcelable"

.field private static final KEY_OPFINGER_DELETE:Ljava/lang/String; = "opfingerprint_delete"

.field private static final KEY_OPFINGER_EDIT:Ljava/lang/String; = "key_opfinger_edit"

.field private static final KEY_OPFINGER_RENAME:Ljava/lang/String; = "opfingerprint_rename"

.field private static final MSG_REFRESH_FINGERPRINT_TEMPLATES:I = 0x5

.field private static final SHOW_DELETE_DIALOG_MESSAGE:I = 0x7

.field private static final SHOW_RENAME_DIALOG_MESSAGE:I = 0x4

.field private static final SHOW_WARNING_DIALOG:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OPFingerPrintEditFragments"


# instance fields
.field private isDeleteDialogShow:Z

.field private isRenameDialogShow:Z

.field private isWarnDialogShow:Z

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeltePreference:Landroid/support/v7/preference/Preference;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mHandler:Landroid/os/Handler;

.field private mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

.field private mProgressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private mRenamePreference:Landroid/support/v7/preference/Preference;

.field private mUserId:I

.field private mWarnDialog:Landroid/app/AlertDialog;

.field private renameData:Ljava/lang/String;

.field private renameEdit:Lcom/oneplus/lib/widget/OPEditText;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mProgressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/lib/widget/OPEditText;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
    .param p1, "-value"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;ILjava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    .line 250
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 56
    return-void
.end method

.method private deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mUserId:I

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 248
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v0, "key_opfinger_edit"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    .line 209
    const-string/jumbo v0, "opfingerprint_rename"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenamePreference:Landroid/support/v7/preference/Preference;

    .line 210
    const-string/jumbo v0, "opfingerprint_delete"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeltePreference:Landroid/support/v7/preference/Preference;

    .line 213
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->setFingerprintName(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mUserId:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    .line 244
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x270f

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 361
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string/jumbo v0, "renamedialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isRenameDialogShow:Z

    .line 157
    const-string/jumbo v0, "deletedialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isDeleteDialogShow:Z

    .line 158
    const-string/jumbo v0, "warndialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isWarnDialogShow:Z

    .line 159
    const-string/jumbo v0, "renamedata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameData:Ljava/lang/String;

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mUserId:I

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_parcelable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 167
    if-eqz p1, :cond_3

    .line 168
    const-string/jumbo v0, "fingerprint_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    .line 175
    :cond_1
    :goto_0
    new-instance v0, Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mProgressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "fingerprint"

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 178
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->addPreferencesFromResource(I)V

    .line 179
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->initViews()V

    .line 180
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isRenameDialogShow:Z

    if-eqz v0, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showRenameDialog()V

    .line 187
    :cond_2
    :goto_1
    return-void

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 182
    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isWarnDialogShow:Z

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_1

    .line 184
    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isDeleteDialogShow:Z

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 365
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 366
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 234
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "opfingerprint_rename"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 274
    :cond_1
    const-string/jumbo v1, "opfingerprint_delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 228
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 195
    const-string/jumbo v0, "renamedialog"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string/jumbo v0, "renamedata"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 199
    const-string/jumbo v0, "warndialog"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 202
    const-string/jumbo v0, "deletedialog"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    :cond_2
    const-string/jumbo v0, "fingerprint_name"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 331
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 332
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 331
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    const v1, 0x7f0f071f

    .line 331
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 334
    const v1, 0x7f0f037a

    .line 331
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 336
    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 335
    const v2, 0x7f0f06c0

    .line 331
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 347
    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$7;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$7;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    .line 346
    const v2, 0x7f0f06bf

    .line 331
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 354
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 355
    return-void
.end method

.method public showRenameDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 370
    const v2, 0x7f0400eb

    .line 369
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "renameView":Landroid/view/View;
    const v1, 0x7f0a0224

    .line 371
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/OPEditText;

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    .line 373
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEditText;->requestFocus()Z

    .line 375
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$8;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$8;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 396
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 396
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    const v2, 0x7f0f0ee1

    .line 396
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 400
    const/4 v2, 0x1

    .line 396
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 401
    const v2, 0x7f0f06c0

    .line 396
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 403
    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$9;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$9;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    .line 402
    const v3, 0x7f0f0235

    .line 396
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    .line 412
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 413
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 414
    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    .line 413
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    return-void
.end method

.method public showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 304
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    const v1, 0x7f0f0737

    .line 304
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 307
    const v1, 0x7f0f0738

    .line 304
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 309
    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$4;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$4;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 308
    const v2, 0x7f0f06c0

    .line 304
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 320
    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    .line 319
    const v2, 0x7f0f06bf

    .line 304
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroid/app/AlertDialog;

    .line 327
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 328
    return-void
.end method
