.class Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryDrawable;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBatteryDrawable"
.end annotation


# instance fields
.field private mIconScale:F

.field private mLevel:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;
    .param p2, "level"    # I

    .prologue
    .line 221
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryDrawable;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;IF)V

    .line 222
    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;
    .param p2, "level"    # I
    .param p3, "iconScale"    # F

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryDrawable;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 225
    iput p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryDrawable;->mLevel:I

    .line 226
    iput p3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryDrawable;->mIconScale:F

    .line 227
    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    iget v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryDrawable;->mLevel:I

    iget v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryDrawable;->mIconScale:F

    const v2, 0x7f08018a

    .line 231
    invoke-static {p1, v2, v0, v1}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object v0

    return-object v0
.end method
