.class Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec$3;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->-$$Nest$sfgetPREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_1_1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "1_1"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->-$$Nest$sfgetPREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_4_3()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "4_3"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->-$$Nest$sfgetPREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_16_9()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "16_9"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
