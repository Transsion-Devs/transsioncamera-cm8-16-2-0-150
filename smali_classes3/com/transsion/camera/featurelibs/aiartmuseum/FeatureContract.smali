.class Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVALID_FEATURE:I = -0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFeatureSyncMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFeatureValueMap:Ljava/util/Map;
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

.field private static final sPartialValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStyleValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTravelValueMap:Ljava/util/Map;
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
.method static bridge synthetic -$$Nest$sfgetsPartialValueMap()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sPartialValueMap:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsStyleValueMap()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sStyleValueMap:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsTravelValueMap()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sTravelValueMap:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FeatureContract"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 59
    new-instance v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$1;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sFeatureMap:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$2;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sFeatureSyncMap:Ljava/util/Map;

    .line 73
    new-instance v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$3;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sStyleValueMap:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$4;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sTravelValueMap:Ljava/util/Map;

    .line 104
    new-instance v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$5;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sPartialValueMap:Ljava/util/Map;

    .line 117
    new-instance v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$6;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract$6;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sFeatureValueMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFeature(Ljava/lang/String;Z)I
    .registers 5

    const/4 v0, -0x1

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_10

    sget-object p1, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sFeatureSyncMap:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_18

    .line 130
    :cond_10
    sget-object p1, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sFeatureMap:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    :goto_18
    if-nez p1, :cond_31

    .line 133
    sget-object p1, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeature invalid effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 136
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static getFeatureValue(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 140
    sget-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->sFeatureValueMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, -0x1

    if-nez v0, :cond_22

    .line 142
    sget-object p1, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeatureValue invalid effect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 145
    :cond_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_45

    .line 147
    sget-object p0, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeatureValue invalid effectValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 150
    :cond_45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
