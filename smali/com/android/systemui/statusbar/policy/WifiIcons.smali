.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 22
    new-array v0, v8, [[I

    .line 23
    const v1, 0x7f08030d

    .line 24
    const v2, 0x7f08030f

    .line 25
    const v3, 0x7f080311

    .line 26
    const v4, 0x7f080313

    .line 27
    const v5, 0x7f080315

    .line 23
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    .line 28
    const v1, 0x7f08030e

    .line 29
    const v2, 0x7f080310

    .line 30
    const v3, 0x7f080312

    .line 31
    const v4, 0x7f080314

    .line 32
    const v5, 0x7f080316

    .line 28
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 22
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    new-array v0, v8, [[I

    .line 36
    const v1, 0x7f0801bf

    .line 37
    const v2, 0x7f0801c0

    .line 38
    const v3, 0x7f0801c1

    .line 39
    const v4, 0x7f0801c2

    .line 40
    const v5, 0x7f0801c3

    .line 36
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    .line 41
    const v1, 0x7f0801c7

    .line 42
    const v2, 0x7f0801c8

    .line 43
    const v3, 0x7f0801c9

    .line 44
    const v4, 0x7f0801ca

    .line 45
    const v5, 0x7f0801cb

    .line 41
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 35
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v6

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
