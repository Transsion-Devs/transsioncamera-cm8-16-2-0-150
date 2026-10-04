.class Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$5;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v0, "1_1"

    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->-$$Nest$sfgetsRatioSpecMap1_1()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "4_3"

    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->-$$Nest$sfgetsRatioSpecMap4_3()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "16_9"

    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->-$$Nest$sfgetsRatioSpecMap16_9()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "full"

    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->-$$Nest$sfgetsRatioSpecMapFull()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
