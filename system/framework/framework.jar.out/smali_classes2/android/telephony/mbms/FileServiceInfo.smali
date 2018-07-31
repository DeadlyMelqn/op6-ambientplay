.class public final Landroid/telephony/mbms/FileServiceInfo;
.super Landroid/telephony/mbms/ServiceInfo;
.source "FileServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/FileServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/telephony/mbms/FileServiceInfo$1;

    invoke-direct {v0}, Landroid/telephony/mbms/FileServiceInfo$1;-><init>()V

    .line 46
    sput-object v0, Landroid/telephony/mbms/FileServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/telephony/mbms/ServiceInfo;-><init>(Landroid/os/Parcel;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    .line 62
    iget-object v0, p0, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    const-class v1, Landroid/telephony/mbms/FileInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;)V
    .locals 1
    .param p2, "newClassName"    # Ljava/lang/String;
    .param p4, "newServiceId"    # Ljava/lang/String;
    .param p5, "start"    # Ljava/util/Date;
    .param p6, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "newNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p3, "newLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local p7, "newFiles":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/FileInfo;>;"
    invoke-direct/range {p0 .. p6}, Landroid/telephony/mbms/ServiceInfo;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/telephony/mbms/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget-object v0, p0, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 69
    return-void
.end method
