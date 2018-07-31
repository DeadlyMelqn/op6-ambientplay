.class public abstract Landroid/app/ITaskStackListener$Stub;
.super Landroid/os/Binder;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final TRANSACTION_onActivityDismissingDockedStack:I = 0x8

.field static final TRANSACTION_onActivityForcedResizable:I = 0x7

.field static final TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x9

.field static final TRANSACTION_onActivityPinned:I = 0x2

.field static final TRANSACTION_onActivityRequestedOrientationChanged:I = 0xe

.field static final TRANSACTION_onActivityUnpinned:I = 0x3

.field static final TRANSACTION_onPinnedActivityRestartAttempt:I = 0x4

.field static final TRANSACTION_onPinnedStackAnimationEnded:I = 0x6

.field static final TRANSACTION_onPinnedStackAnimationStarted:I = 0x5

.field static final TRANSACTION_onTaskCreated:I = 0xa

.field static final TRANSACTION_onTaskDescriptionChanged:I = 0xd

.field static final TRANSACTION_onTaskMovedToFront:I = 0xc

.field static final TRANSACTION_onTaskProfileLocked:I = 0x10

.field static final TRANSACTION_onTaskRemovalStarted:I = 0xf

.field static final TRANSACTION_onTaskRemoved:I = 0xb

.field static final TRANSACTION_onTaskSnapshotChanged:I = 0x11

.field static final TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITaskStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.app.ITaskStackListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ITaskStackListener;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/ITaskStackListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/ITaskStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ITaskStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 43
    :sswitch_0
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v9

    .line 48
    :sswitch_1
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onTaskStackChanged()V

    .line 50
    return v9

    .line 54
    :sswitch_2
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 60
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 61
    .local v7, "_arg2":I
    invoke-virtual {p0, v1, v3, v7}, Landroid/app/ITaskStackListener$Stub;->onActivityPinned(Ljava/lang/String;II)V

    .line 62
    return v9

    .line 66
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_3
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityUnpinned()V

    .line 68
    return v9

    .line 72
    :sswitch_4
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x1

    .line 75
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onPinnedActivityRestartAttempt(Z)V

    .line 76
    return v9

    .line 74
    .end local v2    # "_arg0":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_0

    .line 80
    .end local v2    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onPinnedStackAnimationStarted()V

    .line 82
    return v9

    .line 86
    :sswitch_6
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onPinnedStackAnimationEnded()V

    .line 88
    return v9

    .line 92
    :sswitch_7
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 99
    .restart local v7    # "_arg2":I
    invoke-virtual {p0, v1, v3, v7}, Landroid/app/ITaskStackListener$Stub;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 100
    return v9

    .line 104
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_8
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingDockedStack()V

    .line 106
    return v9

    .line 110
    :sswitch_9
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayFailed()V

    .line 112
    return v9

    .line 116
    :sswitch_a
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 121
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 126
    :goto_1
    invoke-virtual {p0, v0, v6}, Landroid/app/ITaskStackListener$Stub;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 127
    return v9

    .line 124
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/content/ComponentName;
    goto :goto_1

    .line 131
    .end local v0    # "_arg0":I
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_b
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/ITaskStackListener$Stub;->onTaskRemoved(I)V

    .line 135
    return v9

    .line 139
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToFront(I)V

    .line 143
    return v9

    .line 147
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    .line 152
    sget-object v8, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$TaskDescription;

    .line 157
    :goto_2
    invoke-virtual {p0, v0, v4}, Landroid/app/ITaskStackListener$Stub;->onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V

    .line 158
    return v9

    .line 155
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_2

    .line 162
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_e
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityRequestedOrientationChanged(II)V

    .line 168
    return v9

    .line 172
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_f
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/ITaskStackListener$Stub;->onTaskRemovalStarted(I)V

    .line 176
    return v9

    .line 180
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskProfileLocked(II)V

    .line 186
    return v9

    .line 190
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_11
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    .line 195
    sget-object v8, Landroid/app/ActivityManager$TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$TaskSnapshot;

    .line 200
    :goto_3
    invoke-virtual {p0, v0, v5}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 201
    return v9

    .line 198
    :cond_3
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_3

    .line 39
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
