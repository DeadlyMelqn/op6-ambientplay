.class public Lcom/android/systemui/recents/LockStateController;
.super Ljava/lang/Object;
.source "LockStateController.java"


# static fields
.field private static sInstance:Lcom/android/systemui/recents/LockStateController;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TASK_LOCK_LIST_KEY:Ljava/lang/String;

.field private final TASK_LOCK_LIST_KEY_WITH_USERID:Ljava/lang/String;

.field private final TASK_LOCK_STATE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockedList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedListWithUserId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedPackageNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedPackageNameListWithUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSp:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/LockStateController;)Ljava/util/Set;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/LockStateController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/LockStateController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/LockStateController;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/LockStateController;->removeUserWithBrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/LockStateController;->sInstance:Lcom/android/systemui/recents/LockStateController;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v1, "LockStateController"

    iput-object v1, p0, Lcom/android/systemui/recents/LockStateController;->TAG:Ljava/lang/String;

    .line 24
    const-string/jumbo v1, "tasklockstate"

    iput-object v1, p0, Lcom/android/systemui/recents/LockStateController;->TASK_LOCK_STATE:Ljava/lang/String;

    .line 25
    const-string/jumbo v1, "task_lock_list"

    iput-object v1, p0, Lcom/android/systemui/recents/LockStateController;->TASK_LOCK_LIST_KEY:Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "task_lock_list_with_userid"

    iput-object v1, p0, Lcom/android/systemui/recents/LockStateController;->TASK_LOCK_LIST_KEY_WITH_USERID:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/recents/LockStateController;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 44
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/LockStateController;->mHandler:Landroid/os/Handler;

    .line 45
    const-string/jumbo v1, "tasklockstate"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/LockStateController;->mSp:Landroid/content/SharedPreferences;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/recents/LockStateController;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "task_lock_list"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/LockStateController;->mLockedList:Ljava/util/Set;

    .line 48
    iget-object v1, p0, Lcom/android/systemui/recents/LockStateController;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "task_lock_list_with_userid"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/recents/LockStateController;->initPackageNameList()V

    .line 52
    return-void
.end method

.method private appendUserWithBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 197
    if-nez p1, :cond_0

    return-object v1

    .line 199
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private appendUserWithoutBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 190
    if-nez p1, :cond_0

    return-object v1

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/LockStateController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    sget-object v0, Lcom/android/systemui/recents/LockStateController;->sInstance:Lcom/android/systemui/recents/LockStateController;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/systemui/recents/LockStateController;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/LockStateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/LockStateController;->sInstance:Lcom/android/systemui/recents/LockStateController;

    .line 145
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/LockStateController;->sInstance:Lcom/android/systemui/recents/LockStateController;

    return-object v0
.end method

.method private initPackageNameList()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameList:Ljava/util/List;

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    .line 60
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "pkgName":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameList:Ljava/util/List;

    aget-object v6, v2, v9

    const-string/jumbo v7, "{"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "pkgName":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "LockStateController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init userid tasklock list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 70
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "userId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .restart local v0    # "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/recents/LockStateController;->appendUserWithBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    .restart local v2    # "pkgName":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    aget-object v6, v2, v9

    invoke-direct {p0, v6, v4}, Lcom/android/systemui/recents/LockStateController;->appendUserWithoutBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "pkgName":[Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/LockStateController;->writeToProvider()V

    .line 89
    .end local v3    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v4    # "userId":Ljava/lang/String;
    :cond_2
    return-void

    .line 80
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .restart local v0    # "name":Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 82
    .restart local v2    # "pkgName":[Ljava/lang/String;
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .restart local v4    # "userId":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 85
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    aget-object v6, v2, v9

    invoke-direct {p0, v6, v4}, Lcom/android/systemui/recents/LockStateController;->appendUserWithoutBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private removeUserWithBrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 204
    if-nez p1, :cond_0

    return-object v1

    .line 206
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "removed":Ljava/lang/String;
    return-object v0
.end method

.method private writeToProvider()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "N":I
    const-string/jumbo v3, ""

    .line 216
    .local v3, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 217
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 222
    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    if-lez v0, :cond_2

    .line 227
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "#"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 230
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 231
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->writeLockedListToProvider(Ljava/lang/String;)V

    .line 232
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 236
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedList:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 237
    .local v1, "locked":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LOCKED RECENT APP list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 240
    const-string/jumbo v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 245
    .local v2, "lockedWithId":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "with userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 248
    const-string/jumbo v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v4, v2, v0

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg name list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 254
    const-string/jumbo v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 257
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "with userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 260
    const-string/jumbo v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 263
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 264
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 265
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RECENT_TASK_LOCKED_LIST: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 268
    return-void
.end method

.method public getTaskLockState(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 130
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "userId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 133
    .local v0, "taskLocked":Z
    iget-object v2, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/recents/LockStateController;->appendUserWithBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    .end local v0    # "taskLocked":Z
    :cond_0
    return v0
.end method

.method public isTaskLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeTaskLockState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 150
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/LockStateController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/LockStateController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/recents/LockStateController$1;-><init>(Lcom/android/systemui/recents/LockStateController;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public setTaskLockState(Ljava/lang/String;ZI)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isTaskLocked"    # Z
    .param p3, "id"    # I

    .prologue
    const/4 v8, 0x0

    .line 92
    const-string/jumbo v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "pkgName":[Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "userId":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/LockStateController;->appendUserWithBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "nameWithId":Ljava/lang/String;
    aget-object v4, v2, v8

    if-nez v4, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    if-eqz p2, :cond_1

    .line 103
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedList:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameList:Ljava/util/List;

    aget-object v5, v2, v8

    const-string/jumbo v6, "{"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    aget-object v5, v2, v8

    invoke-direct {p0, v5, v3}, Lcom/android/systemui/recents/LockStateController;->appendUserWithoutBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string/jumbo v4, "task_lock_list"

    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedList:Ljava/util/Set;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string/jumbo v4, "task_lock_list_with_userid"

    iget-object v5, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/recents/LockStateController;->writeToProvider()V

    .line 126
    return-void

    .line 110
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedList:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameList:Ljava/util/List;

    aget-object v5, v2, v8

    const-string/jumbo v6, "{"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v4, p0, Lcom/android/systemui/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    aget-object v5, v2, v8

    invoke-direct {p0, v5, v3}, Lcom/android/systemui/recents/LockStateController;->appendUserWithoutBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
