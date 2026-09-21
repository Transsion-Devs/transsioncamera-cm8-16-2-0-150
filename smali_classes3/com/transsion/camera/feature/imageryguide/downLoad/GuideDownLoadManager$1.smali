.class Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;
.super Lcom/transsion/camera/featurelibs/download/DataResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->downLoadResourceIfNeed(Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;Ljava/lang/String;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$iUpdateHelpGuideCallback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

.field final synthetic val$pathRoot:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$remoteUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;)V
    .registers 8

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$remoteUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$pathRoot:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$fileName:Ljava/lang/String;

    iput p6, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$position:I

    iput-object p7, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$iUpdateHelpGuideCallback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/download/DataResponse;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V
    .registers 12

    .line 104
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[downLoadResourceIfNeed] :  onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   errorType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$iUpdateHelpGuideCallback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$pathRoot:Ljava/lang/String;

    iget v6, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$position:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;->updateFail(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;I)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->-$$Nest$mremoveDetailRequest(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method public onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    .registers 11

    .line 95
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[downLoadResourceIfNeed] :onSuccess  remoteUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$remoteUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,pathRoot :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$pathRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,fileName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,position :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$iUpdateHelpGuideCallback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$pathRoot:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$fileName:Ljava/lang/String;

    iget v7, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->val$position:I

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;->updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[BLjava/lang/String;Ljava/lang/String;I)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    invoke-static {p0, v3}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->-$$Nest$mremoveDetailRequest(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method
