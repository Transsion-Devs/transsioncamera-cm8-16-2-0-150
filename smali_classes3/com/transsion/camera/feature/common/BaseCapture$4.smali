.class Lcom/transsion/camera/feature/common/BaseCapture$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$4;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .registers 5

    .line 352
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$4;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmThumbnailOperator(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$4;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmThumbnailOperator(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;->updateUri(Landroid/net/Uri;)V

    .line 356
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$4;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$mtriggerCaptureEnd(Lcom/transsion/camera/feature/common/BaseCapture;)V

    .line 357
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    .line 358
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string p1, "-1"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setTriggerType(Ljava/lang/String;)V

    return-void
.end method
