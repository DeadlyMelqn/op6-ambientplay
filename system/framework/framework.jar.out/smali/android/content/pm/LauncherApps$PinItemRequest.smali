.class public final Landroid/content/pm/LauncherApps$PinItemRequest;
.super Ljava/lang/Object;
.source "LauncherApps.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinItemRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$PinItemRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/LauncherApps$PinItemRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_TYPE_APPWIDGET:I = 0x2

.field public static final REQUEST_TYPE_SHORTCUT:I = 0x1


# instance fields
.field private final mInner:Landroid/content/pm/IPinItemRequest;

.field private final mRequestType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1478
    new-instance v0, Landroid/content/pm/LauncherApps$PinItemRequest$1;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$PinItemRequest$1;-><init>()V

    .line 1477
    sput-object v0, Landroid/content/pm/LauncherApps$PinItemRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1333
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPinItemRequest;I)V
    .locals 0
    .param p1, "inner"    # Landroid/content/pm/IPinItemRequest;
    .param p2, "type"    # I

    .prologue
    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    iput-object p1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    .line 1354
    iput p2, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    .line 1355
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1465
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1467
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    .line 1468
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPinItemRequest$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPinItemRequest;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    .line 1469
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/LauncherApps$PinItemRequest;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/content/pm/LauncherApps$PinItemRequest;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public accept()Z
    .locals 1

    .prologue
    .line 1461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public accept(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1447
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v1, p1}, Landroid/content/pm/IPinItemRequest;->accept(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1448
    :catch_0
    move-exception v0

    .line 1449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1489
    const/4 v0, 0x0

    return v0
.end method

.method public getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1395
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v2}, Landroid/content/pm/IPinItemRequest;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 1396
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v1, :cond_0

    .line 1397
    return-object v3

    .line 1399
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    return-object v1

    .line 1401
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1417
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v1}, Landroid/content/pm/IPinItemRequest;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 1364
    iget v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    return v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 2

    .prologue
    .line 1378
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v1}, Landroid/content/pm/IPinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 1430
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v1}, Landroid/content/pm/IPinItemRequest;->isValid()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1473
    iget v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1475
    return-void
.end method
