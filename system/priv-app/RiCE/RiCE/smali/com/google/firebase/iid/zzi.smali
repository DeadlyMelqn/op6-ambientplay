.class public Lcom/google/firebase/iid/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/zzi$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/iid/zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaf:Landroid/os/Messenger;

.field private zzag:Lcom/google/android/gms/internal/firebase_messaging/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/zzj;

    invoke-direct/range {v0 .. v0}, Lcom/google/firebase/iid/zzj;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzi;->zzaf:Landroid/os/Messenger;

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase_messaging/zzf;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/firebase_messaging/zze;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzi;->zzag:Lcom/google/android/gms/internal/firebase_messaging/zze;

    return-void
.end method

.method private final getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzi;->zzaf:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/iid/zzi;->zzaf:Landroid/os/Messenger;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/iid/zzi;->zzag:Lcom/google/android/gms/internal/firebase_messaging/zze;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_messaging/zze;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/iid/zzi;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    check-cast p1, Lcom/google/firebase/iid/zzi;

    invoke-direct/range {p1 .. p1}, Lcom/google/firebase/iid/zzi;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/iid/zzi;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final send(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/zzi;->zzaf:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/iid/zzi;->zzaf:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/iid/zzi;->zzag:Lcom/google/android/gms/internal/firebase_messaging/zze;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zze;->send(Landroid/os/Message;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/firebase/iid/zzi;->zzaf:Landroid/os/Messenger;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/firebase/iid/zzi;->zzaf:Landroid/os/Messenger;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/iid/zzi;->zzag:Lcom/google/android/gms/internal/firebase_messaging/zze;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_messaging/zze;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0
.end method
