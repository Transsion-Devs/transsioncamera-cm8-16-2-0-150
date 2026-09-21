.class Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;


# direct methods
.method public static synthetic $r8$lambda$ESvzcwgnB8snyFot3dMeA1J3LtI(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;->lambda$updateSuccess$0(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQddnJ2CpN1mb2tydlQTl8WYfw4(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;->lambda$updateFail$2(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XDshZdLtUv-g9LdOxNRvKVqruqA(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;->lambda$updateSuccess$1(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$updateFail$2(Ljava/lang/String;I)V
    .registers 3

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->-$$Nest$fgetmGuideUIManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->onRequestSourceFailed(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$updateSuccess$0(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->-$$Nest$fgetmGuideUIManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->updateImageryGuideResource(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$updateSuccess$1(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->-$$Nest$fgetmGuideUIManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->updateImageryGuideResource(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public updateFail(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;I)V
    .registers 6

    .line 99
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4, p5}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->-$$Nest$fgetmCacheManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->updateImageryGuideJson(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[BLjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->-$$Nest$fgetmCacheManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->cacheResource([BLjava/lang/String;Ljava/lang/String;I)V

    .line 88
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3, p4, p5}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
