.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    const v0, 0x7f110077

    .line 15
    const v1, 0x7f110083

    .line 16
    const v2, 0x7f110086

    .line 17
    const v3, 0x7f110085

    .line 18
    const v4, 0x7f110084

    .line 13
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 22
    const v0, 0x7f110076

    .line 23
    const v1, 0x7f110051

    .line 24
    const v2, 0x7f110056

    .line 25
    const v3, 0x7f110055

    .line 26
    const v4, 0x7f110054

    .line 21
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 30
    const v0, 0x7f11007b

    .line 31
    const v1, 0x7f1100ee

    .line 32
    const v2, 0x7f1100f3

    .line 33
    const v3, 0x7f1100f2

    .line 34
    const v4, 0x7f1100f1

    .line 29
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 40
    const v0, 0x7f110068

    .line 41
    const v1, 0x7f110067

    .line 39
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
