.class Lcom/android/settings/search/Index$UpdateData;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateData"
.end annotation


# instance fields
.field public dataToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public dataToUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public forceUpdate:Z

.field public fullIndex:Z

.field public nonIndexableKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field softwareUpgraded:Z

.field public versionInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-boolean v1, p0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->fullIndex:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/settings/search/Index$UpdateData;->softwareUpgraded:Z

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 199
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->versionInfo:Landroid/util/ArrayMap;

    .line 201
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/search/Index$UpdateData;)V
    .locals 2
    .param p1, "other"    # Lcom/android/settings/search/Index$UpdateData;

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-boolean v1, p0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->fullIndex:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/settings/search/Index$UpdateData;->softwareUpgraded:Z

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 207
    iget-boolean v0, p1, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 208
    iget-boolean v0, p1, Lcom/android/settings/search/Index$UpdateData;->fullIndex:Z

    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->fullIndex:Z

    .line 210
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/settings/search/Index$UpdateData;->versionInfo:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->versionInfo:Landroid/util/ArrayMap;

    .line 211
    iget-boolean v0, p1, Lcom/android/settings/search/Index$UpdateData;->softwareUpgraded:Z

    iput-boolean v0, p0, Lcom/android/settings/search/Index$UpdateData;->softwareUpgraded:Z

    .line 213
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 223
    iput-boolean v1, p0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/settings/search/Index$UpdateData;->fullIndex:Z

    .line 226
    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateData;->versionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 227
    iput-boolean v1, p0, Lcom/android/settings/search/Index$UpdateData;->softwareUpgraded:Z

    .line 229
    return-void
.end method

.method public copy()Lcom/android/settings/search/Index$UpdateData;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/android/settings/search/Index$UpdateData;

    invoke-direct {v0, p0}, Lcom/android/settings/search/Index$UpdateData;-><init>(Lcom/android/settings/search/Index$UpdateData;)V

    return-object v0
.end method
