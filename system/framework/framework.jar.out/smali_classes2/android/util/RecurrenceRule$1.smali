.class final Landroid/util/RecurrenceRule$1;
.super Ljava/lang/Object;
.source "RecurrenceRule.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/RecurrenceRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/util/RecurrenceRule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/util/RecurrenceRule;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 142
    new-instance v0, Landroid/util/RecurrenceRule;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/util/RecurrenceRule;-><init>(Landroid/os/Parcel;Landroid/util/RecurrenceRule;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/util/RecurrenceRule$1;->createFromParcel(Landroid/os/Parcel;)Landroid/util/RecurrenceRule;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/util/RecurrenceRule;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 147
    new-array v0, p1, [Landroid/util/RecurrenceRule;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Landroid/util/RecurrenceRule$1;->newArray(I)[Landroid/util/RecurrenceRule;

    move-result-object v0

    return-object v0
.end method
