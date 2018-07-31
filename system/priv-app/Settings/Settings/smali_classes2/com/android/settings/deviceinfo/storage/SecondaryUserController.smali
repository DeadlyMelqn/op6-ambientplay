.class public Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
.super Lcom/android/settings/core/PreferenceController;
.source "SecondaryUserController.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;
    }
.end annotation


# static fields
.field private static final PREFERENCE_KEY_BASE:Ljava/lang/String; = "pref_user_"

.field private static final SIZE_NOT_SET:I = -0x1

.field private static final TARGET_PREFERENCE_GROUP_KEY:Ljava/lang/String; = "pref_secondary_users"

.field private static final USER_PROFILE_INSERTION_LOCATION:I = 0x6


# instance fields
.field private mSize:J

.field private mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTotalSizeBytes:J

.field private mUser:Landroid/content/pm/UserInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUserIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 98
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    .line 100
    return-void
.end method

.method public static getSecondaryUserControllers(Landroid/content/Context;Lcom/android/settings/applications/UserManagerWrapper;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Lcom/android/settings/applications/UserManagerWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/applications/UserManagerWrapper;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/PreferenceController;>;"
    invoke-interface {p1}, Lcom/android/settings/applications/UserManagerWrapper;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 65
    .local v5, "primaryUser":Landroid/content/pm/UserInfo;
    const/4 v0, 0x0

    .line 66
    .local v0, "addedUser":Z
    invoke-interface {p1}, Lcom/android/settings/applications/UserManagerWrapper;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 67
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 68
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 69
    .local v3, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v5, v3}, Lcom/android/settings/Utils;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    :cond_1
    new-instance v7, Lcom/android/settings/deviceinfo/storage/UserProfileController;

    .line 76
    const/4 v8, 0x6

    .line 75
    invoke-direct {v7, p0, v3, p1, v8}, Lcom/android/settings/deviceinfo/storage/UserProfileController;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Lcom/android/settings/applications/UserManagerWrapper;I)V

    .line 74
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_2
    new-instance v7, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v0, 0x1

    goto :goto_1

    .line 84
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    if-nez v0, :cond_4

    .line 85
    new-instance v7, Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;

    invoke-direct {v7, p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_4
    return-object v1
.end method

.method private maybeSetIcon()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 108
    const-string/jumbo v1, "pref_secondary_users"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 109
    .local v0, "group":Landroid/support/v7/preference/PreferenceGroup;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pref_user_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 111
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 115
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 117
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->maybeSetIcon()V

    .line 119
    .end local v0    # "group":Landroid/support/v7/preference/PreferenceGroup;
    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUser()Landroid/content/pm/UserInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public handleResult(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "stats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->getUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 160
    .local v1, "userId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 161
    .local v0, "result":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    if-eqz v0, :cond_0

    .line 162
    iget-object v2, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setSize(J)V

    .line 164
    :cond_0
    return-void
.end method

.method public handleUserIcons(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "fetchedIcons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->maybeSetIcon()V

    .line 170
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public setSize(J)V
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    .line 145
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 148
    :cond_0
    return-void
.end method

.method public setTotalSize(J)V
    .locals 1
    .param p1, "totalSizeBytes"    # J

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    .line 156
    return-void
.end method
