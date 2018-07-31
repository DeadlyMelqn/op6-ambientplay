.class public final Landroid/content/pm/EphemeralIntentFilter;
.super Ljava/lang/Object;
.source "EphemeralIntentFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralIntentFilter$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Landroid/content/pm/EphemeralIntentFilter$1;

    invoke-direct {v0}, Landroid/content/pm/EphemeralIntentFilter$1;-><init>()V

    .line 74
    sput-object v0, Landroid/content/pm/EphemeralIntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/content/pm/InstantAppIntentFilter;)V
    .locals 0
    .param p1, "intentFilter"    # Landroid/content/pm/InstantAppIntentFilter;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    .line 45
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstantAppIntentFilter;

    iput-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/content/pm/InstantAppIntentFilter;

    invoke-direct {v0, p1, p2}, Landroid/content/pm/InstantAppIntentFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getInstantAppIntentFilter()Landroid/content/pm/InstantAppIntentFilter;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    return-object v0
.end method

.method public getSplitName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    return-void
.end method
