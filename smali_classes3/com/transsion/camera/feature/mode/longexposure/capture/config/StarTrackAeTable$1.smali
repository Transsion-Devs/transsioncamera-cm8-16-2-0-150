.class Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarTrackAeTable$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarTrackAeTable;
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
    .registers 16

    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v1, Landroid/util/Range;

    const v2, -0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v4, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v5, 0xc80

    const-wide v6, 0x37e11d600L

    invoke-direct {v4, v5, v6, v7}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Landroid/util/Range;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v9, 0x640

    invoke-direct {v8, v9, v6, v7}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v1, Landroid/util/Range;

    const/16 v8, 0xb4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v1, v5, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v9, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x320

    invoke-direct {v9, v10, v6, v7}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Landroid/util/Range;

    const v9, 0x7fffffff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const/16 v10, 0x190

    .line 37
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-wide v12, 0x2540be400L

    .line 30
    invoke-direct {v8, v10, v12, v13}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Landroid/util/Range;

    const/16 v8, -0x96

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v14, -0x64

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v1, v8, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    invoke-direct {v8, v10, v6, v7}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    invoke-direct {v6, v10, v12, v13}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Landroid/util/Range;

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    invoke-direct {v8, v6, v12, v13}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v7, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide v12, 0x12a05f200L

    invoke-direct {v7, v6, v12, v13}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v11, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v7, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    invoke-direct {v7, v4, v12, v13}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Landroid/util/Range;

    const/16 v7, -0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v14, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v2, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide v10, 0xee6b2800L

    invoke-direct {v8, v6, v10, v11}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Landroid/util/Range;

    const/16 v8, 0x1f4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v1, v5, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v10, 0x77359400

    invoke-direct {v5, v6, v10, v11}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Landroid/util/Range;

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v8, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    invoke-direct {v6, v4, v10, v11}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v5, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v10, 0x3b9aca00

    invoke-direct {v5, v4, v10, v11}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Landroid/util/Range;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v7, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v2, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v7, 0x5f5e100

    invoke-direct {v6, v4, v7, v8}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Landroid/util/Range;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v2, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v7, 0x1312d00

    invoke-direct {v5, v4, v7, v8}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v6, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v2, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    const-wide/32 v5, 0x989680

    invoke-direct {v2, v4, v5, v6}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Landroid/util/Range;

    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
