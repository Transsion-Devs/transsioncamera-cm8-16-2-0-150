.class Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2;
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
.method public static synthetic $r8$lambda$iUoeXAc52MrEiw95Uoh9DkekEJU(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2;->lambda$updateFail$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$updateFail$0()V
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->-$$Nest$fgetmGuideUIManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->onRequestFailed()V

    return-void
.end method


# virtual methods
.method public updateFail(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;I)V
    .registers 6

    .line 121
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 0
    return-void
.end method

.method public updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    .registers 3

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->-$$Nest$mparasData(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;[B)V

    return-void
.end method

.method public updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[BLjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 0
    return-void
.end method
