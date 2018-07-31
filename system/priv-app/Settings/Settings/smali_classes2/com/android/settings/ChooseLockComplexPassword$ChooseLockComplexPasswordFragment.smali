.class public Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;
.super Lcom/android/settings/InstrumentedFragment;
.source "ChooseLockComplexPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockComplexPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockComplexPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$1;,
        Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$2;,
        Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final FRAGMENT_TAG_SAVE_AND_FINISH:Ljava/lang/String; = "save_and_finish_worker"

.field private static final KEY_CURRENT_PASSWORD:Ljava/lang/String; = "current_password"

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field private static final MAX_LOCK_PASSWORD_SIZE:I = 0x10

.field private static final MSG_SHOW_ERROR:I = 0x1

.field static final RESULT_FINISHED:I = 0x1


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mConfirmButton:Landroid/widget/TextView;

.field private mConformStep:I

.field private mCurrentPassword:Ljava/lang/String;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasChallenge:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHideDrawer:Z

.field private mIsAlphaMode:Z

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field public mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

.field private mRequestedQuality:I

.field private mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

.field private mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .prologue
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .prologue
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .prologue
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .prologue
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;
    .param p1, "-value"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .prologue
    iput-object p1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 173
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLength:I

    .line 174
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMaxLength:I

    .line 175
    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLetters:I

    .line 176
    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinUpperCase:I

    .line 177
    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLowerCase:I

    .line 178
    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinSymbols:I

    .line 179
    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNumeric:I

    .line 180
    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNonLetter:I

    .line 183
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    .line 185
    sget-object v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 201
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHideDrawer:Z

    .line 203
    new-instance v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$1;-><init>(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 215
    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mConformStep:I

    .line 217
    new-instance v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$2;-><init>(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .line 265
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 690
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 693
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 695
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 805
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 806
    const-string/jumbo v0, "ChooseLockComplexPassword"

    const-string/jumbo v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void

    .line 812
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->setNextEnabled(Z)V

    .line 814
    new-instance v0, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    .line 815
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    .line 818
    const-string/jumbo v3, "save_and_finish_worker"

    .line 817
    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 822
    const-string/jumbo v1, "extra_require_password"

    const/4 v3, 0x1

    .line 821
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 823
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChallenge:J

    .line 824
    iget-object v6, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    iget v9, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 823
    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 825
    return-void
.end method

.method private updateUi()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 739
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 741
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    if-ne v3, v4, :cond_3

    if-lez v1, :cond_3

    .line 742
    if-lt v1, v6, :cond_0

    .line 743
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 745
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    if-ne v3, v4, :cond_1

    if-lez v1, :cond_1

    iget v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mConformStep:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 767
    if-lt v1, v6, :cond_1

    .line 768
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 770
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 748
    .restart local v0    # "error":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 749
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$4;-><init>(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 762
    .end local v0    # "error":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    iget v3, v3, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    iget v3, v3, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->numericHint:I

    goto :goto_2

    .line 773
    .restart local v0    # "error":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 774
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$5;-><init>(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLength:I

    if-ge v12, v13, :cond_1

    .line 513
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_0

    .line 514
    const v12, 0x7f0f0797

    .line 513
    :goto_0
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 515
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLength:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 513
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 515
    :cond_0
    const v12, 0x7f0f0798

    goto :goto_0

    .line 523
    :cond_1
    const/4 v5, 0x0

    .line 524
    .local v5, "letters":I
    const/4 v8, 0x0

    .line 525
    .local v8, "numbers":I
    const/4 v6, 0x0

    .line 526
    .local v6, "lowercase":I
    const/4 v10, 0x0

    .line 527
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 528
    .local v11, "uppercase":I
    const/4 v7, 0x0

    .line 529
    .local v7, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_7

    .line 530
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 532
    .local v3, "c":C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_2

    const/16 v12, 0x7f

    if-le v3, v12, :cond_3

    .line 533
    :cond_2
    const v12, 0x7f0f079e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 535
    :cond_3
    const/16 v12, 0x30

    if-lt v3, v12, :cond_4

    const/16 v12, 0x39

    if-gt v3, v12, :cond_4

    .line 536
    add-int/lit8 v8, v8, 0x1

    .line 537
    add-int/lit8 v7, v7, 0x1

    .line 529
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 538
    :cond_4
    const/16 v12, 0x41

    if-lt v3, v12, :cond_5

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_5

    .line 539
    add-int/lit8 v5, v5, 0x1

    .line 540
    add-int/lit8 v11, v11, 0x1

    .line 538
    goto :goto_2

    .line 541
    :cond_5
    const/16 v12, 0x61

    if-lt v3, v12, :cond_6

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_6

    .line 542
    add-int/lit8 v5, v5, 0x1

    .line 543
    add-int/lit8 v6, v6, 0x1

    .line 541
    goto :goto_2

    .line 545
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 546
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 549
    .end local v3    # "c":C
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x20000

    if-eq v13, v12, :cond_8

    .line 550
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x30000

    if-ne v13, v12, :cond_b

    .line 551
    :cond_8
    if-gtz v5, :cond_9

    if-lez v10, :cond_a

    .line 554
    :cond_9
    const v12, 0x7f0f079c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 557
    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence(Ljava/lang/String;)I

    move-result v9

    .line 558
    .local v9, "sequence":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x30000

    if-ne v13, v12, :cond_16

    .line 559
    const/4 v12, 0x3

    if-le v9, v12, :cond_16

    .line 560
    const v12, 0x7f0f07a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 562
    .end local v9    # "sequence":I
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x60000

    if-ne v13, v12, :cond_11

    .line 563
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLetters:I

    if-ge v5, v12, :cond_c

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 565
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLetters:I

    const v14, 0x7f130005

    .line 564
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 566
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 564
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 567
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNumeric:I

    if-ge v8, v12, :cond_d

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 569
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNumeric:I

    const v14, 0x7f130008

    .line 568
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 570
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 568
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 571
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v6, v12, :cond_e

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 573
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLowerCase:I

    const v14, 0x7f130006

    .line 572
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 574
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 572
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 575
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_f

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 577
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinUpperCase:I

    const v14, 0x7f130007

    .line 576
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 578
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 576
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 579
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_10

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 581
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinSymbols:I

    const v14, 0x7f130009

    .line 580
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 582
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 580
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 583
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v7, v12, :cond_16

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 585
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNonLetter:I

    const v14, 0x7f13000a

    .line 584
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 586
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 584
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 590
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    .line 589
    const/high16 v13, 0x40000

    if-ne v13, v12, :cond_13

    const/4 v1, 0x1

    .line 592
    .local v1, "alphabetic":Z
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    .line 591
    const/high16 v13, 0x50000

    if-ne v13, v12, :cond_14

    const/4 v2, 0x1

    .line 593
    .local v2, "alphanumeric":Z
    :goto_4
    if-nez v1, :cond_12

    if-eqz v2, :cond_15

    :cond_12
    if-nez v5, :cond_15

    .line 594
    const v12, 0x7f0f079f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 589
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "alphabetic":Z
    goto :goto_3

    .line 591
    :cond_14
    const/4 v2, 0x0

    .restart local v2    # "alphanumeric":Z
    goto :goto_4

    .line 596
    :cond_15
    if-eqz v2, :cond_16

    if-nez v8, :cond_16

    .line 597
    const v12, 0x7f0f07a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 600
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 601
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_17

    const v12, 0x7f0f07a2

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 602
    :cond_17
    const v12, 0x7f0f079d

    goto :goto_5

    .line 605
    :cond_18
    const/4 v12, 0x0

    return-object v12
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 791
    sget-object v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 793
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateUi()V

    .line 794
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 798
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 440
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    iget v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 609
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    if-eqz v3, :cond_0

    return-void

    .line 612
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChosenPassword:Ljava/lang/String;

    .line 614
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    return-void

    .line 617
    :cond_1
    const/4 v0, 0x0

    .line 618
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    if-ne v3, v4, :cond_4

    .line 619
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "errorMsg":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 621
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 624
    sget-object v3, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)V

    .line 626
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mNextButton:Landroid/widget/Button;

    const v4, 0x7f0f07a4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 627
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->reset(Z)V

    .line 628
    iput v5, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mConformStep:I

    .line 649
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 650
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-direct {p0, v0, v3}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)V

    .line 652
    :cond_3
    return-void

    .line 631
    .local v0, "errorMsg":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    if-ne v3, v4, :cond_2

    .line 632
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 633
    invoke-direct {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 636
    :cond_5
    new-instance v1, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 637
    .local v1, "spannableString":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->reset(Z)V

    .line 639
    iget-object v3, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "tmp":Ljava/lang/CharSequence;
    if-eqz v2, :cond_6

    .line 644
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 646
    :cond_6
    sget-object v3, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 476
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 477
    packed-switch p1, :pswitch_data_0

    .line 488
    :goto_0
    return-void

    .line 479
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 484
    :cond_0
    const-string/jumbo v0, "password"

    .line 483
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 3
    .param p1, "wasSecureBefore"    # Z
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 831
    if-nez p1, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 833
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 834
    const-string/jumbo v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 835
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 838
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 839
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 663
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 687
    :goto_0
    return-void

    .line 665
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->handleNext()V

    goto :goto_0

    .line 669
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 673
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 673
    if-eqz v0, :cond_1

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->deleteLastChar()V

    goto :goto_0

    .line 681
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->handleNext()V

    goto :goto_0

    .line 663
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00f8 -> :sswitch_1
        0x7f0a00f9 -> :sswitch_0
        0x7f0a01e6 -> :sswitch_3
        0x7f0a0207 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 269
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 272
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/ChooseLockComplexPassword;

    if-nez v1, :cond_0

    .line 273
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Fragment contained in wrong activity"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 277
    const-string/jumbo v1, "lockscreen.password_type"

    .line 278
    iget v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    .line 277
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 278
    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 279
    iget v5, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 278
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v4

    .line 277
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    .line 282
    const-string/jumbo v1, "lockscreen.password_min"

    iget v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 281
    const/4 v4, 0x4

    .line 280
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 283
    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v4

    .line 280
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLength:I

    .line 284
    const-string/jumbo v1, "lockscreen.password_max"

    iget v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMaxLength:I

    .line 285
    const-string/jumbo v1, "lockscreen.password_min_letters"

    .line 286
    iget v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLetters:I

    .line 285
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 286
    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 287
    iget v5, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 286
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v4

    .line 285
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLetters:I

    .line 288
    const-string/jumbo v1, "lockscreen.password_min_uppercase"

    .line 289
    iget v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinUpperCase:I

    .line 288
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 289
    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 290
    iget v5, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 289
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v4

    .line 288
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinUpperCase:I

    .line 291
    const-string/jumbo v1, "lockscreen.password_min_lowercase"

    .line 292
    iget v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLowerCase:I

    .line 291
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 292
    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 293
    iget v5, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 292
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v4

    .line 291
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinLowerCase:I

    .line 294
    const-string/jumbo v1, "lockscreen.password_min_numeric"

    .line 295
    iget v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNumeric:I

    .line 294
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 295
    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 296
    iget v5, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 295
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v4

    .line 294
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNumeric:I

    .line 297
    const-string/jumbo v1, "lockscreen.password_min_symbols"

    .line 298
    iget v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinSymbols:I

    .line 297
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 298
    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 299
    iget v5, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 298
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v4

    .line 297
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinSymbols:I

    .line 300
    const-string/jumbo v1, "lockscreen.password_min_nonletter"

    .line 301
    iget v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNonLetter:I

    .line 300
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 301
    iget-object v4, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 302
    iget v5, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 301
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v4

    .line 300
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordMinNonLetter:I

    .line 304
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, ":settings:hide_drawer"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHideDrawer:Z

    .line 308
    const-string/jumbo v1, "for_cred_req_boot"

    .line 307
    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    new-instance v0, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;)V

    .line 310
    .local v0, "w":Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 311
    const-string/jumbo v4, "extra_require_password"

    .line 310
    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 313
    .local v2, "required":Z
    const-string/jumbo v1, "password"

    .line 312
    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "current":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;->setBlocking(Z)V

    .line 315
    invoke-virtual {v0, p0}, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    .line 316
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 317
    const-wide/16 v4, 0x0

    iget v8, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mRequestedQuality:I

    iget v9, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    move-object v7, v6

    .line 316
    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 319
    .end local v0    # "w":Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;
    .end local v2    # "required":Z
    .end local v6    # "current":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 325
    const v0, 0x7f0400d9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 699
    if-eqz p2, :cond_0

    .line 700
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->handleNext()V

    .line 703
    const/4 v0, 0x1

    return v0

    .line 701
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 705
    return v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    .line 462
    :cond_0
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 463
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 445
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 446
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    .line 453
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 467
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 468
    const-string/jumbo v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string/jumbo v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string/jumbo v0, "current_password"

    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 802
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    const/4 v11, 0x1

    .line 330
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 332
    const v7, 0x7f0a00f8

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 333
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v7, 0x7f0a00f9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 335
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 338
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 340
    .local v0, "activity":Landroid/app/Activity;
    const v7, 0x7f0a01f9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .line 341
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v8, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    invoke-virtual {v7, v8}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setCallBack(Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;)V

    .line 343
    const v7, 0x7f0a0207

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    .line 344
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    const v7, 0x7f0a01e6

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mConfirmButton:Landroid/widget/TextView;

    .line 346
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    new-instance v8, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;

    invoke-direct {v8, p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;-><init>(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V

    invoke-virtual {v7, v8}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setTextEmptyListener(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;)V

    .line 372
    const v7, 0x7f0a00f4

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 400
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "confirm_credentials"

    .line 399
    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 401
    .local v1, "confirmCredentials":Z
    const-string/jumbo v7, "password"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 403
    const-string/jumbo v7, "has_challenge"

    const/4 v8, 0x0

    .line 402
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHasChallenge:Z

    .line 404
    const-string/jumbo v7, "challenge"

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChallenge:J

    .line 405
    if-nez p2, :cond_2

    .line 406
    sget-object v7, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)V

    .line 407
    if-eqz v1, :cond_0

    .line 408
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 409
    const v8, 0x7f0f075c

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 410
    iget v9, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUserId:I

    .line 408
    const/16 v10, 0x3a

    invoke-virtual {v7, v10, v8, v11, v9}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    .line 429
    :cond_0
    :goto_0
    instance-of v7, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v7, :cond_1

    move-object v4, v0

    .line 430
    check-cast v4, Lcom/android/settings/SettingsActivity;

    .line 431
    .local v4, "sa":Lcom/android/settings/SettingsActivity;
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_5

    const v2, 0x7f0f0aae

    .line 433
    .local v2, "id":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 434
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-virtual {v4, v6}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    .end local v2    # "id":I
    .end local v4    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 414
    :cond_2
    const-string/jumbo v7, "first_pin"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 415
    const-string/jumbo v7, "ui_stage"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, "state":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 417
    invoke-static {v5}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 418
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)V

    .line 421
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 422
    const-string/jumbo v7, "current_password"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 426
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 427
    const-string/jumbo v8, "save_and_finish_worker"

    .line 426
    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    iput-object v7, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockComplexPassword$SaveAndFinishWorker;

    goto :goto_0

    .line 432
    .end local v5    # "state":Ljava/lang/String;
    .restart local v4    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_5
    const v2, 0x7f0f0ab0

    .restart local v2    # "id":I
    goto :goto_1
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 656
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 660
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 496
    .local v0, "previousStage":Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 497
    invoke-direct {p0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateUi()V

    .line 501
    if-eq v0, p1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 504
    :cond_0
    return-void
.end method
