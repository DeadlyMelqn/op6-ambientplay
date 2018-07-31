.class final synthetic Lcom/android/systemui/qs/tiles/-$Lambda$QMKtMiaSqDyWeBBXeohWvdaW6o4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$QMKtMiaSqDyWeBBXeohWvdaW6o4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/tiles/DataSaverTile;->lambda$-com_android_systemui_qs_tiles_DataSaverTile_3218(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$Lambda$QMKtMiaSqDyWeBBXeohWvdaW6o4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/-$Lambda$QMKtMiaSqDyWeBBXeohWvdaW6o4;->$m$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
