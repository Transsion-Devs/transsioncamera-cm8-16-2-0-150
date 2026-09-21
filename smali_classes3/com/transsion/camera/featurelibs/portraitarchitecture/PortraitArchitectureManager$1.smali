.class Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEnd(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 61
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processEnd] processSucess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  failType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  failString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    const-string v0, "portrait_arch_parameter"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$mstartWork(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V

    goto :goto_38

    .line 67
    :cond_36
    const-string v0, "resource"

    :goto_38
    if-nez p1, :cond_70

    const/4 p1, 0x1

    if-eq p1, p2, :cond_70

    .line 71
    const-string v1, "local_web"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5a

    .line 72
    iget-object p5, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p5}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmPortraitParameterManager(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    move-result-object p5

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmProcessConfigCallback(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    move-result-object v2

    invoke-virtual {p5, v1, p4, p1, v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->processConfig(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;)V

    .line 74
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmPortraitDownloadManager(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmResponseExceptionHandler(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Landroid/os/Handler;

    move-result-object p0

    move-object p4, p1

    move-object p1, p0

    move-object p0, p4

    move p4, p2

    move-object p5, p3

    move-object p3, p6

    move-object p2, v0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->updateException(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_70
    return-void
.end method
