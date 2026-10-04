.class public Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SETTING_KEY_ORDER:Ljava/util/List;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sAllSettingClassesLists:Ljava/util/ArrayList;

.field private static sCachedSettingClassesGroup:Ljava/util/Map;


# instance fields
.field private mStartSettingClassLists:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$p-PJZvDlLXqMElP_zIvZ0NPK0I4(Ljava/lang/Long;)Ljava/util/Set;
    .registers 1

    .line 112
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$xij8T8q29G0UME7WWX6OB-TciE0(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)Z
    .registers 2

    .line 80
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingFeatureProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Ljava/util/Map;

    .line 28
    const-string v0, "key_video_facebeauty"

    const-string v1, "key_video_makeup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->SETTING_KEY_ORDER:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sAllSettingClassesLists:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->mStartSettingClassLists:Ljava/util/ArrayList;

    return-void
.end method

.method public static cacheAllSettingEntryClasses([Ljava/lang/String;)V
    .registers 5

    .line 91
    sget-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cacheAllSettingEntryClasses ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    sget-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sAllSettingClassesLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    array-length v0, p0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_28

    aget-object v2, p0, v1

    .line 95
    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 97
    sget-object v3, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sAllSettingClassesLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_22
    invoke-static {v2}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->cacheSettingEntryClass(Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 101
    :cond_28
    sget-object p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "cacheAllSettingEntryClasses -- "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static cacheSettingEntryClass(Ljava/lang/Class;)V
    .registers 5

    if-eqz p0, :cond_3c

    .line 107
    :try_start_2
    const-class v0, Lcom/transsion/camera/app/common/provider/SettingClassCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/SettingClassCategory;

    if-eqz v0, :cond_3c

    .line 109
    invoke-interface {v0}, Lcom/transsion/camera/app/common/provider/SettingClassCategory;->group()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->splitToBitList(J)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 111
    sget-object v2, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Ljava/util/Map;

    .line 112
    new-instance v3, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 111
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 112
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_38

    goto :goto_18

    :catch_38
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3c
    return-void
.end method

.method private createSettings(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .registers 9

    .line 56
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 60
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

    .line 62
    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 63
    const-class v4, Lcom/transsion/camera/app/common/provider/SettingClassCategory;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/SettingClassCategory;

    if-eqz v3, :cond_15

    .line 64
    invoke-interface {v3, v0}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->isSupport(Lcom/transsion/camera/adapter/ICameraDeviceInfo;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v2, :cond_15

    .line 65
    invoke-interface {v3}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->createFeature()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    if-eqz v3, :cond_15

    .line 67
    invoke-interface {v2}, Lcom/transsion/camera/app/common/provider/SettingClassCategory;->group()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setSettingGroup(J)V

    .line 68
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_52
    return-object p0
.end method

.method private static sortSettings(Ljava/util/List;)Ljava/util/List;
    .registers 6

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 79
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

    .line 80
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    if-eqz v2, :cond_10

    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 86
    :cond_3d
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public createOtherSettings(Landroid/content/Context;)Ljava/util/List;
    .registers 4

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sAllSettingClassesLists:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->mStartSettingClassLists:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 51
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->createSettings(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sortSettings(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public createStartSettings(Landroid/content/Context;J)Ljava/util/List;
    .registers 5

    .line 37
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/CameraUtil;->splitToBitList(J)Ljava/util/List;

    move-result-object p2

    .line 38
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 39
    sget-object v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sCachedSettingClassesGroup:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-eqz p3, :cond_8

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->mStartSettingClassLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 44
    :cond_27
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->mStartSettingClassLists:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->createSettings(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->sortSettings(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
