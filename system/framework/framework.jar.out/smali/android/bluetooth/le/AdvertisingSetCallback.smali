.class public abstract Landroid/bluetooth/le/AdvertisingSetCallback;
.super Ljava/lang/Object;
.source "AdvertisingSetCallback.java"


# static fields
.field public static final ADVERTISE_FAILED_ALREADY_STARTED:I = 0x3

.field public static final ADVERTISE_FAILED_DATA_TOO_LARGE:I = 0x1

.field public static final ADVERTISE_FAILED_FEATURE_UNSUPPORTED:I = 0x5

.field public static final ADVERTISE_FAILED_INTERNAL_ERROR:I = 0x4

.field public static final ADVERTISE_FAILED_TOO_MANY_ADVERTISERS:I = 0x2

.field public static final ADVERTISE_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertisingDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "status"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "enable"    # Z
    .param p3, "status"    # I

    .prologue
    .line 85
    return-void
.end method

.method public onAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;II)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .prologue
    .line 68
    return-void
.end method

.method public onAdvertisingSetStopped(Landroid/bluetooth/le/AdvertisingSet;)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;

    .prologue
    .line 76
    return-void
.end method

.method public onOwnAddressRead(Landroid/bluetooth/le/AdvertisingSet;ILjava/lang/String;)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "addressType"    # I
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public onPeriodicAdvertisingDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "status"    # I

    .prologue
    .line 135
    return-void
.end method

.method public onPeriodicAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "enable"    # Z
    .param p3, "status"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onPeriodicAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;I)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "status"    # I

    .prologue
    .line 125
    return-void
.end method

.method public onScanResponseDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "status"    # I

    .prologue
    .line 103
    return-void
.end method
