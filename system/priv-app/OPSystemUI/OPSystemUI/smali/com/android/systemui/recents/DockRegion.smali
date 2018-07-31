.class Lcom/android/systemui/recents/DockRegion;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field public static PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 37
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lcom/android/systemui/recents/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 39
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 41
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Lcom/android/systemui/recents/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 44
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 45
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v3

    .line 43
    sput-object v0, Lcom/android/systemui/recents/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 47
    sget-object v0, Lcom/android/systemui/recents/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    sput-object v0, Lcom/android/systemui/recents/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
