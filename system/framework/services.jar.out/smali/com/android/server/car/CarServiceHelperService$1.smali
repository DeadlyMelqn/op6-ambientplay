.class Lcom/android/server/car/CarServiceHelperService$1;
.super Ljava/lang/Object;
.source "CarServiceHelperService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/car/CarServiceHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/car/CarServiceHelperService;


# direct methods
.method constructor <init>(Lcom/android/server/car/CarServiceHelperService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/car/CarServiceHelperService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 46
    const-string/jumbo v2, "CarServiceHelper"

    const-string/jumbo v3, "**CarService connected**"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v2, p2}, Lcom/android/server/car/CarServiceHelperService;->-set0(Lcom/android/server/car/CarServiceHelperService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 52
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v2, "android.car.ICar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v2}, Lcom/android/server/car/CarServiceHelperService;->-get1(Lcom/android/server/car/CarServiceHelperService;)Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v2}, Lcom/android/server/car/CarServiceHelperService;->-get0(Lcom/android/server/car/CarServiceHelperService;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    .line 56
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 55
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CarServiceHelper"

    const-string/jumbo v3, "RemoteException from car service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    iget-object v2, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v2}, Lcom/android/server/car/CarServiceHelperService;->-wrap0(Lcom/android/server/car/CarServiceHelperService;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v0}, Lcom/android/server/car/CarServiceHelperService;->-wrap0(Lcom/android/server/car/CarServiceHelperService;)V

    .line 66
    return-void
.end method
