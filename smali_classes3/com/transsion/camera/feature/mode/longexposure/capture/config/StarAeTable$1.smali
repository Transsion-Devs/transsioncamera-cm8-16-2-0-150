.class Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable;
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
        "Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 17

    move-object/from16 v0, p0

    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    new-instance v2, Landroid/util/Range;

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v6, 0xc8

    const-wide v7, 0x2540be400L

    invoke-direct {v5, v6, v7, v8}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Landroid/util/Range;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v2, v9, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v3, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x190

    const-wide v11, 0x37e11d600L

    invoke-direct {v3, v10, v11, v12}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v2, Landroid/util/Range;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v10, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v13, 0x320

    .line 33
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 28
    invoke-direct {v10, v13, v11, v12}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v2, Landroid/util/Range;

    const v10, -0x7fffffff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v2, v10, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v13, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v15, 0x640

    invoke-direct {v13, v15, v11, v12}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Landroid/util/Range;

    const/16 v11, -0x96

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, -0x64

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v14, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v11, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v7, 0x1dcd6500

    invoke-direct {v11, v5, v7, v8}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v2, Landroid/util/Range;

    const/16 v11, 0x1f4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v2, v11, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v13, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v7, 0x3b9aca00

    invoke-direct {v13, v5, v7, v8}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v9, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v13, 0x77359400

    invoke-direct {v7, v5, v13, v14}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v3, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide v13, 0x12a05f200L

    invoke-direct {v7, v6, v13, v14}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v10, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v7, 0x96

    const-wide v13, 0x2540be400L

    invoke-direct {v6, v7, v13, v14}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v2, Landroid/util/Range;

    const/16 v6, -0x50

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v12, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    new-instance v2, Landroid/util/Range;

    const/16 v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v8, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v12, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v13, 0x14dc9380

    const/16 v15, 0x32

    invoke-direct {v12, v15, v13, v14}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v11, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v12, 0x1dcd6500

    invoke-direct {v8, v15, v12, v13}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v9, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v11, 0x29b92700

    invoke-direct {v8, v5, v11, v12}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v10, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v11, 0x59682f00

    invoke-direct {v8, v5, v11, v12}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Landroid/util/Range;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v6, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v10, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v11, 0x5f5e100

    invoke-direct {v6, v5, v11, v12}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v2, Landroid/util/Range;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v8, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v10, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v11, 0x1312d00

    invoke-direct {v8, v5, v11, v12}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v6, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v10, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v4, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v8, 0x989680

    invoke-direct {v4, v5, v8, v9}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v2, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
