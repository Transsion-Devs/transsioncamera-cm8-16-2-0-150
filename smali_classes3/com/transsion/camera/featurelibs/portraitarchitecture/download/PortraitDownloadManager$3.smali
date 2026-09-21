.class Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$3;
.super Lcom/transsion/camera/featurelibs/download/DataResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->probe(Landroid/os/Handler;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iUpdatePortraitCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;Ljava/util/concurrent/Executor;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;)V
    .registers 4

    .line 151
    iput-object p3, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$3;->val$iUpdatePortraitCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/download/DataResponse;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V
    .registers 7

    .line 160
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "probe  onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$3;->val$iUpdatePortraitCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;->updateFail(Lcom/transsion/camera/featurelibs/download/Request;II)V

    return-void
.end method

.method public onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    .registers 6

    .line 154
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "probe  onSuccess "

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

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$3;->val$iUpdatePortraitCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;->updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[BZ)V

    return-void
.end method
