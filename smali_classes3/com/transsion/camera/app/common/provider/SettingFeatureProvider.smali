.class public Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SETTING_KEY_ORDER:Ljava/util/List;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sCachedSettingClassesGroup:Lcom/google/common/collect/Multimap;


# instance fields
.field private mStartSettingClassLists:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$xij8T8q29G0UME7WWX6OB-TciE0(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)Z
    .registers 2

    .line 84
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingFeatureProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 31
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Lcom/google/common/collect/Multimap;

    .line 33
    const-string v0, "key_video_facebeauty"

    const-string v1, "key_video_makeup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->SETTING_KEY_ORDER:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->mStartSettingClassLists:Ljava/util/ArrayList;

    return-void
.end method

.method public static cacheAllSettingEntryClasses([Ljava/lang/String;)V
    .registers 8

    .line 95
    sget-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cacheAllSettingEntryClasses ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 97
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_6f

    aget-object v2, p0, v1

    .line 98
    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 101
    :try_start_18
    const-class v4, Lcom/transsion/camera/app/common/provider/SettingClassCategory;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/SettingClassCategory;

    if-eqz v4, :cond_6c

    .line 103
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/SettingClassCategory;->group()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->splitToBitList(J)Ljava/util/List;

    move-result-object v4

    .line 104
    sget-object v5, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Lcom/google/common/collect/Multimap;

    invoke-interface {v5, v3}, Lcom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 105
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 106
    sget-object v6, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Lcom/google/common/collect/Multimap;

    invoke-interface {v6, v5, v3}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_36

    :catch_4b
    move-exception v2

    goto :goto_69

    .line 110
    :cond_4d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mCreateVideoSurfaceInPhotoMode:Z

    if-eqz v4, :cond_6c

    .line 111
    const-string v4, "com.transsion.camera.feature.setting.videoquality"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 112
    sget-object v2, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Lcom/google/common/collect/Multimap;

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_68} :catch_4b

    goto :goto_6c

    .line 118
    :goto_69
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6c
    :goto_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 122
    :cond_6f
    sget-object p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "cacheAllSettingEntryClasses -- "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private createSettings(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .registers 9

    .line 60
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 62
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_15

    .line 66
    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 67
    const-class v4, Lcom/transsion/camera/app/common/provider/SettingClassCategory;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/SettingClassCategory;

    if-eqz v3, :cond_15

    .line 68
    invoke-interface {v3, v0}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->isSupport(Lcom/transsion/camera/adapter/ICameraDeviceInfo;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v2, :cond_15

    .line 69
    invoke-interface {v3}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->createFeature()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    if-eqz v3, :cond_15

    .line 71
    invoke-interface {v2}, Lcom/transsion/camera/app/common/provider/SettingClassCategory;->group()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setSettingGroup(J)V

    .line 72
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_52
    return-object p0
.end method

.method private static sortSettings(Ljava/util/List;)Ljava/util/List;
    .registers 6

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    sget-object v1, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->SETTING_KEY_ORDER:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    if-eqz v2, :cond_10

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 90
    :cond_3d
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public createOtherSettings(Landroid/content/Context;)Ljava/util/List;
    .registers 4

    .line 51
    sget-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 52
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 53
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->mStartSettingClassLists:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 54
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->createSettings(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sortSettings(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public createStartSettings(Landroid/content/Context;J)Ljava/util/List;
    .registers 6

    .line 41
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/CameraUtil;->splitToBitList(J)Ljava/util/List;

    move-result-object p2

    .line 42
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->mStartSettingClassLists:Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p3}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 46
    :cond_23
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->mStartSettingClassLists:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->createSettings(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sortSettings(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
