.class public Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sInstance:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;


# instance fields
.field private final mDelegate:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtMuseumEngine"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 32
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->sInstance:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aiArtMuseumStubPreview()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    const-string v0, "com.transsion.camera.featurelibs.aiartmuseum.AIArtMuseumEngineStub"

    goto :goto_e

    :cond_c
    const-string v0, "com.transsion.camera.featurelibs.aiartmuseum.AIArtMuseumEngineImpl"

    :goto_e
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->mDelegate:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;
    .registers 1

    .line 44
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->sInstance:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    return-object v0
.end method


# virtual methods
.method public init(Z)V
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->mDelegate:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;

    if-nez p0, :cond_c

    .line 50
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_c
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;->init(Z)V

    return-void
.end method

.method public process(I[IIIII)V
    .registers 7

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->mDelegate:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;

    if-nez p0, :cond_c

    .line 77
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_c
    invoke-interface/range {p0 .. p6}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;->process(I[IIIII)V

    return-void
.end method

.method public setEffect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->mDelegate:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;

    if-nez p0, :cond_c

    .line 59
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_c
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;->setEffect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEffect(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->mDelegate:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;

    if-nez p0, :cond_c

    .line 68
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_c
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;->setEffect(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->mDelegate:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;

    if-nez p0, :cond_c

    .line 86
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDelegate is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_c
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;->unInit()V

    return-void
.end method
