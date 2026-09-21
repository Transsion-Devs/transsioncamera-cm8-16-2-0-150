.class Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;


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

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$2;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateFail(Lcom/transsion/camera/featurelibs/download/Request;II)V
    .registers 4

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$2;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$mstartWork(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)V

    return-void
.end method

.method public updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[BZ)V
    .registers 4

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$2;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmPortraitParameterManager(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    move-result-object p0

    const-string p1, "portrait_arch_parameter"

    invoke-virtual {p0, p2, p1, p3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->processWebParameterConfig([BLjava/lang/String;Z)V

    return-void
.end method
