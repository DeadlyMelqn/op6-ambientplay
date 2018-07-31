.class final Lcom/android/server/am/ActiveServices$ServiceDumper;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceDumper"
.end annotation


# instance fields
.field private final args:[Ljava/lang/String;

.field private final dumpAll:Z

.field private final dumpPackage:Ljava/lang/String;

.field private final fd:Ljava/io/FileDescriptor;

.field private final matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

.field private needSep:Z

.field private final nowReal:J

.field private printed:Z

.field private printedAnything:Z

.field private final pw:Ljava/io/PrintWriter;

.field private final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 3739
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 3743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3731
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 3733
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    .line 3735
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 3736
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 3737
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3745
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    .line 3746
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 3747
    iput-object p4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    .line 3748
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    .line 3749
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 3750
    new-instance v7, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    iput-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 3751
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    move/from16 v0, p5

    invoke-virtual {v7, p4, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 3753
    iget-object v7, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v7}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v6

    .line 3754
    .local v6, "users":[I
    const/4 v7, 0x0

    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_4

    aget v5, v6, v7

    .line 3755
    .local v5, "user":I
    invoke-static {p1, v5}, Lcom/android/server/am/ActiveServices;->-wrap0(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    .line 3756
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 3757
    const/4 v3, 0x0

    .local v3, "si":I
    :goto_1
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 3758
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 3759
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v2, v10}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3757
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3762
    :cond_1
    if-eqz p7, :cond_2

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_0

    .line 3765
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3754
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v3    # "si":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3769
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "user":I
    :cond_4
    return-void
.end method

.method private dumpHeaderLocked()V
    .locals 2

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3773
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3774
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  Last ANR service:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3775
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3776
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3778
    :cond_0
    return-void
.end method

.method private dumpRemainsLocked()V
    .locals 20

    .prologue
    .line 3978
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 3979
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3980
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_5

    .line 3981
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    .line 3982
    .local v9, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v15, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v14, v9, v15}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 3980
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3985
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v15, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_0

    .line 3988
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 3989
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v14, :cond_4

    .line 3990
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 3991
    :cond_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 3992
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "  Pending services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3993
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3995
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "  * Pending "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3996
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "    "

    invoke-virtual {v9, v14, v15}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    .line 3998
    .end local v9    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4001
    .end local v4    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_d

    .line 4002
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4003
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_c

    .line 4004
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    .line 4005
    .restart local v9    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v15, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v14, v9, v15}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 4003
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4008
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v15, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_7

    .line 4011
    :cond_9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4012
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v14, :cond_b

    .line 4013
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 4014
    :cond_a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4015
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "  Restarting services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4016
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4018
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "  * Restarting "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4019
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "    "

    invoke-virtual {v9, v14, v15}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 4021
    .end local v9    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_c
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4024
    .end local v4    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_14

    .line 4025
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4026
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_13

    .line 4027
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    .line 4028
    .restart local v9    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v15, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v14, v9, v15}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 4026
    :cond_e
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4031
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v15, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_e

    .line 4034
    :cond_10
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4035
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v14, :cond_12

    .line 4036
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 4037
    :cond_11
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4038
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "  Destroying services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4041
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "  * Destroy "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4042
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "    "

    invoke-virtual {v9, v14, v15}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    .line 4044
    .end local v9    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_13
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4047
    .end local v4    # "i":I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v14, :cond_1b

    .line 4048
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4049
    const/4 v5, 0x0

    .local v5, "ic":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v5, v14, :cond_1b

    .line 4050
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 4051
    .local v10, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_1a

    .line 4052
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 4053
    .local v3, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v15, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v14

    if-nez v14, :cond_16

    .line 4051
    :cond_15
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 4056
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v14, :cond_17

    iget-object v14, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_15

    .line 4057
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v15, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    .line 4056
    if-nez v14, :cond_15

    .line 4060
    :cond_17
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4061
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v14, :cond_19

    .line 4062
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 4063
    :cond_18
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4064
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "  Connection bindings to services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4065
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4067
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "  * "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4068
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "    "

    invoke-virtual {v3, v14, v15}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_8

    .line 4049
    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 4073
    .end local v4    # "i":I
    .end local v5    # "ic":I
    .end local v10    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-boolean v14, v14, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    if-eqz v14, :cond_25

    .line 4074
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 4075
    .local v6, "nowElapsed":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v14, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v14}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v13

    .line 4076
    .local v13, "users":[I
    const/4 v14, 0x0

    array-length v15, v13

    :goto_9
    if-ge v14, v15, :cond_25

    aget v12, v13, v14

    .line 4077
    .local v12, "user":I
    const/4 v8, 0x0

    .line 4078
    .local v8, "printedUser":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4079
    .local v11, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v11, :cond_1d

    .line 4076
    :cond_1c
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 4082
    :cond_1d
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v16

    add-int/lit8 v4, v16, -0x1

    .restart local v4    # "i":I
    :goto_b
    if-ltz v4, :cond_23

    .line 4083
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 4084
    .local v2, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_1f

    .line 4082
    :cond_1e
    :goto_c
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 4087
    :cond_1f
    if-nez v8, :cond_21

    .line 4088
    const/4 v8, 0x1

    .line 4089
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4090
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    move/from16 v16, v0

    if-eqz v16, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->println()V

    .line 4091
    :cond_20
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, "Active foreground apps - user "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 4094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4096
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, "  #"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4100
    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    if-eqz v16, :cond_22

    .line 4101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, "    mLabel="

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4104
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, "    mNumActive="

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    iget v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(I)V

    .line 4106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, " mAppOnTop="

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    iget-boolean v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Z)V

    .line 4108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, " mShownWhileTop="

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    iget-boolean v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Z)V

    .line 4110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, " mShownWhileScreenOn="

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    iget-boolean v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->println(Z)V

    .line 4112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, "    mStartTime="

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4113
    iget-wide v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, " mStartVisibleTime="

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4115
    iget-wide v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->println()V

    .line 4117
    iget-wide v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_1e

    .line 4118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, "    mEndTime="

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4119
    iget-wide v0, v2, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_c

    .line 4123
    .end local v2    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_23
    invoke-virtual {v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->hasMessagesOrCallbacks()Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 4124
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    move/from16 v16, v0

    if-eqz v16, :cond_24

    .line 4125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->println()V

    .line 4127
    :cond_24
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4128
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, "  Handler - user "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 4131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v16, v0

    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4132
    new-instance v16, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string/jumbo v17, "    "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->dumpMine(Landroid/util/Printer;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 4137
    .end local v4    # "i":I
    .end local v6    # "nowElapsed":J
    .end local v8    # "printedUser":Z
    .end local v11    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v12    # "user":I
    .end local v13    # "users":[I
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-nez v14, :cond_26

    .line 4138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v15, "  (nothing)"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4140
    :cond_26
    return-void
.end method

.method private dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 3906
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3907
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_0

    .line 3908
    return-void

    .line 3910
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 3911
    .local v3, "thread":Landroid/app/IApplicationThread;
    if-nez v3, :cond_1

    .line 3912
    return-void

    .line 3914
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, "    Client:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3915
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 3917
    :try_start_0
    new-instance v4, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v4}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3919
    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    invoke-interface {v3, v5, p1, v6}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 3920
    const-string/jumbo v5, "      "

    invoke-virtual {v4, v5}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 3923
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3925
    :try_start_2
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3932
    .end local v4    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 3933
    return-void

    .line 3924
    .restart local v4    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v5

    .line 3925
    :try_start_3
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 3924
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3927
    .end local v4    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v1

    .line 3928
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "      Failure while dumping the service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3929
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3930
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, "      Got a RemoteException while dumping the service"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v10, 0x0

    .line 3872
    iget v5, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserHeaderLocked(I)V

    .line 3873
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, "  * "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3874
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3875
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v5, :cond_1

    .line 3876
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, "    "

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3877
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 3903
    :cond_0
    return-void

    .line 3879
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, "    app="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3880
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3881
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, "    created="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3882
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->createTime:J

    iget-wide v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v6, v7, v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3883
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, " started="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3884
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 3885
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, " connections="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3886
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3887
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 3888
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, "    Connections:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3889
    const/4 v2, 0x0

    .local v2, "conni":I
    :goto_0
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 3890
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3891
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 3892
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 3893
    .local v1, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, "      "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3894
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v6, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3896
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3897
    iget-object v5, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 3898
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3891
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3898
    :cond_2
    const-string/jumbo v5, "null"

    goto :goto_2

    .line 3889
    .end local v1    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private dumpUserHeaderLocked(I)V
    .locals 4
    .param p1, "user"    # I

    .prologue
    const/4 v3, 0x1

    .line 3858
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v0, :cond_1

    .line 3859
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v0, :cond_0

    .line 3860
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3862
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " active services:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3863
    iput-boolean v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3865
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 3866
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v0, :cond_2

    .line 3867
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3869
    :cond_2
    return-void
.end method

.method private dumpUserRemainsLocked(I)V
    .locals 9
    .param p1, "user"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3936
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v4, p1}, Lcom/android/server/am/ActiveServices;->-wrap0(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    .line 3937
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3938
    const/4 v2, 0x0

    .local v2, "si":I
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "SN":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 3939
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 3940
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3938
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3943
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 3946
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v4, :cond_4

    .line 3947
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v4, :cond_3

    .line 3948
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 3950
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " delayed start services:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3951
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3953
    :cond_4
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 3954
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v5, "  * Delayed start "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 3956
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_5
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3957
    const/4 v2, 0x0

    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_b

    .line 3958
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 3959
    .restart local v1    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3957
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3962
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_6

    .line 3965
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v4, :cond_a

    .line 3966
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v4, :cond_9

    .line 3967
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 3969
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " starting in background:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3970
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3972
    :cond_a
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 3973
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string/jumbo v5, "  * Starting bg "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 3975
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_b
    return-void
.end method


# virtual methods
.method dumpLocked()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 3781
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    .line 3784
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v4

    .line 3785
    .local v4, "users":[I
    array-length v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_4

    aget v3, v4, v6

    .line 3787
    .local v3, "user":I
    const/4 v2, 0x0

    .line 3788
    .local v2, "serviceIdx":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v5, v3, :cond_0

    .line 3789
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3791
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3792
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 3793
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 3794
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 3795
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 3796
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v2, v2, 0x1

    .line 3797
    iget v5, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v5, v3, :cond_3

    .line 3802
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v5, v8

    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 3805
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V

    .line 3785
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 3800
    .restart local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3807
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v2    # "serviceIdx":I
    .end local v3    # "user":I
    .end local v4    # "users":[I
    :catch_0
    move-exception v0

    .line 3808
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-get2()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Exception in dumpServicesLocked"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3811
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    .line 3812
    return-void
.end method

.method dumpWithClient()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 3815
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3816
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 3815
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3820
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v4

    .line 3821
    .local v4, "users":[I
    array-length v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_4

    aget v3, v4, v6

    .line 3823
    .local v3, "user":I
    const/4 v2, 0x0

    .line 3824
    .local v2, "serviceIdx":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v5, v3, :cond_0

    .line 3825
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3815
    .end local v2    # "serviceIdx":I
    .end local v3    # "user":I
    .end local v4    # "users":[I
    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 3827
    .restart local v2    # "serviceIdx":I
    .restart local v3    # "user":I
    .restart local v4    # "users":[I
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 3828
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 3829
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 3830
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 3831
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 3832
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v2, v2, 0x1

    .line 3833
    iget v5, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v5, v3, :cond_3

    .line 3841
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v5, v8

    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 3844
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v8, v5, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3845
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v8

    .line 3844
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3821
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 3836
    .restart local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v8, v5, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3837
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v8

    .line 3836
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3839
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 3848
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v2    # "serviceIdx":I
    .end local v3    # "user":I
    .end local v4    # "users":[I
    :catch_0
    move-exception v0

    .line 3849
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-get2()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Exception in dumpServicesLocked"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3852
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, v5, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3853
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v6

    .line 3852
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3855
    return-void

    .line 3836
    .restart local v1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v2    # "serviceIdx":I
    .restart local v3    # "user":I
    .restart local v4    # "users":[I
    :catchall_1
    move-exception v5

    :try_start_8
    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 3844
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_2
    move-exception v5

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 3852
    .end local v2    # "serviceIdx":I
    .end local v3    # "user":I
    .end local v4    # "users":[I
    :catchall_3
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method
