.class Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$6;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;
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

    .line 117
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v0, "key_ai_art_museum_style"

    invoke-static {}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->-$$Nest$sfgetsStyleValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "key_ai_art_museum_travel"

    invoke-static {}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->-$$Nest$sfgetsTravelValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "key_ai_art_museum_partial"

    invoke-static {}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->-$$Nest$sfgetsPartialValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
