.class public Lcom/transsion/camera/app/common/ai/AIFeatureStub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ai/IAIFeature;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lcom/transsion/camera/app/common/ai/IAIFeature;
    .registers 1

    .line 17
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIFeatureStub;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ai/AIFeatureStub;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getFeature()Ljava/lang/String;
    .registers 1

    .line 22
    const-string p0, ""

    return-object p0
.end method

.method public getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 37
    const-string p0, ""

    return-object p0
.end method

.method public getWatermarkDescription(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 32
    const-string p0, ""

    return-object p0
.end method

.method public saveRequest()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
