.class public final synthetic Lcom/transsion/camera/app/common/livephoto/PhotoTaskData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, [B

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getQualityInfo([B)Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    move-result-object p0

    return-object p0
.end method
