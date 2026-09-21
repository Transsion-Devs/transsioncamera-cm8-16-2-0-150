.class Lcom/transsion/camera/feature/mode/longexposure/capture/config/LightPaintingAeTable$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/config/LightPaintingAeTable;
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
    .registers 19

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

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v7, 0x1f4

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-wide/32 v9, 0x5f5e100

    .line 28
    invoke-direct {v6, v7, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v3, Landroid/util/Range;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v11, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x1c2

    invoke-direct {v11, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v3, Landroid/util/Range;

    const/16 v11, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v3, v6, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v14, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x190

    invoke-direct {v14, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v3, Landroid/util/Range;

    const/16 v14, 0xa0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v11, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x15e

    invoke-direct {v11, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v3, Landroid/util/Range;

    const v11, 0x7fffffff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v3, v14, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v15, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v7, 0x12c

    invoke-direct {v15, v7, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v3, Landroid/util/Range;

    const v15, -0x7fffffff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v3, v15, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Landroid/util/Range;

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v15, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 39
    new-instance v7, Landroid/util/Range;

    invoke-direct {v7, v15, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    invoke-direct {v0, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v15, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x258

    invoke-direct {v7, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x1f4

    invoke-direct {v7, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v6, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x1c2

    invoke-direct {v7, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v13, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x190

    invoke-direct {v7, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v14, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x12c

    invoke-direct {v7, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v2, Landroid/util/Range;

    const/16 v7, 0x9c4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v8, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    move-object/from16 v16, v4

    const/16 v4, 0x1c2

    invoke-direct {v12, v4, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v4, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x190

    invoke-direct {v4, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v6, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v4, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x15e

    invoke-direct {v4, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v13, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v4, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x12c

    invoke-direct {v4, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v14, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v4, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x190

    invoke-direct {v4, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v7, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/util/Range;

    const/16 v2, -0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v15, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v12, 0x190

    invoke-direct {v7, v12, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v15, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    new-instance v4, Landroid/util/Range;

    move-object/from16 v7, v16

    invoke-direct {v4, v7, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v14, 0x1f4

    invoke-direct {v12, v14, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v14, 0x1c2

    invoke-direct {v12, v14, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v6, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v14, 0x190

    invoke-direct {v12, v14, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v4, Landroid/util/Range;

    const/16 v12, 0xb4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v4, v13, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v14, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    move-object/from16 v16, v15

    const/16 v15, 0x15e

    invoke-direct {v14, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v12, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v14, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x12c

    invoke-direct {v14, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v4, Landroid/util/Range;

    const/16 v14, 0x7d0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v4, v8, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v7, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v15, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    move-object/from16 v17, v7

    const/16 v7, 0x190

    invoke-direct {v15, v7, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x15e

    invoke-direct {v7, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v6, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x12c

    invoke-direct {v7, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v13, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0xfa

    invoke-direct {v7, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v12, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0xc8

    invoke-direct {v7, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v14, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Landroid/util/Range;

    const/16 v4, -0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v3, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    new-instance v2, Landroid/util/Range;

    move-object/from16 v7, v16

    invoke-direct {v2, v7, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v15, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v3, 0x15e

    invoke-direct {v15, v3, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    new-instance v2, Landroid/util/Range;

    move-object/from16 v3, v17

    invoke-direct {v2, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v15, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    move-object/from16 v17, v7

    const/16 v7, 0x1f4

    invoke-direct {v15, v7, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x1c2

    invoke-direct {v7, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v6, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x190

    invoke-direct {v7, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v13, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x15e

    invoke-direct {v7, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v12, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x12c

    invoke-direct {v7, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v8, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x190

    invoke-direct {v7, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x15e

    invoke-direct {v5, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v6, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x12c

    invoke-direct {v5, v15, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v13, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v6, 0xfa

    invoke-direct {v5, v6, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v12, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v6, 0xc8

    invoke-direct {v5, v6, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v14, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v4, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 109
    new-instance v4, Landroid/util/Range;

    move-object/from16 v7, v17

    invoke-direct {v4, v7, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v6, 0x64

    invoke-direct {v5, v6, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v7, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v1, Landroid/util/Range;

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v2, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v7, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v6, 0x32

    invoke-direct {v5, v6, v9, v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v7, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v4, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v2, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
