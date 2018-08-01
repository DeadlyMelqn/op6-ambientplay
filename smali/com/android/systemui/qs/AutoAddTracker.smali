.class public Lcom/android/systemui/qs/AutoAddTracker;
.super Ljava/lang/Object;
.source "AutoAddTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/AutoAddTracker$1;
    }
.end annotation


# static fields
.field private static final CONVERT_PREFS:[[Ljava/lang/String;


# instance fields
.field private final mAutoAdded:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field protected final mObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/AutoAddTracker;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/AutoAddTracker;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/AutoAddTracker;)Ljava/util/Collection;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/AutoAddTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->getAdded()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    .line 41
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QsHotspotAdded"

    aput-object v2, v1, v3

    const-string/jumbo v2, "hotspot"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 42
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QsDataSaverAdded"

    aput-object v2, v1, v3

    const-string/jumbo v2, "saver"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 43
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QsInvertColorsAdded"

    aput-object v2, v1, v3

    const-string/jumbo v2, "inversion"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 44
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QsWorkAdded"

    aput-object v2, v1, v3

    const-string/jumbo v2, "work"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 45
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QsNightDisplayAdded"

    aput-object v2, v1, v3

    const-string/jumbo v2, "night"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 40
    sput-object v0, Lcom/android/systemui/qs/AutoAddTracker;->CONVERT_PREFS:[[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v1, Lcom/android/systemui/qs/AutoAddTracker$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/qs/AutoAddTracker$1;-><init>(Lcom/android/systemui/qs/AutoAddTracker;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->mObserver:Landroid/database/ContentObserver;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    .line 53
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->getAdded()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    .line 54
    sget-object v3, Lcom/android/systemui/qs/AutoAddTracker;->CONVERT_PREFS:[[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 55
    .local v0, "convertPref":[Ljava/lang/String;
    aget-object v5, v0, v2

    invoke-static {p1, v5, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    .line 57
    aget-object v5, v0, v2

    invoke-static {p1, v5, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "convertPref":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 61
    const-string/jumbo v3, "qs_auto_tiles"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/AutoAddTracker;->mObserver:Landroid/database/ContentObserver;

    .line 60
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    return-void
.end method

.method private getAdded()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "qs_auto_tiles"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "current":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 88
    :cond_0
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private saveTiles()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qs_auto_tiles"

    .line 80
    const-string/jumbo v2, ","

    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    return-void
.end method


# virtual methods
.method public isAdded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tile"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setTileAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "tile"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->saveTiles()V

    .line 72
    :cond_0
    return-void
.end method
