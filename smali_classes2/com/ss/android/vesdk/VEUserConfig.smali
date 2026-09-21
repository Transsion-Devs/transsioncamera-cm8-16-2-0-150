.class public Lcom/ss/android/vesdk/VEUserConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEUserConfig$ConfigID;,
        Lcom/ss/android/vesdk/VEUserConfig$DataType;,
        Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;
    }
.end annotation


# instance fields
.field private configItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ss/android/vesdk/VEUserConfig$ConfigID;",
            "Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEUserConfig;->configItems:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem<",
            "*>;)",
            "Lcom/ss/android/vesdk/VEUserConfig;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/ss/android/vesdk/VEUserConfig;->configItems:Ljava/util/Map;

    iget-object v1, p1, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->id:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getConfigIDs()[Lcom/ss/android/vesdk/VEUserConfig$ConfigID;
    .registers 2

    .line 37
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUserConfig;->configItems:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 39
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getConfigItem(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;)Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/vesdk/VEUserConfig$ConfigID;",
            ")",
            "Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem<",
            "*>;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUserConfig;->configItems:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    return-object p0
.end method

.method public getConfigItems()[Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem<",
            "*>;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUserConfig;->configItems:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 49
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 50
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method
