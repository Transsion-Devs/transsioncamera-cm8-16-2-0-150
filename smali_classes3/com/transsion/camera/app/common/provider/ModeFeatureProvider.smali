.class public Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sCachedModeEntryClasses:Ljava/util/List;


# instance fields
.field private mAllModeEntries:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeFeatureProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->sCachedModeEntryClasses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->mAllModeEntries:Ljava/util/LinkedHashMap;

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->loadFeatures(Landroid/content/Context;)V

    return-void
.end method

.method public static cacheAllModeEntryClasses([Ljava/lang/String;)V
    .registers 3

    .line 95
    sget-object v0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->sCachedModeEntryClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    sget-object v0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->sCachedModeEntryClasses:Ljava/util/List;

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->cacheClasses([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    sget-object p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheAllModeEntryClasses size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->sCachedModeEntryClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static loadClasses(Ljava/util/List;Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .registers 6

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_11

    .line 85
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    if-eqz v2, :cond_11

    .line 87
    invoke-interface {v2}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_33
    return-object v0
.end method

.method private loadFeatures(Landroid/content/Context;)V
    .registers 3

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->mAllModeEntries:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->sCachedModeEntryClasses:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->loadClasses(Ljava/util/List;Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public createModeFeatureResources()Ljava/util/List;
    .registers 7

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->mAllModeEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 59
    invoke-interface {v3}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->isSupport()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 61
    invoke-interface {v3}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 63
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 67
    :cond_2f
    sget-object p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createModeFeatureResources size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cost time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method public createModeFeatureSync(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
    .registers 7

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->mAllModeEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 38
    sget-object v0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createModeFeatureSync],key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",entry = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p0, :cond_2a

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_2a
    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->createFeature(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public destroyModeFeatureResources()V
    .registers 3

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->mAllModeEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 73
    invoke-interface {v0}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 74
    invoke-interface {v0}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->unInitResource()V

    goto :goto_a

    .line 77
    :cond_20
    sget-object p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "destroyFeatureResources"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getAllModeEntryName()Ljava/util/Set;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->mAllModeEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public updateModeFeatureSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->mAllModeEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 47
    sget-object v0, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeFeatureSync], key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",entry = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p0, :cond_29

    return-void

    .line 51
    :cond_29
    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->updateFeature(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
