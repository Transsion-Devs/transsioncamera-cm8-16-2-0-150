.class public final synthetic Lcom/obs/services/internal/service/ObsObjectBaseService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/obs/services/internal/service/ObsObjectBaseService;

.field public final synthetic f$1:Lcom/obs/services/model/PutObjectInTwoBucketRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/obs/services/internal/service/ObsObjectBaseService;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/service/ObsObjectBaseService$$ExternalSyntheticLambda1;->f$0:Lcom/obs/services/internal/service/ObsObjectBaseService;

    iput-object p2, p0, Lcom/obs/services/internal/service/ObsObjectBaseService$$ExternalSyntheticLambda1;->f$1:Lcom/obs/services/model/PutObjectInTwoBucketRequest;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/obs/services/internal/service/ObsObjectBaseService$$ExternalSyntheticLambda1;->f$0:Lcom/obs/services/internal/service/ObsObjectBaseService;

    iget-object p0, p0, Lcom/obs/services/internal/service/ObsObjectBaseService$$ExternalSyntheticLambda1;->f$1:Lcom/obs/services/model/PutObjectInTwoBucketRequest;

    invoke-static {v0, p0}, Lcom/obs/services/internal/service/ObsObjectBaseService;->$r8$lambda$yKb0olbfpSVa6FtTS0gNNJAaLeM(Lcom/obs/services/internal/service/ObsObjectBaseService;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;

    move-result-object p0

    return-object p0
.end method
