.class Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
.super Ljava/lang/Object;
.source "ActivityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/work/ActivityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityItem"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/secrecy/work/ActivityConfig;


# direct methods
.method static synthetic -get0(Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    .prologue
    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    .prologue
    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/secrecy/work/ActivityConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/secrecy/work/ActivityConfig;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->this$0:Lcom/android/server/secrecy/work/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mPackageName:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mClassName:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
