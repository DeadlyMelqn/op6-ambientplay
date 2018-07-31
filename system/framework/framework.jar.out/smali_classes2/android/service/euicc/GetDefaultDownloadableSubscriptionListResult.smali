.class public final Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;
.super Ljava/lang/Object;
.source "GetDefaultDownloadableSubscriptionListResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final result:I

.field public final subscriptions:[Landroid/telephony/euicc/DownloadableSubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult$1;-><init>()V

    .line 31
    sput-object v0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>(I[Landroid/telephony/euicc/DownloadableSubscription;)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "subscriptions"    # [Landroid/telephony/euicc/DownloadableSubscription;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->result:I

    .line 72
    iget v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->result:I

    if-nez v0, :cond_0

    .line 73
    iput-object p2, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->subscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    if-eqz p2, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error result with non-null subscriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput-object v1, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->subscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->result:I

    .line 85
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->subscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    iget v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->subscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 92
    return-void
.end method
