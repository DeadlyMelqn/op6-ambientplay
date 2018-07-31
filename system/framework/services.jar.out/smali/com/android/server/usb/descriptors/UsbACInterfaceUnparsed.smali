.class public final Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACInterfaceUnparsed.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACInterfaceUnparsed"


# direct methods
.method public constructor <init>(IBBB)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "subClass"    # B

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBB)V

    .line 27
    return-void
.end method
