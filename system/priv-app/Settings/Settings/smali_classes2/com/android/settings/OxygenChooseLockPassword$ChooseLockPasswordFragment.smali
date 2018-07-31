.class public Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings/InstrumentedFragment;
.source "OxygenChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OxygenChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;,
        Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field private static final CONTAIN_INVALID_CHARACTERS:I = 0x1

.field private static final CONTAIN_NON_DIGITS:I = 0x8

.field private static final CONTAIN_SEQUENTIAL_DIGITS:I = 0x10

.field private static final FRAGMENT_TAG_SAVE_AND_FINISH:Ljava/lang/String; = "save_and_finish_worker"

.field private static final KEY_CURRENT_PASSWORD:Ljava/lang/String; = "current_password"

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field private static final MIN_LETTER_IN_PASSWORD:I = 0x0

.field private static final MIN_LOWER_LETTERS_IN_PASSWORD:I = 0x2

.field private static final MIN_NON_LETTER_IN_PASSWORD:I = 0x5

.field private static final MIN_NUMBER_IN_PASSWORD:I = 0x4

.field private static final MIN_SYMBOLS_IN_PASSWORD:I = 0x3

.field private static final MIN_UPPER_LETTERS_IN_PASSWORD:I = 0x1

.field private static final NOT_ENOUGH_DIGITS:I = 0x200

.field private static final NOT_ENOUGH_LETTER:I = 0x40

.field private static final NOT_ENOUGH_LOWER_CASE:I = 0x100

.field private static final NOT_ENOUGH_NON_LETTER:I = 0x800

.field private static final NOT_ENOUGH_SYMBOLS:I = 0x400

.field private static final NOT_ENOUGH_UPPER_CASE:I = 0x80

.field private static final NO_ERROR:I = 0x0

.field private static final RECENTLY_USED:I = 0x20

.field static final RESULT_FINISHED:I = 0x1

.field private static final TOO_LONG:I = 0x4

.field private static final TOO_SHORT:I = 0x2


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHasChallenge:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHideDrawer:Z

.field private mIsAlphaMode:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLengthToFulfillAllPolicies:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

.field private mPasswordRequirements:[I

.field private mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

.field private mRequestedQuality:I

.field private mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

.field private mTextChangedHandler:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

.field private mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 173
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 174
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 175
    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 176
    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 177
    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 178
    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 179
    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 180
    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 181
    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    .line 183
    iput-boolean v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 191
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 193
    sget-object v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 261
    return-void
.end method

.method private convertErrorCodeToMessages(I)[Ljava/lang/String;
    .locals 7
    .param p1, "errorCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_0

    .line 737
    const v1, 0x7f0f079e

    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_0
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_1

    .line 740
    const v1, 0x7f0f079c

    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_1
    and-int/lit16 v1, p1, 0x80

    if-lez v1, :cond_2

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 744
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 743
    new-array v3, v6, [Ljava/lang/Object;

    .line 745
    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 744
    const v4, 0x7f130007

    .line 743
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_2
    and-int/lit16 v1, p1, 0x100

    if-lez v1, :cond_3

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 749
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 748
    new-array v3, v6, [Ljava/lang/Object;

    .line 750
    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 749
    const v4, 0x7f130006

    .line 748
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_3
    and-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_4

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 754
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 753
    new-array v3, v6, [Ljava/lang/Object;

    .line 755
    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 754
    const v4, 0x7f130005

    .line 753
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_4
    and-int/lit16 v1, p1, 0x200

    if-lez v1, :cond_5

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 759
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 758
    new-array v3, v6, [Ljava/lang/Object;

    .line 760
    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 759
    const v4, 0x7f130008

    .line 758
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_5
    and-int/lit16 v1, p1, 0x400

    if-lez v1, :cond_6

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 764
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 763
    new-array v3, v6, [Ljava/lang/Object;

    .line 765
    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 764
    const v4, 0x7f130009

    .line 763
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_6
    and-int/lit16 v1, p1, 0x800

    if-lez v1, :cond_7

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 769
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 768
    new-array v3, v6, [Ljava/lang/Object;

    .line 770
    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 769
    const v4, 0x7f13000a

    .line 768
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_8

    .line 773
    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_c

    .line 774
    const v1, 0x7f0f0797

    .line 773
    :goto_0
    new-array v2, v6, [Ljava/lang/Object;

    .line 775
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 773
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_8
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_9

    .line 778
    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_d

    .line 779
    const v1, 0x7f0f079a

    .line 778
    :goto_1
    new-array v2, v6, [Ljava/lang/Object;

    .line 780
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 778
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_9
    and-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_a

    .line 783
    const v1, 0x7f0f07a3

    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_a
    and-int/lit8 v1, p1, 0x20

    if-lez v1, :cond_b

    .line 786
    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_e

    const v1, 0x7f0f07a2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_b
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 775
    :cond_c
    const v1, 0x7f0f0798

    goto :goto_0

    .line 780
    :cond_d
    const v1, 0x7f0f079b

    goto :goto_1

    .line 787
    :cond_e
    const v1, 0x7f0f079d

    goto :goto_2
.end method

.method private getMinLengthToFulfillAllPolicies()I
    .locals 5

    .prologue
    .line 793
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 794
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v3, v4

    .line 793
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 795
    .local v0, "minLengthForLetters":I
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 796
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    add-int/2addr v3, v4

    .line 795
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 797
    .local v1, "minLengthForNonLetters":I
    add-int v2, v0, v1

    return v2
.end method

.method static synthetic lambda$-com_android_settings_OxygenChooseLockPassword$ChooseLockPasswordFragment_21199(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private processPasswordRequirements(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 511
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    .line 512
    .local v0, "dpmPasswordQuality":I
    const-string/jumbo v1, "lockscreen.password_type"

    .line 513
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 512
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 516
    const-string/jumbo v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 515
    const/4 v2, 0x4

    .line 514
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 517
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    .line 514
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 518
    const-string/jumbo v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 519
    const-string/jumbo v1, "lockscreen.password_min_letters"

    .line 520
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 519
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 520
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 521
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 520
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    .line 519
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 522
    const-string/jumbo v1, "lockscreen.password_min_uppercase"

    .line 523
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 522
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 523
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 524
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 523
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    .line 522
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 525
    const-string/jumbo v1, "lockscreen.password_min_lowercase"

    .line 526
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 525
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 526
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 527
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 526
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    .line 525
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 528
    const-string/jumbo v1, "lockscreen.password_min_numeric"

    .line 529
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 528
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 529
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 530
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 529
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    .line 528
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 531
    const-string/jumbo v1, "lockscreen.password_min_symbols"

    .line 532
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 531
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 532
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 533
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 532
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    .line 531
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 534
    const-string/jumbo v1, "lockscreen.password_min_nonletter"

    .line 535
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 534
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 535
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 536
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 535
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    .line 534
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 539
    sparse-switch v0, :sswitch_data_0

    .line 557
    iput v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 558
    iput v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 559
    iput v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 560
    iput v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 561
    iput v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 562
    iput v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 564
    :cond_0
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getMinLengthToFulfillAllPolicies()I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    .line 565
    return-void

    .line 541
    :sswitch_1
    iget v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-nez v1, :cond_0

    .line 542
    iput v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    goto :goto_0

    .line 546
    :sswitch_2
    iget v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-nez v1, :cond_1

    .line 547
    iput v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 549
    :cond_1
    iget v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-nez v1, :cond_0

    .line 550
    iput v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    goto :goto_0

    .line 539
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private setHeaderText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 828
    if-eqz v0, :cond_0

    .line 830
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    return-void
.end method

.method private setupPasswordRequirementsView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v0, "passwordRequirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v1, "requirementDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-lez v2, :cond_0

    .line 391
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 393
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 392
    new-array v4, v7, [Ljava/lang/Object;

    .line 394
    iget v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 393
    const v5, 0x7f130007

    .line 392
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_0
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-lez v2, :cond_1

    .line 397
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 399
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 398
    new-array v4, v7, [Ljava/lang/Object;

    .line 400
    iget v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 399
    const v5, 0x7f130006

    .line 398
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_1
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-lez v2, :cond_2

    .line 403
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 404
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 406
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 405
    new-array v4, v7, [Ljava/lang/Object;

    .line 407
    iget v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 406
    const v5, 0x7f130005

    .line 405
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_2
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-lez v2, :cond_3

    .line 411
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 413
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 412
    new-array v4, v7, [Ljava/lang/Object;

    .line 414
    iget v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 413
    const v5, 0x7f130008

    .line 412
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_3
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-lez v2, :cond_4

    .line 417
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 419
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 418
    new-array v4, v7, [Ljava/lang/Object;

    .line 420
    iget v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 419
    const v5, 0x7f130009

    .line 418
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_4
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-lez v2, :cond_5

    .line 423
    iget v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    iget v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_5

    .line 424
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 426
    iget v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 425
    new-array v4, v7, [Ljava/lang/Object;

    .line 428
    iget v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 426
    const v5, 0x7f13000a

    .line 425
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;->$INST$1:Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    .line 434
    const v2, 0x7f0a00f7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 433
    iput-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    .line 435
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 436
    new-instance v2, Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-direct {v2}, Lcom/android/settings/password/PasswordRequirementAdapter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

    .line 437
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 438
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 853
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 854
    const-string/jumbo v0, "ChooseLockPassword"

    const-string/jumbo v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 859
    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 861
    new-instance v0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v0, v3}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;)V

    iput-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    .line 862
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    .line 864
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    .line 865
    const-string/jumbo v3, "save_and_finish_worker"

    .line 864
    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 866
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 868
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 869
    const-string/jumbo v1, "extra_require_password"

    const/4 v3, 0x1

    .line 868
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 870
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 871
    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v9, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 870
    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 872
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 804
    iget-object v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-nez v7, :cond_0

    const/4 v0, 0x1

    .line 805
    .local v0, "canInput":Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 806
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 807
    .local v2, "length":I
    iget-object v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_2

    .line 808
    iget-object v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 809
    invoke-direct {p0, v4}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)I

    move-result v1

    .line 810
    .local v1, "errorCode":I
    invoke-direct {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->convertErrorCodeToMessages(I)[Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, "messages":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-virtual {v7, v3}, Lcom/android/settings/password/PasswordRequirementAdapter;->setRequirements([Ljava/lang/String;)V

    .line 814
    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 822
    .end local v1    # "errorCode":I
    .end local v3    # "messages":[Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v5}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 823
    iget-object v5, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 824
    return-void

    .line 804
    .end local v0    # "canInput":Z
    .end local v2    # "length":I
    .end local v4    # "password":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "canInput":Z
    goto :goto_0

    .restart local v1    # "errorCode":I
    .restart local v2    # "length":I
    .restart local v3    # "messages":[Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 814
    goto :goto_1

    .line 817
    .end local v1    # "errorCode":I
    .end local v3    # "messages":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 819
    iget-boolean v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 818
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setHeaderText(Ljava/lang/String;)V

    .line 820
    if-eqz v0, :cond_3

    if-lez v2, :cond_3

    move v6, v5

    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 819
    :cond_4
    iget-object v7, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)I
    .locals 14
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/high16 v13, 0x30000

    .line 574
    const/4 v1, 0x0

    .line 576
    .local v1, "errorCode":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    iget v12, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v11, v12, :cond_2

    .line 577
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v12, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    if-le v11, v12, :cond_0

    .line 578
    const/4 v1, 0x2

    .line 598
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 599
    .local v3, "letters":I
    const/4 v6, 0x0

    .line 600
    .local v6, "numbers":I
    const/4 v4, 0x0

    .line 601
    .local v4, "lowercase":I
    const/4 v9, 0x0

    .line 602
    .local v9, "symbols":I
    const/4 v10, 0x0

    .line 603
    .local v10, "uppercase":I
    const/4 v5, 0x0

    .line 604
    .local v5, "nonletter":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_9

    .line 605
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 607
    .local v0, "c":C
    const/16 v11, 0x20

    if-lt v0, v11, :cond_1

    const/16 v11, 0x7f

    if-le v0, v11, :cond_5

    .line 608
    :cond_1
    or-int/lit8 v1, v1, 0x1

    .line 604
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 580
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "letters":I
    .end local v4    # "lowercase":I
    .end local v5    # "nonletter":I
    .end local v6    # "numbers":I
    .end local v9    # "symbols":I
    .end local v10    # "uppercase":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    iget v12, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v11, v12, :cond_3

    .line 581
    const/4 v1, 0x4

    goto :goto_0

    .line 584
    :cond_3
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v11, v13, :cond_4

    .line 586
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence(Ljava/lang/String;)I

    move-result v8

    .line 587
    .local v8, "sequence":I
    const/4 v11, 0x3

    if-le v8, v11, :cond_4

    .line 588
    const/16 v1, 0x10

    .line 592
    .end local v8    # "sequence":I
    :cond_4
    iget-object v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v12, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v11, p1, v12}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 593
    or-int/lit8 v1, v1, 0x20

    goto :goto_0

    .line 611
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    .restart local v3    # "letters":I
    .restart local v4    # "lowercase":I
    .restart local v5    # "nonletter":I
    .restart local v6    # "numbers":I
    .restart local v9    # "symbols":I
    .restart local v10    # "uppercase":I
    :cond_5
    const/16 v11, 0x30

    if-lt v0, v11, :cond_6

    const/16 v11, 0x39

    if-gt v0, v11, :cond_6

    .line 612
    add-int/lit8 v6, v6, 0x1

    .line 613
    add-int/lit8 v5, v5, 0x1

    .line 611
    goto :goto_2

    .line 614
    :cond_6
    const/16 v11, 0x41

    if-lt v0, v11, :cond_7

    const/16 v11, 0x5a

    if-gt v0, v11, :cond_7

    .line 615
    add-int/lit8 v3, v3, 0x1

    .line 616
    add-int/lit8 v10, v10, 0x1

    .line 614
    goto :goto_2

    .line 617
    :cond_7
    const/16 v11, 0x61

    if-lt v0, v11, :cond_8

    const/16 v11, 0x7a

    if-gt v0, v11, :cond_8

    .line 618
    add-int/lit8 v3, v3, 0x1

    .line 619
    add-int/lit8 v4, v4, 0x1

    .line 617
    goto :goto_2

    .line 621
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 622
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 628
    .end local v0    # "c":C
    :cond_9
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v12, 0x20000

    if-eq v11, v12, :cond_a

    .line 629
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v11, v13, :cond_c

    .line 630
    :cond_a
    if-gtz v3, :cond_b

    if-lez v9, :cond_c

    .line 631
    :cond_b
    or-int/lit8 v1, v1, 0x8

    .line 636
    :cond_c
    const/4 v2, 0x0

    :goto_3
    iget-object v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    array-length v11, v11

    if-ge v2, v11, :cond_e

    .line 637
    iget-object v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    aget v7, v11, v2

    .line 638
    .local v7, "passwordRestriction":I
    packed-switch v7, :pswitch_data_0

    .line 636
    :cond_d
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 640
    :pswitch_0
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v3, v11, :cond_d

    .line 641
    or-int/lit8 v1, v1, 0x40

    goto :goto_4

    .line 645
    :pswitch_1
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v10, v11, :cond_d

    .line 646
    or-int/lit16 v1, v1, 0x80

    goto :goto_4

    .line 650
    :pswitch_2
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v4, v11, :cond_d

    .line 651
    or-int/lit16 v1, v1, 0x100

    goto :goto_4

    .line 655
    :pswitch_3
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v9, v11, :cond_d

    .line 656
    or-int/lit16 v1, v1, 0x400

    goto :goto_4

    .line 660
    :pswitch_4
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v6, v11, :cond_d

    .line 661
    or-int/lit16 v1, v1, 0x200

    goto :goto_4

    .line 665
    :pswitch_5
    iget v11, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v5, v11, :cond_d

    .line 666
    or-int/lit16 v1, v1, 0x800

    goto :goto_4

    .line 671
    .end local v7    # "passwordRestriction":I
    :cond_e
    return v1

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 838
    sget-object v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-static {v0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->-wrap0(Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;)V

    .line 842
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 846
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 442
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 490
    iget v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 675
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-eqz v1, :cond_0

    return-void

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    .line 677
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    return-void

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    .line 681
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 683
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 684
    sget-object v1, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 697
    :cond_2
    :goto_0
    return-void

    .line 686
    :cond_3
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_2

    .line 687
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 688
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 690
    :cond_4
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 691
    .local v0, "tmp":Ljava/lang/CharSequence;
    if-eqz v0, :cond_5

    move-object v1, v0

    .line 692
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 694
    :cond_5
    sget-object v1, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 475
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 476
    packed-switch p1, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 478
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 483
    :cond_0
    const-string/jumbo v0, "password"

    .line 482
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 476
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
    .line 876
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 878
    if-nez p1, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 880
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 881
    const-string/jumbo v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 882
    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 885
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 886
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 717
    :goto_0
    return-void

    .line 710
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 714
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x7f0a00f8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 265
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 266
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 268
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/ChooseLockPassword;

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Fragment contained in wrong activity"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 273
    invoke-direct {p0, v10}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->processPasswordRequirements(Landroid/content/Intent;)V

    .line 274
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, ":settings:hide_drawer"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 278
    const-string/jumbo v1, "for_cred_req_boot"

    .line 277
    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    new-instance v0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;)V

    .line 280
    .local v0, "w":Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 281
    const-string/jumbo v4, "extra_require_password"

    .line 280
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 283
    .local v2, "required":Z
    const-string/jumbo v1, "password"

    .line 282
    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "current":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->setBlocking(Z)V

    .line 285
    invoke-virtual {v0, p0}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 287
    const-wide/16 v4, 0x0

    iget v8, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v9, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move-object v7, v6

    .line 286
    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 289
    .end local v0    # "w":Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;
    .end local v2    # "required":Z
    .end local v6    # "current":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;-><init>(Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    .line 290
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    const v0, 0x7f040139

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

    .line 721
    if-eqz p2, :cond_0

    .line 722
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 725
    const/4 v0, 0x1

    return v0

    .line 723
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 727
    return v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, v1}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    .line 461
    :cond_0
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 462
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 448
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 467
    const-string/jumbo v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string/jumbo v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string/jumbo v0, "current_password"

    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 850
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 300
    invoke-super/range {p0 .. p2}, Lcom/android/settings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 302
    const v3, 0x7f0a00f8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v3, 0x7f0a00f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x40000

    if-eq v4, v3, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x50000

    if-ne v4, v3, :cond_3

    .line 307
    :cond_0
    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 311
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setupPasswordRequirementsView(Landroid/view/View;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 314
    const v3, 0x7f0a00f5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 318
    new-instance v3, Lcom/android/internal/widget/TextViewInputDisabler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 321
    .local v8, "activity":Landroid/app/Activity;
    const v3, 0x7f0a00f4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v12

    .line 324
    .local v12, "currentType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_5

    .end local v12    # "currentType":I
    :goto_1
    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 329
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "confirm_credentials"

    const/4 v4, 0x1

    .line 328
    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 330
    .local v11, "confirmCredentials":Z
    const-string/jumbo v3, "password"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 332
    const-string/jumbo v3, "has_challenge"

    const/4 v4, 0x0

    .line 331
    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    .line 333
    const-string/jumbo v3, "challenge"

    const-wide/16 v4, 0x0

    invoke-virtual {v14, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 334
    if-nez p2, :cond_6

    .line 335
    sget-object v3, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 336
    if-eqz v11, :cond_1

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 338
    const v4, 0x7f0f075c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 337
    const/16 v6, 0x3a

    .line 338
    const/16 v18, 0x1

    .line 337
    move/from16 v0, v18

    invoke-virtual {v3, v6, v4, v0, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    .line 365
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 366
    const v4, 0x7f0d0294

    .line 365
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 368
    .local v7, "visibleVerticalSpaceBelowPassword":I
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 368
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 370
    .local v2, "drawable":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    const v3, 0x7f0a00f6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 373
    .local v9, "bottomContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 374
    .local v10, "bottomContainerLp":Landroid/widget/LinearLayout$LayoutParams;
    neg-int v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v10, v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 376
    instance-of v3, v8, Lcom/android/settings/SettingsActivity;

    if-eqz v3, :cond_2

    move-object v15, v8

    .line 377
    check-cast v15, Lcom/android/settings/SettingsActivity;

    .line 378
    .local v15, "sa":Lcom/android/settings/SettingsActivity;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_9

    const v13, 0x7f0f0aae

    .line 380
    .local v13, "id":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 381
    .local v17, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    check-cast p1, Lcom/android/setupwizardlib/GlifLayout;

    .end local p1    # "view":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 384
    .end local v13    # "id":I
    .end local v15    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v17    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 309
    .end local v2    # "drawable":Landroid/graphics/drawable/InsetDrawable;
    .end local v7    # "visibleVerticalSpaceBelowPassword":I
    .end local v8    # "activity":Landroid/app/Activity;
    .end local v9    # "bottomContainer":Landroid/widget/LinearLayout;
    .end local v10    # "bottomContainerLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "confirmCredentials":Z
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x60000

    if-ne v4, v3, :cond_4

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 325
    .restart local v8    # "activity":Landroid/app/Activity;
    .restart local v12    # "currentType":I
    :cond_5
    const/16 v12, 0x12

    goto/16 :goto_1

    .line 343
    .end local v12    # "currentType":I
    .restart local v11    # "confirmCredentials":Z
    .restart local v14    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v3, "first_pin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 344
    const-string/jumbo v3, "ui_stage"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 345
    .local v16, "state":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 346
    invoke-static/range {v16 .. v16}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 350
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 351
    const-string/jumbo v3, "current_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 355
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 356
    const-string/jumbo v4, "save_and_finish_worker"

    .line 355
    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    goto/16 :goto_2

    .line 379
    .end local v16    # "state":Ljava/lang/String;
    .restart local v2    # "drawable":Landroid/graphics/drawable/InsetDrawable;
    .restart local v7    # "visibleVerticalSpaceBelowPassword":I
    .restart local v9    # "bottomContainer":Landroid/widget/LinearLayout;
    .restart local v10    # "bottomContainerLp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v15    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_9
    const v13, 0x7f0f0ab0

    .restart local v13    # "id":I
    goto :goto_3
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 701
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 705
    return-void
.end method

.method protected updateStage(Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 495
    .local v0, "previousStage":Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 496
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 500
    if-eq v0, p1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 503
    :cond_0
    return-void
.end method
