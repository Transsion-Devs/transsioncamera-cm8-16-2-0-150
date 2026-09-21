.class Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$2;
.super Lcom/transsion/camera/featurelibs/download/DataResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->requestJsonDataFormRemote(Ljava/lang/String;Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

.field final synthetic val$callback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Ljava/util/concurrent/Executor;Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;)V
    .registers 4

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$2;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$2;->val$callback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/download/DataResponse;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V
    .registers 12

    .line 162
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestJsonDataFormRemote]  onError  ,errorType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,info :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    iget-object p4, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$2;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->-$$Nest$fputmRemoteConfigRequest(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Lcom/transsion/camera/featurelibs/download/Request;)V

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$2;->val$callback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;->updateFail(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;I)V

    return-void
.end method

.method public onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    .registers 6

    .line 155
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestJsonDataFormRemote]  onSuccess, data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$2;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->-$$Nest$fputmRemoteConfigRequest(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Lcom/transsion/camera/featurelibs/download/Request;)V

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$2;->val$callback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;->updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V

    return-void
.end method
