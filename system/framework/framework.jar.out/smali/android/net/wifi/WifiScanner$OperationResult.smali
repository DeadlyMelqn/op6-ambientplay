.class public Landroid/net/wifi/WifiScanner$OperationResult;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$OperationResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$OperationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1303
    new-instance v0, Landroid/net/wifi/WifiScanner$OperationResult$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$OperationResult$1;-><init>()V

    .line 1302
    sput-object v0, Landroid/net/wifi/WifiScanner$OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1281
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    iput p1, p0, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    .line 1287
    iput-object p2, p0, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    .line 1288
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1292
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1297
    iget v0, p0, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1299
    return-void
.end method
