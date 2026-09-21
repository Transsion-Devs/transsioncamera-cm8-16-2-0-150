.class Lcom/transsion/camera/feature/mode/longexposure/capture/config/TrafficAeTable$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/config/TrafficAeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Landroid/util/Range<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/Map<",
        "Landroid/util/Range<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/Map<",
        "Landroid/util/Range<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 18

    move-object/from16 v0, p0

    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 28
    new-instance v3, Landroid/util/Range;

    const v4, -0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v7, 0x7d0

    const-wide/32 v8, 0x5f5e100

    invoke-direct {v6, v7, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Landroid/util/Range;

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    new-instance v6, Landroid/util/Range;

    invoke-direct {v6, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x320

    invoke-direct {v7, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v6, Landroid/util/Range;

    invoke-direct {v6, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v2, Landroid/util/Range;

    const/16 v6, -0x50

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 42
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x190

    invoke-direct {v7, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Landroid/util/Range;

    const/16 v3, -0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    new-instance v6, Landroid/util/Range;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v11, 0x1e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v6, v7, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    invoke-direct {v12, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v6, Landroid/util/Range;

    const/16 v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v6, v11, v10}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v13, 0x15e

    invoke-direct {v12, v13, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v6, Landroid/util/Range;

    const/16 v12, 0x5a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v6, v10, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v13, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v14, 0x12c

    invoke-direct {v13, v14, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v6, Landroid/util/Range;

    const/16 v13, 0x78

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v6, v12, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0xfa

    invoke-direct {v12, v15, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v6, Landroid/util/Range;

    const/16 v12, 0x96

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v6, v13, v15}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v14, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0xc8

    invoke-direct {v14, v12, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v6, Landroid/util/Range;

    const/16 v14, 0xb4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v6, v15, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v15, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x96

    invoke-direct {v15, v12, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v6, Landroid/util/Range;

    invoke-direct {v6, v14, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x64

    invoke-direct {v12, v15, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v6, Landroid/util/Range;

    const/16 v12, 0x8fc

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v6, v12, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 59
    new-instance v6, Landroid/util/Range;

    invoke-direct {v6, v7, v10}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v15, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    move-object/from16 v16, v4

    const/16 v4, 0xc8

    invoke-direct {v15, v4, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v10, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x96

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v13, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x64

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v14, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x32

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v7, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v2, Landroid/util/Range;

    const/16 v4, -0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 70
    new-instance v3, Landroid/util/Range;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v7, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v15, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x12c

    invoke-direct {v15, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v3, Landroid/util/Range;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v3, v6, v10}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0xfa

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v3, Landroid/util/Range;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v10, 0xf

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v3, v6, v10}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0xc8

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v3, Landroid/util/Range;

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v10, 0x19

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v3, v6, v10}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x96

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v3, Landroid/util/Range;

    const/16 v6, 0x19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v6, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x64

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v14, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x32

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v12, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v7, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0xc8

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v11, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x96

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v13, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x64

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v14, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x32

    invoke-direct {v6, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v3, Landroid/util/Range;

    move-object/from16 v6, v16

    invoke-direct {v3, v6, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v4, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v6, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v4, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x32

    invoke-direct {v4, v10, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v6, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v7, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
