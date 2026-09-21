.class public Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_LIMIT_COUNT:I = 0x19

.field private static final KEY_LIMIT:Ljava/lang/String; = "limit"

.field private static final REQUEST_LIMIT_CONFIG:Ljava/lang/String; = "com_transsion_camera_aigc_limit"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mRequestNote:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

.field private final mTPMSConfig:Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->mRequestNote:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;

    const-string v1, "com_transsion_camera_aigc_limit"

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->mTPMSConfig:Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;

    return-void
.end method


# virtual methods
.method public limitedCount()I
    .registers 3

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->mTPMSConfig:Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;->mConfigJson:Lorg/json/JSONObject;

    const-string v0, "limit"

    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removedTemplate()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public requestLimited()Z
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->requestedCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->limitedCount()I

    move-result p0

    if-lt v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public requestSuccess()V
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->mRequestNote:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->requestSuccess()V

    return-void
.end method

.method public requestedCount()I
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->mRequestNote:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->requestedToday()I

    move-result p0

    return p0
.end method
