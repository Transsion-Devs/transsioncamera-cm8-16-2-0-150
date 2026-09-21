.class Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;
.super Lcom/transsion/camera/featurelibs/download/DataResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->updatePortraitConfig(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;Ljava/lang/String;Landroid/os/Handler;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$forceDownload:Z

.field final synthetic val$mUpdatePortraitCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

.field final synthetic val$requestType:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;Ljava/util/concurrent/Executor;Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;Z)V
    .registers 6

    .line 63
    iput-object p3, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;->val$requestType:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;

    iput-object p4, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;->val$mUpdatePortraitCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    iput-boolean p5, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;->val$forceDownload:Z

    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/download/DataResponse;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V
    .registers 8

    .line 72
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePortraitConfig] type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;->val$requestType:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  onError "

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

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;->val$mUpdatePortraitCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;->updateFail(Lcom/transsion/camera/featurelibs/download/Request;II)V

    return-void
.end method

.method public onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    .registers 6

    .line 66
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePortraitConfig] type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;->val$requestType:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  onSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;->val$mUpdatePortraitCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;->val$forceDownload:Z

    invoke-interface {v0, p1, p2, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;->updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[BZ)V

    return-void
.end method
