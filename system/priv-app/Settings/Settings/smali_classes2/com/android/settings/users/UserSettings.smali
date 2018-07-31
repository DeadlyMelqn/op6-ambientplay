.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserSettings$1;,
        Lcom/android/settings/users/UserSettings$2;,
        Lcom/android/settings/users/UserSettings$3;,
        Lcom/android/settings/users/UserSettings$4;,
        Lcom/android/settings/users/UserSettings$5;,
        Lcom/android/settings/users/UserSettings$SummaryProvider;,
        Lcom/android/settings/users/UserSettings$UserCapabilities;
    }
.end annotation


# static fields
.field private static final ACTION_EDIT_EMERGENCY_INFO:Ljava/lang/String; = "android.settings.EDIT_EMERGENGY_INFO"

.field private static final DIALOG_ADD_USER:I = 0x2

.field private static final DIALOG_CHOOSE_USER_TYPE:I = 0x6

.field private static final DIALOG_CONFIRM_EXIT_GUEST:I = 0x8

.field private static final DIALOG_CONFIRM_REMOVE:I = 0x1

.field private static final DIALOG_NEED_LOCKSCREEN:I = 0x7

.field private static final DIALOG_SETUP_PROFILE:I = 0x4

.field private static final DIALOG_SETUP_USER:I = 0x3

.field private static final DIALOG_USER_CANNOT_MANAGE:I = 0x5

.field private static final DIALOG_USER_PROFILE_EDITOR:I = 0x9

.field private static final KEY_ADD_USER:Ljava/lang/String; = "user_add"

.field private static final KEY_ADD_USER_LONG_MESSAGE_DISPLAYED:Ljava/lang/String; = "key_add_user_long_message_displayed"

.field private static final KEY_EMERGENCY_INFO:Ljava/lang/String; = "emergency_info"

.field private static final KEY_SUMMARY:Ljava/lang/String; = "summary"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_USER_LIST:Ljava/lang/String; = "user_list"

.field private static final KEY_USER_ME:Ljava/lang/String; = "user_me"

.field private static final MENU_REMOVE_USER:I = 0x1

.field private static final MESSAGE_CONFIG_USER:I = 0x3

.field private static final MESSAGE_SETUP_USER:I = 0x2

.field private static final MESSAGE_UPDATE_LIST:I = 0x1

.field private static final REQUEST_CHOOSE_LOCK:I = 0xa

.field private static final SAVE_ADDING_USER:Ljava/lang/String; = "adding_user"

.field private static final SAVE_REMOVING_USER:Ljava/lang/String; = "removing_user"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final STORAGE_SIZE_LIMIT:J = 0xc800000L

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "UserSettings"

.field private static final USER_TYPE_RESTRICTED_PROFILE:I = 0x2

.field private static final USER_TYPE_USER:I = 0x1


# instance fields
.field private mAddUser:Lcom/android/settings/DimmableIconPreference;

.field private mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

.field private mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

.field private mMePreference:Lcom/android/settings/users/UserPreference;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/users/UserSettings;)Lcom/android/settings/DimmableIconPreference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/users/UserSettings;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/users/UserSettings;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createRestrictedProfile()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->emergencyInfoActivityPresent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;
    .param p1, "userType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;
    .param p1, "userType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/users/UserSettings;IZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/users/UserSettings;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1200
    new-instance v0, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$4;-><init>()V

    .line 1199
    sput-object v0, Lcom/android/settings/users/UserSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1209
    new-instance v0, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$5;-><init>()V

    .line 1208
    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 170
    new-instance v0, Lcom/android/settings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings/users/EditUserInfoController;-><init>()V

    .line 169
    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    .line 178
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 104
    return-void
.end method

.method private addUserNow(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    const/4 v2, 0x1

    .line 711
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 713
    if-ne p1, v2, :cond_0

    const v0, 0x7f0f0e70

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    .line 716
    new-instance v0, Lcom/android/settings/users/UserSettings$15;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$15;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$15;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 742
    return-void

    .line 714
    :cond_0
    const v0, 0x7f0f0e71

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createRestrictedProfile()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 463
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->assignDefaultPhoto(Landroid/content/Context;I)V

    .line 464
    return-object v0
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 4

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 469
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->assignDefaultPhoto(Landroid/content/Context;I)V

    .line 472
    :cond_0
    return-object v0
.end method

.method private static emergencyInfoActivityPresent(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 674
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.EDIT_EMERGENGY_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.emergency"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 675
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 676
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    :cond_0
    return v4

    .line 679
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 1047
    .local v0, "circled":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private exitGuest()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    .line 758
    return-void

    .line 760
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    .line 761
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const v4, 0x7f0f0e5a

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 401
    .local v1, "myUserId":I
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    :cond_1
    return-void
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 1034
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 1035
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 1037
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 1038
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 977
    const/16 v0, -0x2710

    invoke-static {v0}, Lcom/android/settings/Utils;->getDefaultUserIconAsBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMaxRealUsers()I
    .locals 6

    .prologue
    .line 942
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 943
    .local v1, "maxUsersAndGuest":I
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 945
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 946
    .local v0, "managedProfiles":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 947
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    sub-int v5, v1, v0

    return v5
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .prologue
    .line 409
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 410
    .local v0, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x0

    .line 1042
    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string/jumbo v1, "minimum_quality"

    .line 416
    const/high16 v2, 0x10000

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 418
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p1, "missingIcons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/settings/users/UserSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$16;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    .line 972
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 955
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$16;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 973
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f0f0e7d

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 373
    return-void

    .line 376
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 395
    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 436
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 450
    return-void

    .line 438
    :pswitch_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 441
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 477
    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 478
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 479
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "guest_user"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 481
    const-class v1, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 482
    const v3, 0x7f0f00a5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 480
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 483
    return-void

    .line 485
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 486
    .local v7, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_2

    .line 487
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 488
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    const-string/jumbo v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 491
    const-class v1, Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 492
    const v3, 0x7f0f0ee0

    const/4 v4, 0x0

    .line 493
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 490
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 508
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 494
    :cond_2
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 496
    invoke-static {p0}, Lcom/android/settings/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_1

    .line 498
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 499
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 501
    const-class v1, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 504
    iget-object v4, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 503
    const/4 v3, -0x1

    .line 505
    const/4 v5, 0x0

    .line 506
    const/4 v6, 0x0

    .line 500
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 455
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 459
    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 511
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 513
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 698
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    const-string/jumbo v1, "UserSettings"

    const-string/jumbo v2, "Cannot remove current user when switching is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void

    .line 703
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "UserSettings"

    const-string/jumbo v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 683
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 684
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    .line 695
    :goto_0
    return-void

    .line 686
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$14;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$14;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 984
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 985
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 987
    :cond_0
    return-void
.end method

.method private switchUserNow(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 746
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateUserList()V
    .locals 25

    .prologue
    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 765
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v23

    .line 766
    .local v23, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 768
    .local v9, "context":Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v24

    .line 769
    .local v24, "voiceCapable":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v13, "missingIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v22, "userPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/users/UserPreference;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/UserInfo;

    .line 774
    .local v18, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 780
    move-object/from16 v0, v18

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .line 809
    .local v2, "pref":Lcom/android/settings/users/UserPreference;
    :goto_1
    if-eqz v2, :cond_1

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 813
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 814
    const v3, 0x7f0f0e57

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 818
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 819
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    .line 823
    :cond_2
    :goto_3
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    .line 826
    move-object/from16 v0, v18

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 782
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_6

    .line 795
    if-nez v24, :cond_5

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v17

    .line 796
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_8

    .line 797
    if-nez v24, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    xor-int/lit8 v16, v3, 0x1

    .line 798
    :goto_5
    new-instance v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v18

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 799
    if-eqz v17, :cond_9

    move-object/from16 v6, p0

    .line 800
    :goto_6
    if-eqz v16, :cond_a

    move-object/from16 v7, p0

    .line 798
    :goto_7
    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 801
    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 804
    const v3, 0x7f0f0e59

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 806
    :cond_4
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 807
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    goto/16 :goto_1

    .line 795
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_5
    const/16 v17, 0x1

    .local v17, "showSettings":Z
    goto :goto_4

    .line 794
    .end local v17    # "showSettings":Z
    :cond_6
    const/16 v17, 0x0

    .restart local v17    # "showSettings":Z
    goto :goto_4

    .line 797
    .end local v17    # "showSettings":Z
    :cond_7
    const/16 v16, 0x0

    .local v16, "showDelete":Z
    goto :goto_5

    .line 796
    .end local v16    # "showDelete":Z
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "showDelete":Z
    goto :goto_5

    .line 799
    .end local v16    # "showDelete":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    .line 800
    :cond_a
    const/4 v7, 0x0

    goto :goto_7

    .line 816
    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_b
    const v3, 0x7f0f0e56

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 820
    :cond_c
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 821
    const v3, 0x7f0f0e53

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 829
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_0

    .line 833
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 838
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    .end local v18    # "user":Landroid/content/pm/UserInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v3, :cond_10

    .line 839
    new-instance v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 840
    const/16 v5, -0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 839
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 841
    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setEnabled(Z)V

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 844
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    if-nez v3, :cond_11

    .line 849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    .line 848
    if-eqz v3, :cond_12

    .line 851
    :cond_11
    new-instance v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v4, :cond_14

    if-eqz v24, :cond_14

    move-object/from16 v6, p0

    .line 851
    :goto_8
    const/4 v4, 0x0

    .line 852
    const/16 v5, -0xb

    .line 854
    const/4 v7, 0x0

    .line 851
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 855
    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    const v3, 0x7f0f00a5

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 857
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-object v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 858
    :goto_9
    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 860
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    .line 864
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_12
    sget-object v3, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 869
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 870
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 873
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    .line 874
    .local v15, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 876
    new-instance v11, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v11, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    .line 877
    .local v11, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    const/4 v3, -0x1

    invoke-virtual {v11, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->setOrder(I)V

    .line 878
    invoke-virtual {v15, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v3, :cond_16

    .line 886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 889
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 893
    .local v10, "groupToAddUsers":Landroid/support/v7/preference/PreferenceGroup;
    :goto_a
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "userPreference$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings/users/UserPreference;

    .line 894
    .local v20, "userPreference":Lcom/android/settings/users/UserPreference;
    const v3, 0x7fffffff

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/settings/users/UserPreference;->setOrder(I)V

    .line 895
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_b

    .line 853
    .end local v10    # "groupToAddUsers":Landroid/support/v7/preference/PreferenceGroup;
    .end local v11    # "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    .end local v15    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    .end local v20    # "userPreference":Lcom/android/settings/users/UserPreference;
    .end local v21    # "userPreference$iterator":Ljava/util/Iterator;
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 859
    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_15
    const/4 v3, 0x0

    goto :goto_9

    .line 891
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    .restart local v11    # "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    .restart local v15    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_16
    move-object v10, v15

    .restart local v10    # "groupToAddUsers":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_a

    .line 899
    .restart local v21    # "userPreference$iterator":Ljava/util/Iterator;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v3, :cond_19

    .line 900
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    .line 899
    if-eqz v3, :cond_19

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v14

    .line 902
    .local v14, "moreUsers":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Lcom/android/settings/DimmableIconPreference;->setOrder(I)V

    .line 903
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v15, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v8

    .line 906
    .local v8, "canSwitchUsers":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1d

    .end local v8    # "canSwitchUsers":Z
    :goto_c
    invoke-virtual {v3, v8}, Lcom/android/settings/DimmableIconPreference;->setEnabled(Z)V

    .line 908
    if-nez v14, :cond_1e

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getMaxRealUsers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0f0e5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/DimmableIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 913
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v3}, Lcom/android/settings/DimmableIconPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-object v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 914
    :goto_e
    invoke-virtual {v4, v3}, Lcom/android/settings/DimmableIconPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 919
    .end local v14    # "moreUsers":Z
    :cond_19
    new-instance v12, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v12, v3}, Lcom/oneplus/settings/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    .line 920
    .local v12, "headerMargin2":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    invoke-virtual {v15, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_1b

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    .line 922
    if-eqz v3, :cond_1b

    .line 924
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 927
    const-string/jumbo v5, "add_users_when_locked"

    const/4 v6, 0x0

    .line 926
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 927
    const/4 v5, 0x1

    .line 926
    if-ne v3, v5, :cond_20

    const/4 v3, 0x1

    :goto_f
    invoke-virtual {v4, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-object v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 929
    :goto_10
    invoke-virtual {v4, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 933
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->emergencyInfoActivityPresent(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v15, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 938
    :cond_1c
    return-void

    .line 906
    .end local v12    # "headerMargin2":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    .restart local v8    # "canSwitchUsers":Z
    .restart local v14    # "moreUsers":Z
    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 911
    .end local v8    # "canSwitchUsers":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/DimmableIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 915
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 926
    .end local v14    # "moreUsers":Z
    .restart local v12    # "headerMargin2":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    :cond_20
    const/4 v3, 0x0

    goto :goto_f

    .line 930
    :cond_21
    const/4 v3, 0x0

    goto :goto_10
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1095
    const v0, 0x7f0f0ec2

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x60

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 422
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 424
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 425
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1052
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/users/UserPreference;

    if-eqz v2, :cond_0

    .line 1053
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v2}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v1

    .line 1054
    .local v1, "userId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1071
    .end local v1    # "userId":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1057
    .restart local v1    # "userId":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1058
    const-string/jumbo v3, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 1057
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1059
    .local v0, "removeDisallowedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_1

    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 1063
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 1067
    .end local v0    # "removeDisallowedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :pswitch_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 1054
    :pswitch_data_0
    .packed-switch 0x7f0a02ff
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 219
    if-eqz p1, :cond_2

    .line 220
    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 223
    :cond_0
    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 229
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Lcom/android/settings/users/UserSettings$UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserSettings$UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    .line 230
    const-string/jumbo v0, "user"

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 231
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_3

    .line 232
    return-void

    .line 235
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 237
    .local v3, "myUserId":I
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 238
    const-string/jumbo v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 239
    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .line 242
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const-string/jumbo v1, "user_me"

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f0f0e59

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 247
    :cond_4
    const-string/jumbo v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DimmableIconPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    .line 248
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings/DimmableIconPreference;->useAdminDisabledSummary(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v0, :cond_5

    .line 254
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    const v1, 0x7f0f0e52

    invoke-virtual {v0, v1}, Lcom/android/settings/DimmableIconPreference;->setTitle(I)V

    .line 257
    :cond_5
    const-string/jumbo v0, "lock_screen_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

    .line 258
    const-string/jumbo v0, "add_users_when_locked"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 259
    const-string/jumbo v0, "emergency_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 261
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v4, v10

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 264
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 265
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 266
    iput-boolean v11, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 270
    return-void

    .line 273
    :cond_6
    const-string/jumbo v0, "phone"

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->tm:Landroid/telephony/TelephonyManager;

    .line 274
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 276
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 23
    .param p1, "dialogId"    # I

    .prologue
    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 530
    .local v17, "context":Landroid/content/Context;
    if-nez v17, :cond_0

    const/4 v5, 0x0

    return-object v5

    .line 531
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 669
    const/4 v5, 0x0

    return-object v5

    .line 534
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 535
    new-instance v8, Lcom/android/settings/users/UserSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 534
    invoke-static {v5, v7, v8}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v18

    .line 541
    .local v18, "dlg":Landroid/app/Dialog;
    return-object v18

    .line 544
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 545
    const v7, 0x7f0f0e6a

    .line 544
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 546
    const v7, 0x104000a

    const/4 v8, 0x0

    .line 544
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 549
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 550
    const/4 v7, 0x0

    .line 549
    invoke-virtual {v5, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 552
    .local v21, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "key_add_user_long_message_displayed"

    const/4 v7, 0x0

    .line 551
    move-object/from16 v0, v21

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 553
    .local v19, "longMessageDisplayed":Z
    if-eqz v19, :cond_1

    .line 554
    const v20, 0x7f0f0e64

    .line 556
    .local v20, "messageResId":I
    :goto_0
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 557
    const/16 v22, 0x1

    .line 558
    .local v22, "userType":I
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    const v7, 0x7f0f0e62

    .line 558
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 562
    new-instance v7, Lcom/android/settings/users/UserSettings$8;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    .line 561
    const v8, 0x104000a

    .line 558
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 571
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 558
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 573
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 555
    .end local v18    # "dlg":Landroid/app/Dialog;
    .end local v20    # "messageResId":I
    .end local v22    # "userType":I
    :cond_1
    const v20, 0x7f0f0e63

    .restart local v20    # "messageResId":I
    goto :goto_0

    .line 557
    :cond_2
    const/16 v22, 0x2

    .restart local v22    # "userType":I
    goto :goto_1

    .line 576
    .end local v19    # "longMessageDisplayed":Z
    .end local v20    # "messageResId":I
    .end local v21    # "preferences":Landroid/content/SharedPreferences;
    .end local v22    # "userType":I
    :pswitch_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 577
    const v7, 0x7f0f0e65

    .line 576
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 578
    const v7, 0x7f0f0e66

    .line 576
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 580
    new-instance v7, Lcom/android/settings/users/UserSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 579
    const v8, 0x7f0f0e68

    .line 576
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 585
    const v7, 0x7f0f0e69

    const/4 v8, 0x0

    .line 576
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 587
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 590
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    const v7, 0x7f0f0e67

    .line 590
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 593
    new-instance v7, Lcom/android/settings/users/UserSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 592
    const v8, 0x104000a

    .line 590
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 598
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 590
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 600
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 603
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v6, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 605
    .local v15, "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "title"

    const v7, 0x7f0f0e60

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v5, "summary"

    const v7, 0x7f0f0e5e

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 608
    .local v14, "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "title"

    const v7, 0x7f0f0e61

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string/jumbo v5, "summary"

    const v7, 0x7f0f0e5f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 613
    .local v16, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 615
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-string/jumbo v7, "summary"

    const/4 v9, 0x1

    aput-object v7, v8, v9

    .line 616
    const v7, 0x7f0a0073

    const v9, 0x7f0a0103

    filled-new-array {v7, v9}, [I

    move-result-object v9

    .line 614
    const v7, 0x7f04021d

    .line 613
    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 617
    .local v4, "adapter":Landroid/widget/SimpleAdapter;
    const v5, 0x7f0f0e5c

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 619
    new-instance v5, Lcom/android/settings/users/UserSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 618
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 627
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 630
    .end local v4    # "adapter":Landroid/widget/SimpleAdapter;
    .end local v6    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    const v7, 0x7f0f0e54

    .line 630
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 633
    new-instance v7, Lcom/android/settings/users/UserSettings$12;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/users/UserSettings$12;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 632
    const v8, 0x7f0f0e55

    .line 630
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 639
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 630
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 641
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 644
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    const v7, 0x7f0f0e7e

    .line 644
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 646
    const v7, 0x7f0f0e7f

    .line 644
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 648
    new-instance v7, Lcom/android/settings/users/UserSettings$13;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/users/UserSettings$13;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 647
    const v8, 0x7f0f0e80

    .line 644
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 654
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 644
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 656
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 659
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    .line 661
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/settings/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 662
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/settings/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    .line 665
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    .line 663
    const v11, 0x7f0f06fe

    move-object/from16 v8, p0

    move-object/from16 v12, p0

    .line 659
    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v18

    .line 666
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 341
    const/4 v3, 0x0

    .line 342
    .local v3, "pos":I
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 343
    .local v5, "um":Landroid/os/UserManager;
    const-string/jumbo v6, "no_remove_user"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v0, v6, 0x1

    .line 344
    .local v0, "allowRemoveUser":Z
    invoke-virtual {v5}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v1

    .line 345
    .local v1, "canSwitchUsers":Z
    iget-object v6, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v6, v6, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 346
    iget-object v6, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "nickname":Ljava/lang/String;
    const/4 v3, 0x1

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    const v8, 0x7f0f0e6c

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 347
    invoke-interface {p1, v9, v10, v9, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 349
    .local v4, "removeThisUser":Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 351
    .end local v2    # "nickname":Ljava/lang/String;
    .end local v4    # "removeThisUser":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 352
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 313
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 315
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 323
    :cond_1
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 522
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 524
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 525
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1075
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1076
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 1077
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1079
    return-void

    .line 1075
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 357
    .local v0, "itemId":I
    if-ne v0, v2, :cond_0

    .line 358
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 359
    return v2

    .line 361
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 308
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 309
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1101
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1083
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-ne p1, v3, :cond_1

    move-object v0, p2

    .line 1084
    check-cast v0, Ljava/lang/Boolean;

    .line 1085
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "add_users_when_locked"

    .line 1086
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    .line 1085
    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1087
    return v2

    .line 1090
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 991
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    if-ne p1, v4, :cond_3

    .line 992
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v4, :cond_0

    .line 993
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 994
    return v8

    .line 997
    :cond_0
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 998
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {p0, v4, v9}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    .line 1030
    .end local p1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    :goto_0
    return v9

    .line 1000
    .restart local p1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1002
    :cond_3
    instance-of v4, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v4, :cond_4

    .line 1003
    check-cast p1, Lcom/android/settings/users/UserPreference;

    .end local p1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v3

    .line 1005
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1006
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1007
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 1008
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    iget v7, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v8, 0x2

    .line 1007
    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1010
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "userId":I
    .restart local p1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    if-ne p1, v4, :cond_7

    .line 1014
    invoke-static {}, Lcom/android/settings/users/UserSettings;->getAvailableInternalMemorySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1015
    .local v1, "size":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xc800000

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 1016
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f03a2

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1018
    :cond_5
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_6

    .line 1019
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1021
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    goto :goto_0

    .line 1025
    .end local v1    # "size":Ljava/lang/Long;
    :cond_7
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_1

    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.EDIT_EMERGENGY_INFO"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 296
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 299
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 300
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 303
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 329
    const-string/jumbo v0, "adding_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    const-string/jumbo v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 331
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserInfoController;->startingActivityForResult()V

    .line 336
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 337
    return-void
.end method
