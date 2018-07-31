.class public abstract Landroid/accounts/IAccountManager$Stub;
.super Landroid/os/Binder;
.source "IAccountManager.java"

# interfaces
.implements Landroid/accounts/IAccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountManager"

.field static final TRANSACTION_accountAuthenticated:I = 0x1d

.field static final TRANSACTION_addAccount:I = 0x18

.field static final TRANSACTION_addAccountAsUser:I = 0x19

.field static final TRANSACTION_addAccountExplicitly:I = 0xb

.field static final TRANSACTION_addAccountExplicitlyWithVisibility:I = 0x2b

.field static final TRANSACTION_addSharedAccountsFromParentUser:I = 0x21

.field static final TRANSACTION_clearPassword:I = 0x14

.field static final TRANSACTION_confirmCredentialsAsUser:I = 0x1c

.field static final TRANSACTION_copyAccountToUser:I = 0xf

.field static final TRANSACTION_createRequestAccountAccessIntentSenderAsUser:I = 0x32

.field static final TRANSACTION_editProperties:I = 0x1b

.field static final TRANSACTION_finishSessionAsUser:I = 0x27

.field static final TRANSACTION_getAccountByTypeAndFeatures:I = 0x9

.field static final TRANSACTION_getAccountVisibility:I = 0x2d

.field static final TRANSACTION_getAccounts:I = 0x4

.field static final TRANSACTION_getAccountsAndVisibilityForPackage:I = 0x2e

.field static final TRANSACTION_getAccountsAsUser:I = 0x7

.field static final TRANSACTION_getAccountsByFeatures:I = 0xa

.field static final TRANSACTION_getAccountsByTypeForPackage:I = 0x6

.field static final TRANSACTION_getAccountsForPackage:I = 0x5

.field static final TRANSACTION_getAuthToken:I = 0x17

.field static final TRANSACTION_getAuthTokenLabel:I = 0x1e

.field static final TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final TRANSACTION_getPackagesAndVisibilityForAccount:I = 0x2a

.field static final TRANSACTION_getPassword:I = 0x1

.field static final TRANSACTION_getPreviousName:I = 0x23

.field static final TRANSACTION_getSharedAccountsAsUser:I = 0x1f

.field static final TRANSACTION_getUserData:I = 0x2

.field static final TRANSACTION_hasAccountAccess:I = 0x31

.field static final TRANSACTION_hasFeatures:I = 0x8

.field static final TRANSACTION_invalidateAuthToken:I = 0x10

.field static final TRANSACTION_isCredentialsUpdateSuggested:I = 0x29

.field static final TRANSACTION_onAccountAccessed:I = 0x33

.field static final TRANSACTION_peekAuthToken:I = 0x11

.field static final TRANSACTION_registerAccountListener:I = 0x2f

.field static final TRANSACTION_removeAccount:I = 0xc

.field static final TRANSACTION_removeAccountAsUser:I = 0xd

.field static final TRANSACTION_removeAccountExplicitly:I = 0xe

.field static final TRANSACTION_removeSharedAccountAsUser:I = 0x20

.field static final TRANSACTION_renameAccount:I = 0x22

.field static final TRANSACTION_renameSharedAccountAsUser:I = 0x24

.field static final TRANSACTION_setAccountVisibility:I = 0x2c

.field static final TRANSACTION_setAuthToken:I = 0x12

.field static final TRANSACTION_setPassword:I = 0x13

.field static final TRANSACTION_setUserData:I = 0x15

.field static final TRANSACTION_someUserHasAccount:I = 0x28

.field static final TRANSACTION_startAddAccountSession:I = 0x25

.field static final TRANSACTION_startUpdateCredentialsSession:I = 0x26

.field static final TRANSACTION_unregisterAccountListener:I = 0x30

.field static final TRANSACTION_updateAppPermission:I = 0x16

.field static final TRANSACTION_updateCredentials:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.accounts.IAccountManager"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.accounts.IAccountManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accounts/IAccountManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/accounts/IAccountManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accounts/IAccountManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 56
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 959
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    return v4

    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 59
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v50

    .line 60
    .local v50, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    const/4 v4, 0x1

    return v4

    .line 57
    .end local v50    # "_result":Ljava/lang/String;
    :cond_0
    const/16 v38, 0x0

    .local v38, "_arg0":Landroid/accounts/Account;
    goto :goto_0

    .line 66
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_2
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 75
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13}, Landroid/accounts/IAccountManager$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 77
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    const/4 v4, 0x1

    return v4

    .line 72
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :cond_1
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_1

    .line 83
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_3
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 86
    .local v37, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v54

    .line 87
    .local v54, "_result":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 89
    const/4 v4, 0x1

    return v4

    .line 93
    .end local v37    # "_arg0":I
    .end local v54    # "_result":[Landroid/accounts/AuthenticatorDescription;
    :sswitch_4
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 97
    .local v39, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 98
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v13}, Landroid/accounts/IAccountManager$Stub;->getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v53

    .line 99
    .local v53, "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 101
    const/4 v4, 0x1

    return v4

    .line 105
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v39    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":[Landroid/accounts/Account;
    :sswitch_5
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 109
    .restart local v39    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 111
    .local v41, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2, v7}, Landroid/accounts/IAccountManager$Stub;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v53

    .line 113
    .restart local v53    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 115
    const/4 v4, 0x1

    return v4

    .line 119
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v39    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":I
    .end local v53    # "_result":[Landroid/accounts/Account;
    :sswitch_6
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 123
    .restart local v39    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 125
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 126
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v13, v7}, Landroid/accounts/IAccountManager$Stub;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v53

    .line 127
    .restart local v53    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 129
    const/4 v4, 0x1

    return v4

    .line 133
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v39    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":[Landroid/accounts/Account;
    :sswitch_7
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 137
    .restart local v39    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 139
    .restart local v41    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 140
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2, v7}, Landroid/accounts/IAccountManager$Stub;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v53

    .line 141
    .restart local v53    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 143
    const/4 v4, 0x1

    return v4

    .line 147
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v39    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":I
    .end local v53    # "_result":[Landroid/accounts/Account;
    :sswitch_8
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 151
    .local v5, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 158
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v44

    .line 160
    .local v44, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 161
    .local v46, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v46

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/accounts/IAccountManager$Stub;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v4, 0x1

    return v4

    .line 155
    .end local v44    # "_arg2":[Ljava/lang/String;
    .end local v46    # "_arg3":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/accounts/Account;
    goto :goto_2

    .line 167
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :sswitch_9
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 171
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 173
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v44

    .line 175
    .restart local v44    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 176
    .restart local v46    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v46

    invoke-virtual {v0, v5, v13, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v4, 0x1

    return v4

    .line 182
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v44    # "_arg2":[Ljava/lang/String;
    .end local v46    # "_arg3":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 186
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 188
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v44

    .line 190
    .restart local v44    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 191
    .restart local v46    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v46

    invoke-virtual {v0, v5, v13, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v4, 0x1

    return v4

    .line 197
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v44    # "_arg2":[Ljava/lang/String;
    .end local v46    # "_arg3":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 206
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 208
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 209
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/Bundle;

    .line 214
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v13, v2}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v52

    .line 215
    .local v52, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v52, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v4, 0x1

    return v4

    .line 203
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v52    # "_result":Z
    :cond_3
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_3

    .line 212
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v13    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v28, 0x0

    .local v28, "_arg2":Landroid/os/Bundle;
    goto :goto_4

    .line 216
    .end local v28    # "_arg2":Landroid/os/Bundle;
    .restart local v52    # "_result":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 221
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v52    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 225
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 226
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 232
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v34, 0x1

    .line 233
    .local v34, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v5, v6, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    const/4 v4, 0x1

    return v4

    .line 229
    .end local v34    # "_arg2":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_6

    .line 232
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :cond_7
    const/16 v34, 0x0

    .restart local v34    # "_arg2":Z
    goto :goto_7

    .line 239
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v34    # "_arg2":Z
    :sswitch_d
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 243
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 244
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 250
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v34, 0x1

    .line 252
    .restart local v34    # "_arg2":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 253
    .local v45, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v45

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v4, 0x1

    return v4

    .line 247
    .end local v34    # "_arg2":Z
    .end local v45    # "_arg3":I
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_8

    .line 250
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :cond_9
    const/16 v34, 0x0

    .restart local v34    # "_arg2":Z
    goto :goto_9

    .line 259
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v34    # "_arg2":Z
    :sswitch_e
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 262
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 267
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v52

    .line 268
    .restart local v52    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v52, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v4, 0x1

    return v4

    .line 265
    .end local v52    # "_result":Z
    :cond_a
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_a

    .line 269
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v52    # "_result":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 274
    .end local v52    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 278
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 279
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 285
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 287
    .local v42, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 288
    .restart local v45    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v45

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/accounts/IAccountManager$Stub;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v4, 0x1

    return v4

    .line 282
    .end local v42    # "_arg2":I
    .end local v45    # "_arg3":I
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_c

    .line 294
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :sswitch_10
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 298
    .restart local v39    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 299
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v13}, Landroid/accounts/IAccountManager$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    const/4 v4, 0x1

    return v4

    .line 305
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v39    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 308
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 314
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 315
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13}, Landroid/accounts/IAccountManager$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 316
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    const/4 v4, 0x1

    return v4

    .line 311
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :cond_d
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_d

    .line 322
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_12
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 325
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 331
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 333
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 334
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13, v7}, Landroid/accounts/IAccountManager$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v4, 0x1

    return v4

    .line 328
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    :cond_e
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_e

    .line 340
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_13
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 343
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 349
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 350
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13}, Landroid/accounts/IAccountManager$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v4, 0x1

    return v4

    .line 346
    .end local v13    # "_arg1":Ljava/lang/String;
    :cond_f
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_f

    .line 356
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_14
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 359
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 364
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->clearPassword(Landroid/accounts/Account;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v4, 0x1

    return v4

    .line 362
    :cond_10
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_10

    .line 370
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_15
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 373
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 379
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 381
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 382
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13, v7}, Landroid/accounts/IAccountManager$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v4, 0x1

    return v4

    .line 376
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    :cond_11
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_11

    .line 388
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_16
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 391
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 397
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 399
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 401
    .restart local v42    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    const/4 v8, 0x1

    .line 402
    .local v8, "_arg3":Z
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v42

    invoke-virtual {v0, v1, v13, v2, v8}, Landroid/accounts/IAccountManager$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v4, 0x1

    return v4

    .line 394
    .end local v8    # "_arg3":Z
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":I
    :cond_12
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_12

    .line 401
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v13    # "_arg1":Ljava/lang/String;
    .restart local v42    # "_arg2":I
    :cond_13
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_13

    .line 408
    .end local v8    # "_arg3":Z
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":I
    :sswitch_17
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 412
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 413
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 419
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 421
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/4 v8, 0x1

    .line 423
    .restart local v8    # "_arg3":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/4 v9, 0x1

    .line 425
    .local v9, "_arg4":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 426
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    :goto_17
    move-object/from16 v4, p0

    .line 431
    invoke-virtual/range {v4 .. v10}, Landroid/accounts/IAccountManager$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v4, 0x1

    return v4

    .line 416
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Z
    :cond_14
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_14

    .line 421
    .end local v6    # "_arg1":Landroid/accounts/Account;
    .restart local v7    # "_arg2":Ljava/lang/String;
    :cond_15
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_15

    .line 423
    :cond_16
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Z
    goto :goto_16

    .line 429
    :cond_17
    const/4 v10, 0x0

    .local v10, "_arg5":Landroid/os/Bundle;
    goto :goto_17

    .line 437
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Landroid/os/Bundle;
    :sswitch_18
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 441
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 443
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 445
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 447
    .local v15, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    const/4 v9, 0x1

    .line 449
    .restart local v9    # "_arg4":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 450
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    :goto_19
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v14, v7

    move/from16 v16, v9

    move-object/from16 v17, v10

    .line 455
    invoke-virtual/range {v11 .. v17}, Landroid/accounts/IAccountManager$Stub;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v4, 0x1

    return v4

    .line 447
    .end local v9    # "_arg4":Z
    :cond_18
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Z
    goto :goto_18

    .line 453
    :cond_19
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/os/Bundle;
    goto :goto_19

    .line 461
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Landroid/os/Bundle;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg3":[Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 465
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 467
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 469
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 471
    .restart local v15    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v9, 0x1

    .line 473
    .restart local v9    # "_arg4":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 474
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 480
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg6":I
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v14, v7

    move/from16 v16, v9

    move-object/from16 v17, v10

    .line 481
    invoke-virtual/range {v11 .. v18}, Landroid/accounts/IAccountManager$Stub;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v4, 0x1

    return v4

    .line 471
    .end local v9    # "_arg4":Z
    .end local v18    # "_arg6":I
    :cond_1a
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Z
    goto :goto_1a

    .line 477
    :cond_1b
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/os/Bundle;
    goto :goto_1b

    .line 487
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Landroid/os/Bundle;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg3":[Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 491
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 492
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 498
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 500
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v8, 0x1

    .line 502
    .restart local v8    # "_arg3":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 503
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Bundle;

    :goto_1e
    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    .line 508
    invoke-virtual/range {v19 .. v24}, Landroid/accounts/IAccountManager$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    const/4 v4, 0x1

    return v4

    .line 495
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    :cond_1c
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_1c

    .line 500
    .end local v6    # "_arg1":Landroid/accounts/Account;
    .restart local v7    # "_arg2":Ljava/lang/String;
    :cond_1d
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_1d

    .line 506
    :cond_1e
    const/16 v24, 0x0

    .local v24, "_arg4":Landroid/os/Bundle;
    goto :goto_1e

    .line 514
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v24    # "_arg4":Landroid/os/Bundle;
    :sswitch_1b
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 518
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 520
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v34, 0x1

    .line 521
    .restart local v34    # "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v5, v13, v1}, Landroid/accounts/IAccountManager$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v4, 0x1

    return v4

    .line 520
    .end local v34    # "_arg2":Z
    :cond_1f
    const/16 v34, 0x0

    .restart local v34    # "_arg2":Z
    goto :goto_1f

    .line 527
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":Z
    :sswitch_1c
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 531
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 532
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 538
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    .line 539
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/Bundle;

    .line 545
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    const/4 v8, 0x1

    .line 547
    .restart local v8    # "_arg3":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "_arg4":I
    move-object/from16 v25, p0

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v29, v8

    .line 548
    invoke-virtual/range {v25 .. v30}, Landroid/accounts/IAccountManager$Stub;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    const/4 v4, 0x1

    return v4

    .line 535
    .end local v8    # "_arg3":Z
    .end local v30    # "_arg4":I
    :cond_20
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_20

    .line 542
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :cond_21
    const/16 v28, 0x0

    .restart local v28    # "_arg2":Landroid/os/Bundle;
    goto :goto_21

    .line 545
    .end local v28    # "_arg2":Landroid/os/Bundle;
    :cond_22
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_22

    .line 554
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v8    # "_arg3":Z
    :sswitch_1d
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 557
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 562
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->accountAuthenticated(Landroid/accounts/Account;)Z

    move-result v52

    .line 563
    .restart local v52    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v52, :cond_24

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v4, 0x1

    return v4

    .line 560
    .end local v52    # "_result":Z
    :cond_23
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_23

    .line 564
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v52    # "_result":Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_24

    .line 569
    .end local v52    # "_result":Z
    :sswitch_1e
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 573
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 575
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 576
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13, v7}, Landroid/accounts/IAccountManager$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    const/4 v4, 0x1

    return v4

    .line 582
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 585
    .restart local v37    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v53

    .line 586
    .restart local v53    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 588
    const/4 v4, 0x1

    return v4

    .line 592
    .end local v37    # "_arg0":I
    .end local v53    # "_result":[Landroid/accounts/Account;
    :sswitch_20
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    .line 595
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 601
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 602
    .restart local v41    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result v52

    .line 603
    .restart local v52    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    if-eqz v52, :cond_26

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v4, 0x1

    return v4

    .line 598
    .end local v41    # "_arg1":I
    .end local v52    # "_result":Z
    :cond_25
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_25

    .line 604
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v41    # "_arg1":I
    .restart local v52    # "_result":Z
    :cond_26
    const/4 v4, 0x0

    goto :goto_26

    .line 609
    .end local v41    # "_arg1":I
    .end local v52    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 613
    .restart local v37    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 615
    .restart local v41    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 616
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2, v7}, Landroid/accounts/IAccountManager$Stub;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v4, 0x1

    return v4

    .line 622
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v37    # "_arg0":I
    .end local v41    # "_arg1":I
    :sswitch_22
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 626
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 627
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 633
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 634
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/accounts/IAccountManager$Stub;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    const/4 v4, 0x1

    return v4

    .line 630
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_27
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_27

    .line 640
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :sswitch_23
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 643
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 648
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v50

    .line 649
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 651
    const/4 v4, 0x1

    return v4

    .line 646
    .end local v50    # "_result":Ljava/lang/String;
    :cond_28
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_28

    .line 655
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_24
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 658
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 664
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 666
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 667
    .restart local v42    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v42

    invoke-virtual {v0, v1, v13, v2}, Landroid/accounts/IAccountManager$Stub;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v52

    .line 668
    .restart local v52    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v52, :cond_2a

    const/4 v4, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v4, 0x1

    return v4

    .line 661
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":I
    .end local v52    # "_result":Z
    :cond_29
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_29

    .line 669
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v13    # "_arg1":Ljava/lang/String;
    .restart local v42    # "_arg2":I
    .restart local v52    # "_result":Z
    :cond_2a
    const/4 v4, 0x0

    goto :goto_2a

    .line 674
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":I
    .end local v52    # "_result":Z
    :sswitch_25
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 678
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 680
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 682
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 684
    .restart local v15    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v9, 0x1

    .line 686
    .restart local v9    # "_arg4":Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 687
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    :goto_2c
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v14, v7

    move/from16 v16, v9

    move-object/from16 v17, v10

    .line 692
    invoke-virtual/range {v11 .. v17}, Landroid/accounts/IAccountManager$Stub;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    const/4 v4, 0x1

    return v4

    .line 684
    .end local v9    # "_arg4":Z
    :cond_2b
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Z
    goto :goto_2b

    .line 690
    :cond_2c
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/os/Bundle;
    goto :goto_2c

    .line 698
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Landroid/os/Bundle;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg3":[Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 702
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 703
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 709
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 711
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v8, 0x1

    .line 713
    .restart local v8    # "_arg3":Z
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 714
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Bundle;

    :goto_2f
    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    .line 719
    invoke-virtual/range {v19 .. v24}, Landroid/accounts/IAccountManager$Stub;->startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    const/4 v4, 0x1

    return v4

    .line 706
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    :cond_2d
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_2d

    .line 711
    .end local v6    # "_arg1":Landroid/accounts/Account;
    .restart local v7    # "_arg2":Ljava/lang/String;
    :cond_2e
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_2e

    .line 717
    :cond_2f
    const/16 v24, 0x0

    .restart local v24    # "_arg4":Landroid/os/Bundle;
    goto :goto_2f

    .line 725
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v24    # "_arg4":Landroid/os/Bundle;
    :sswitch_27
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 729
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    .line 730
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/Bundle;

    .line 736
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    const/16 v34, 0x1

    .line 738
    .restart local v34    # "_arg2":Z
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 739
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/Bundle;

    .line 745
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .restart local v30    # "_arg4":I
    move-object/from16 v31, p0

    move-object/from16 v32, v5

    move/from16 v36, v30

    .line 746
    invoke-virtual/range {v31 .. v36}, Landroid/accounts/IAccountManager$Stub;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    const/4 v4, 0x1

    return v4

    .line 733
    .end local v30    # "_arg4":I
    .end local v34    # "_arg2":Z
    :cond_30
    const/16 v33, 0x0

    .local v33, "_arg1":Landroid/os/Bundle;
    goto :goto_30

    .line 736
    .end local v33    # "_arg1":Landroid/os/Bundle;
    :cond_31
    const/16 v34, 0x0

    .restart local v34    # "_arg2":Z
    goto :goto_31

    .line 742
    :cond_32
    const/16 v35, 0x0

    .local v35, "_arg3":Landroid/os/Bundle;
    goto :goto_32

    .line 752
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v34    # "_arg2":Z
    .end local v35    # "_arg3":Landroid/os/Bundle;
    :sswitch_28
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    .line 755
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 760
    :goto_33
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v52

    .line 761
    .restart local v52    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    if-eqz v52, :cond_34

    const/4 v4, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v4, 0x1

    return v4

    .line 758
    .end local v52    # "_result":Z
    :cond_33
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_33

    .line 762
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v52    # "_result":Z
    :cond_34
    const/4 v4, 0x0

    goto :goto_34

    .line 767
    .end local v52    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .line 771
    .restart local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    .line 772
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 778
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 779
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/accounts/IAccountManager$Stub;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    const/4 v4, 0x1

    return v4

    .line 775
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_35
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_35

    .line 785
    .end local v5    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :sswitch_2a
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 788
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 793
    :goto_36
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v51

    .line 794
    .local v51, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 796
    const/4 v4, 0x1

    return v4

    .line 791
    .end local v51    # "_result":Ljava/util/Map;
    :cond_36
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_36

    .line 800
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_2b
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    .line 803
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 809
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 811
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    .line 812
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/Bundle;

    .line 818
    :goto_38
    invoke-virtual/range {p0 .. p0}, Landroid/accounts/IAccountManager$Stub;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v55

    .line 819
    .local v55, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v47

    .line 820
    .local v47, "_arg3":Ljava/util/Map;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result v52

    .line 821
    .restart local v52    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    if-eqz v52, :cond_39

    const/4 v4, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    const/4 v4, 0x1

    return v4

    .line 806
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v47    # "_arg3":Ljava/util/Map;
    .end local v52    # "_result":Z
    .end local v55    # "cl":Ljava/lang/ClassLoader;
    :cond_37
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_37

    .line 815
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v13    # "_arg1":Ljava/lang/String;
    :cond_38
    const/16 v28, 0x0

    .restart local v28    # "_arg2":Landroid/os/Bundle;
    goto :goto_38

    .line 822
    .end local v28    # "_arg2":Landroid/os/Bundle;
    .restart local v47    # "_arg3":Ljava/util/Map;
    .restart local v52    # "_result":Z
    .restart local v55    # "cl":Ljava/lang/ClassLoader;
    :cond_39
    const/4 v4, 0x0

    goto :goto_39

    .line 827
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v47    # "_arg3":Ljava/util/Map;
    .end local v52    # "_result":Z
    .end local v55    # "cl":Ljava/lang/ClassLoader;
    :sswitch_2c
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 830
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 836
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 838
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 839
    .restart local v42    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v42

    invoke-virtual {v0, v1, v13, v2}, Landroid/accounts/IAccountManager$Stub;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v52

    .line 840
    .restart local v52    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    if-eqz v52, :cond_3b

    const/4 v4, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    const/4 v4, 0x1

    return v4

    .line 833
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":I
    .end local v52    # "_result":Z
    :cond_3a
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_3a

    .line 841
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v13    # "_arg1":Ljava/lang/String;
    .restart local v42    # "_arg2":I
    .restart local v52    # "_result":Z
    :cond_3b
    const/4 v4, 0x0

    goto :goto_3b

    .line 846
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":I
    .end local v52    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 849
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 855
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 856
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13}, Landroid/accounts/IAccountManager$Stub;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v48

    .line 857
    .local v48, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    const/4 v4, 0x1

    return v4

    .line 852
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":I
    :cond_3c
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_3c

    .line 863
    .end local v38    # "_arg0":Landroid/accounts/Account;
    :sswitch_2e
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 867
    .restart local v39    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 868
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v13}, Landroid/accounts/IAccountManager$Stub;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v51

    .line 869
    .restart local v51    # "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 871
    const/4 v4, 0x1

    return v4

    .line 875
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v39    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":Ljava/util/Map;
    :sswitch_2f
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 879
    .local v40, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 880
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v13}, Landroid/accounts/IAccountManager$Stub;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    const/4 v4, 0x1

    return v4

    .line 886
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg0":[Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 890
    .restart local v40    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 891
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v13}, Landroid/accounts/IAccountManager$Stub;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    const/4 v4, 0x1

    return v4

    .line 897
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg0":[Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 900
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 906
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 908
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 909
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/os/UserHandle;

    .line 914
    :goto_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v13, v2}, Landroid/accounts/IAccountManager$Stub;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v52

    .line 915
    .restart local v52    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    if-eqz v52, :cond_3f

    const/4 v4, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    const/4 v4, 0x1

    return v4

    .line 903
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v52    # "_result":Z
    :cond_3d
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_3d

    .line 912
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v13    # "_arg1":Ljava/lang/String;
    :cond_3e
    const/16 v43, 0x0

    .local v43, "_arg2":Landroid/os/UserHandle;
    goto :goto_3e

    .line 916
    .end local v43    # "_arg2":Landroid/os/UserHandle;
    .restart local v52    # "_result":Z
    :cond_3f
    const/4 v4, 0x0

    goto :goto_3f

    .line 921
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v52    # "_result":Z
    :sswitch_32
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    .line 924
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/accounts/Account;

    .line 930
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 932
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 933
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/os/UserHandle;

    .line 938
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v13, v2}, Landroid/accounts/IAccountManager$Stub;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v49

    .line 939
    .local v49, "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    if-eqz v49, :cond_42

    .line 941
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    const/4 v4, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    .line 947
    :goto_42
    const/4 v4, 0x1

    return v4

    .line 927
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Landroid/content/IntentSender;
    :cond_40
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/accounts/Account;
    goto :goto_40

    .line 936
    .end local v38    # "_arg0":Landroid/accounts/Account;
    .restart local v13    # "_arg1":Ljava/lang/String;
    :cond_41
    const/16 v43, 0x0

    .restart local v43    # "_arg2":Landroid/os/UserHandle;
    goto :goto_41

    .line 945
    .end local v43    # "_arg2":Landroid/os/UserHandle;
    .restart local v49    # "_result":Landroid/content/IntentSender;
    :cond_42
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 951
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Landroid/content/IntentSender;
    :sswitch_33
    const-string/jumbo v4, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 954
    .restart local v39    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->onAccountAccessed(Ljava/lang/String;)V

    .line 955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    const/4 v4, 0x1

    return v4

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
