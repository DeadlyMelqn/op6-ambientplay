.class public final Landroid/hardware/radio/RadioMetadata$Clock;
.super Ljava/lang/Object;
.source "RadioMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Clock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioMetadata$Clock$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioMetadata$Clock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTimezoneOffsetMinutes:I

.field private final mUtcEpochSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Clock$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Clock$1;-><init>()V

    .line 179
    sput-object v0, Landroid/hardware/radio/RadioMetadata$Clock;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 166
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "utcEpochSeconds"    # J
    .param p3, "timezoneOffsetMinutes"    # I

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-wide p1, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    .line 192
    iput p3, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    .line 193
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioMetadata$Clock;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/hardware/radio/RadioMetadata$Clock;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata$Clock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getTimezoneOffsetMinutes()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    return v0
.end method

.method public getUtcEpochSeconds()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 175
    iget-wide v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return-void
.end method
