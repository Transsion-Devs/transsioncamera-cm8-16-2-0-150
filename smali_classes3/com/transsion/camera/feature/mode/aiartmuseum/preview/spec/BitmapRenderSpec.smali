.class public Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;
.source "SourceFile"


# static fields
.field private static final INVALID_BACKGROUND:I = -0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sRatioSpecMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sRatioSpecMap16_9:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRatioSpecMap1_1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRatioSpecMap4_3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRatioSpecMapFull:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetsRatioSpecMap16_9()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMap16_9:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsRatioSpecMap1_1()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMap1_1:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsRatioSpecMap4_3()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMap4_3:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsRatioSpecMapFull()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMapFull:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BitmapRenderSpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 42
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMap1_1:Ljava/util/Map;

    .line 60
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMap4_3:Ljava/util/Map;

    .line 78
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMap16_9:Ljava/util/Map;

    .line 96
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMapFull:Ljava/util/Map;

    .line 114
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$5;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;-><init>()V

    return-void
.end method

.method public static getBackground(IILjava/lang/String;)I
    .registers 8

    .line 124
    const-string v0, ", height: "

    const/4 v1, -0x1

    if-lez p0, :cond_5d

    if-lez p1, :cond_5d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5d

    .line 130
    :cond_e
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;->getRatioSpec(II)Ljava/lang/String;

    move-result-object v2

    .line 132
    sget-object v3, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->sRatioSpecMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_39

    .line 134
    sget-object p2, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackground ratioMap is null, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 138
    :cond_39
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_58

    .line 140
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBackground background is null, effectValue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 144
    :cond_58
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 125
    :cond_5d
    :goto_5d
    sget-object v2, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackground invalid param, width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", effectValue: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method
