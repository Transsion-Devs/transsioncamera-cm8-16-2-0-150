.class Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;


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
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->-$$Nest$fgetmGuideDownLoadManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->cancelAllRequest()V

    return-void
.end method

.method public onCancelDetail()V
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->-$$Nest$fgetmGuideDownLoadManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->onCancelDetail()V

    return-void
.end method
