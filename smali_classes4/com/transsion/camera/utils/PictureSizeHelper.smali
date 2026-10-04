.class public abstract Lcom/transsion/camera/utils/PictureSizeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_RATIO:Ljava/lang/Double;

.field private static final RATIO_16_9_D:Ljava/lang/Double;

.field private static final RATIO_1_1_D:Ljava/lang/Double;

.field private static final RATIO_4_3_D:Ljava/lang/Double;

.field private static final RATIO_FULL_MAP:Landroid/util/ArrayMap;

.field private static final RATIO_MAP:Landroid/util/ArrayMap;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mLock:Ljava/lang/Object;

.field private static final sMaxCountMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PictureSizeHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_16_9_D:Ljava/lang/Double;

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_4_3_D:Ljava/lang/Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_1_1_D:Ljava/lang/Double;

    const-wide/16 v3, 0x0

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/utils/PictureSizeHelper;->INVALID_RATIO:Ljava/lang/Double;

    .line 34
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_MAP:Landroid/util/ArrayMap;

    .line 37
    const-string v4, "1:1"

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v4, "4:3"

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v4, "16:9"

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    .line 40
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "3:2"

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v5, 0x3ffaaaaaaaaaaaabL    # 1.6666666666666667

    .line 41
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "5:3"

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v5, 0x3ff25d4c3b2a1908L    # 1.1477777777777778

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "10:9"

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 44
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "18:9"

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v7, 0x400071c71c71c71cL    # 2.0555555555555554

    .line 45
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "18.5:9"

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v7, 0x4000aaaaaaaaaaabL    # 2.0833333333333335

    .line 46
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "18.75:9"

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v7, 0x4000e38e38e38e39L    # 2.111111111111111

    .line 47
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "19:9"

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v7, 0x4001333333333334L    # 2.1500000000000004

    .line 48
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "19.35:9"

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v7, 0x4001555555555555L    # 2.1666666666666665

    .line 49
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "19.5:9"

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v7, 0x400182d82d82d82dL    # 2.1888888888888887

    .line 50
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "19.7:9"

    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v9, 0x400199999999999aL    # 2.2

    .line 51
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "19.8:9"

    invoke-virtual {v3, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v9, 0x40020b60b60b60b6L    # 2.2555555555555555

    .line 52
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "20.3:9"

    invoke-virtual {v3, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v11, 0x4001e26af37c048dL    # 2.2355555555555555

    .line 53
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-string v12, "20.12:9"

    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v11, 0x4001c71c71c71c72L    # 2.2222222222222223

    .line 54
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-string v12, "20:9"

    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v11, 0x400238e38e38e38eL    # 2.2777777777777777

    .line 55
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-string v12, "20.5:9"

    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v11, 0x40024fa4fa4fa4fbL    # 2.288888888888889

    .line 56
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-string v12, "20.6:9"

    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v11, 0x4002e38e38e38e39L    # 2.361111111111111

    .line 57
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-string v12, "21:9"

    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v13, 0x40038e38e38e38e4L    # 2.4444444444444446

    .line 58
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const-string v14, "22:9"

    invoke-virtual {v3, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v13, 0x3ff999999999999aL    # 1.6

    .line 59
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const-string v14, "16:10"

    invoke-virtual {v3, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_FULL_MAP:Landroid/util/ArrayMap;

    .line 64
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v3, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->sMaxCountMap:Landroid/util/ArrayMap;

    const/4 v3, 0x1

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static area(Landroid/util/Size;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 234
    :cond_4
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method private static filterSizes(Ljava/util/List;)Ljava/util/List;
    .registers 12

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 88
    sget-object v1, Lcom/transsion/camera/utils/PictureSizeHelper;->sMaxCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 93
    :cond_27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->valueToSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 97
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 99
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    sub-double v7, v2, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v5

    if-eqz v5, :cond_7c

    const-wide v9, 0x3f947ae147ae147bL    # 0.02

    goto :goto_81

    :cond_7c
    const-wide v9, 0x3f8cac083126e979L    # 0.014

    :goto_81
    cmpg-double v5, v7, v9

    if-gez v5, :cond_4e

    .line 100
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 106
    :cond_89
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_96
    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 110
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b5

    goto :goto_96

    .line 113
    :cond_b5
    sget-object v3, Lcom/transsion/camera/utils/PictureSizeHelper;->sMaxCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_96

    .line 115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->pickUpToMaxCount(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_96

    .line 119
    :cond_cb
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d8
    if-ge v2, v1, :cond_ea

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/util/Size;

    .line 123
    invoke-static {v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->sizeToStr(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    :cond_ea
    return-object v0
.end method

.method public static filterValuesOnShown(Ljava/util/List;Ljava/lang/String;Landroid/util/Size;Z)Ljava/util/List;
    .registers 5

    .line 293
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/PictureSizeHelper;->initScreenRatio(Landroid/util/Size;Z)V

    .line 295
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 296
    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->filterSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 297
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private static findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;
    .registers 11

    .line 337
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->INVALID_RATIO:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 338
    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_MAP:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 339
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v3

    if-gez v8, :cond_15

    .line 342
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-wide v3, v6

    goto :goto_15

    .line 345
    :cond_38
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result p0

    if-eqz p0, :cond_44

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    goto :goto_49

    :cond_44
    const-wide v5, 0x3f8cac083126e979L    # 0.014

    :goto_49
    cmpl-double p0, v3, v5

    if-lez p0, :cond_53

    .line 347
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->INVALID_RATIO:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 349
    :cond_53
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static findFullRatioFromString(Ljava/lang/String;)Z
    .registers 4

    .line 174
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_FULL_MAP:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    .line 177
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full ratio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public static getFullScreenRatio()Ljava/lang/String;
    .registers 3

    .line 256
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_FULL_MAP:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 260
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 262
    :cond_1b
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 263
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 267
    :cond_36
    const-string v0, ""

    return-object v0
.end method

.method public static getPictureRatioCustomizedIndia()Ljava/lang/String;
    .registers 2

    .line 321
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMarket()Ljava/lang/String;

    move-result-object v0

    .line 322
    const-string v1, "in"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 323
    invoke-static {}, Lcom/transsion/camera/utils/PictureSizeHelper;->getFullScreenRatio()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_11
    const-string v0, "4:3"

    return-object v0
.end method

.method public static getPictureRatioDefaultForStore(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    .line 330
    invoke-static {}, Lcom/transsion/camera/utils/PictureSizeHelper;->getPictureRatioCustomizedIndia()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 332
    :cond_7
    const-string p0, "4:3"

    return-object p0
.end method

.method public static getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 146
    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->valueToSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p0

    .line 149
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_MAP:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 150
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_28

    .line 149
    :cond_26
    const-string p0, ""

    .line 152
    :goto_28
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStandardAspectRatioOfString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public static initScreenRatio(Landroid/util/Size;Z)V
    .registers 5

    const/4 v0, 0x1

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 271
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 272
    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    .line 273
    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->isMaxSensorSize16_9(Landroid/util/Size;)Z

    move-result p0

    .line 275
    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->sMaxCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    if-nez p0, :cond_22

    .line 277
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_4_3_D:Ljava/lang/Double;

    invoke-virtual {v2, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 279
    :cond_22
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_16_9_D:Ljava/lang/Double;

    invoke-virtual {v2, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :goto_27
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_1_1_D:Ljava/lang/Double;

    invoke-virtual {v2, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_33

    .line 283
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_16_9_D:Ljava/lang/Double;

    invoke-virtual {v2, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_33
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_MAP:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    .line 286
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    .line 287
    invoke-virtual {v2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    return-void
.end method

.method public static isFullRatio(D)Z
    .registers 6

    .line 301
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    goto :goto_11

    :cond_c
    const-wide v0, 0x3f8cac083126e979L    # 0.014

    .line 302
    :goto_11
    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_4_3_D:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v0

    if-ltz v2, :cond_42

    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_1_1_D:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v0

    if-ltz v2, :cond_42

    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_16_9_D:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v0

    if-ltz p0, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public static isFullScreenRatioChanged(Ljava/lang/String;)Z
    .registers 5

    .line 238
    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->findFullRatioFromString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 243
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    .line 246
    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_FULL_MAP:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 247
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_25

    .line 246
    :cond_23
    const-string v0, ""

    .line 249
    :goto_25
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    return v1
.end method

.method public static isMaxSensorSize16_9(Landroid/util/Size;)Z
    .registers 7

    .line 129
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    .line 130
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result p0

    if-eqz p0, :cond_17

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    goto :goto_1c

    :cond_17
    const-wide v2, 0x3f8cac083126e979L    # 0.014

    .line 131
    :goto_1c
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_16_9_D:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public static isSmallRatio(D)Z
    .registers 6

    .line 316
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    goto :goto_11

    :cond_c
    const-wide v0, 0x3f8cac083126e979L    # 0.014

    .line 317
    :goto_11
    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_1_1_D:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private static pickUpToMaxCount(Ljava/util/List;I)Ljava/util/List;
    .registers 12

    if-nez p1, :cond_3

    return-object p0

    .line 189
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 190
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 191
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    if-ne p1, v2, :cond_16

    goto :goto_77

    .line 196
    :cond_16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v2, v1

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->area(Landroid/util/Size;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    .line 198
    invoke-static {v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->area(Landroid/util/Size;)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v4

    if-gez v6, :cond_5e

    .line 202
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 203
    invoke-static {v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->area(Landroid/util/Size;)I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v6, v4

    invoke-static {v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->area(Landroid/util/Size;)I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v4, v8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_5b

    .line 204
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 206
    :cond_5b
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_5e
    :goto_5e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, p1, :cond_66

    move-object v2, v3

    goto :goto_68

    :cond_66
    move-object v2, v3

    goto :goto_1b

    .line 216
    :cond_68
    :goto_68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, p1, :cond_77

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    .line 217
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77
    :goto_77
    return-object v0
.end method

.method private static sizeToStr(Landroid/util/Size;)Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static valueToSize(Ljava/lang/String;)Landroid/util/Size;
    .registers 1

    .line 223
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method
