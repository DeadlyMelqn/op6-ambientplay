.class public Lcom/android/settings/search/ResultPayload;
.super Ljava/lang/Object;
.source "ResultPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/ResultPayload$1;,
        Lcom/android/settings/search/ResultPayload$Availability;,
        Lcom/android/settings/search/ResultPayload$PayloadType;,
        Lcom/android/settings/search/ResultPayload$SettingsSource;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/search/ResultPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/android/settings/search/ResultPayload$1;

    invoke-direct {v0}, Lcom/android/settings/search/ResultPayload$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/ResultPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    .line 133
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-class v0, Lcom/android/settings/search/ResultPayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/search/ResultPayload;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Lcom/android/settings/search/ResultPayload;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    return-void
.end method
