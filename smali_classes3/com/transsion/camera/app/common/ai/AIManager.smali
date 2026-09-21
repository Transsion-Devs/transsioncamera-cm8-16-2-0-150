.class public Lcom/transsion/camera/app/common/ai/AIManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ai/IAIManager;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ai/AIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "key_ai_art_museum"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 34
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    goto :goto_18

    .line 36
    :cond_12
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    .line 38
    :goto_18
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public captureLimited()Z
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->captureLimited()Z

    move-result p0

    return p0
.end method

.method public captureSuccess(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->captureSuccess(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public captureWait()Z
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->captureWait()Z

    move-result p0

    return p0
.end method

.method public featureSupport(Ljava/lang/String;)Z
    .registers 2

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;

    move-result-object p0

    return-object p0
.end method

.method public getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public limitedCount()I
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->limitedCount()I

    move-result p0

    return p0
.end method

.method public refresh()V
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->refresh()V

    return-void
.end method

.method public reload()V
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->reload()V

    return-void
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
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

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->removedTemplate()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->request(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method

.method public terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z

    move-result p0

    return p0
.end method
