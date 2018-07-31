.class Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;
.super Lcom/android/internal/car/ICarServiceHelper$Stub;
.source "CarServiceHelperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/car/CarServiceHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICarServiceHelperImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/car/CarServiceHelperService;


# direct methods
.method private constructor <init>(Lcom/android/server/car/CarServiceHelperService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/car/CarServiceHelperService;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-direct {p0}, Lcom/android/internal/car/ICarServiceHelper$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/car/CarServiceHelperService;Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/car/CarServiceHelperService;
    .param p2, "-this1"    # Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;-><init>(Lcom/android/server/car/CarServiceHelperService;)V

    return-void
.end method
