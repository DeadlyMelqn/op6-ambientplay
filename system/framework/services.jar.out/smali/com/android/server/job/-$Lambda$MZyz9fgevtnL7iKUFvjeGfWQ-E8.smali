.class final synthetic Lcom/android/server/job/-$Lambda$MZyz9fgevtnL7iKUFvjeGfWQ-E8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/job/-$Lambda$MZyz9fgevtnL7iKUFvjeGfWQ-E8;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/server/job/JobSchedulerService;->lambda$-com_android_server_job_JobSchedulerService_22367(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/job/-$Lambda$MZyz9fgevtnL7iKUFvjeGfWQ-E8;

    invoke-direct {v0}, Lcom/android/server/job/-$Lambda$MZyz9fgevtnL7iKUFvjeGfWQ-E8;-><init>()V

    sput-object v0, Lcom/android/server/job/-$Lambda$MZyz9fgevtnL7iKUFvjeGfWQ-E8;->$INST$0:Lcom/android/server/job/-$Lambda$MZyz9fgevtnL7iKUFvjeGfWQ-E8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/-$Lambda$MZyz9fgevtnL7iKUFvjeGfWQ-E8;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
