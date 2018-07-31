.class public abstract Lcom/android/internal/app/ISoundTriggerService$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerService.java"

# interfaces
.implements Lcom/android/internal/app/ISoundTriggerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ISoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.ISoundTriggerService"

.field static final TRANSACTION_deleteSoundModel:I = 0x3

.field static final TRANSACTION_getSoundModel:I = 0x1

.field static final TRANSACTION_isRecognitionActive:I = 0xb

.field static final TRANSACTION_loadGenericSoundModel:I = 0x6

.field static final TRANSACTION_loadKeyphraseSoundModel:I = 0x7

.field static final TRANSACTION_startRecognition:I = 0x4

.field static final TRANSACTION_startRecognitionForIntent:I = 0x8

.field static final TRANSACTION_stopRecognition:I = 0x5

.field static final TRANSACTION_stopRecognitionForIntent:I = 0x9

.field static final TRANSACTION_unloadSoundModel:I = 0xa

.field static final TRANSACTION_updateSoundModel:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;
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
    const-string/jumbo v1, "com.android.internal.app.ISoundTriggerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/ISoundTriggerService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/app/ISoundTriggerService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 46
    :sswitch_0
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v9, 0x1

    return v9

    .line 51
    :sswitch_1
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 54
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 59
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v7

    .line 60
    .local v7, "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v7, :cond_1

    .line 62
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v9, 0x1

    invoke-virtual {v7, p3, v9}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_1
    const/4 v9, 0x1

    return v9

    .line 57
    .end local v7    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 66
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v7    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 72
    .end local v7    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :sswitch_2
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 75
    sget-object v9, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 80
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v9, 0x1

    return v9

    .line 78
    :cond_2
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    goto :goto_2

    .line 86
    .end local v0    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :sswitch_3
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 89
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 94
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->deleteSoundModel(Landroid/os/ParcelUuid;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v9, 0x1

    return v9

    .line 92
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_3

    .line 100
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_4
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 103
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 109
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4

    .line 111
    .local v4, "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    .line 112
    sget-object v9, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 117
    :goto_5
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/app/ISoundTriggerService$Stub;->startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v6

    .line 118
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v9, 0x1

    return v9

    .line 106
    .end local v4    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v6    # "_result":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_4

    .line 115
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v4    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_5
    const/4 v5, 0x0

    .local v5, "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_5

    .line 124
    .end local v4    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v5    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :sswitch_5
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 127
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 133
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4

    .line 134
    .restart local v4    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/app/ISoundTriggerService$Stub;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v6

    .line 135
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v9, 0x1

    return v9

    .line 130
    .end local v4    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v6    # "_result":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_6

    .line 141
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_6
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    .line 144
    sget-object v9, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 149
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I

    move-result v6

    .line 150
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v9, 0x1

    return v9

    .line 147
    .end local v6    # "_result":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    goto :goto_7

    .line 156
    .end local v0    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :sswitch_7
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    .line 159
    sget-object v9, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 164
    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v6

    .line 165
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v9, 0x1

    return v9

    .line 162
    .end local v6    # "_result":I
    :cond_8
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    goto :goto_8

    .line 171
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :sswitch_8
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    .line 174
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 180
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    .line 181
    sget-object v9, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 187
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    .line 188
    sget-object v9, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 193
    :goto_b
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/internal/app/ISoundTriggerService$Stub;->startRecognitionForIntent(Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v6

    .line 194
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v9, 0x1

    return v9

    .line 177
    .end local v6    # "_result":I
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_9

    .line 184
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    :cond_a
    const/4 v3, 0x0

    .local v3, "_arg1":Landroid/app/PendingIntent;
    goto :goto_a

    .line 191
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_b

    .line 200
    .end local v5    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :sswitch_9
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    .line 203
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 208
    :goto_c
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->stopRecognitionForIntent(Landroid/os/ParcelUuid;)I

    move-result v6

    .line 209
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v9, 0x1

    return v9

    .line 206
    .end local v6    # "_result":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_c

    .line 215
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_a
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    .line 218
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 223
    :goto_d
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->unloadSoundModel(Landroid/os/ParcelUuid;)I

    move-result v6

    .line 224
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v9, 0x1

    return v9

    .line 221
    .end local v6    # "_result":I
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_d

    .line 230
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_b
    const-string/jumbo v9, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    .line 233
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 238
    :goto_e
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->isRecognitionActive(Landroid/os/ParcelUuid;)Z

    move-result v8

    .line 239
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v8, :cond_f

    const/4 v9, 0x1

    :goto_f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v9, 0x1

    return v9

    .line 236
    .end local v8    # "_result":Z
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_e

    .line 240
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v8    # "_result":Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_f

    .line 42
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
