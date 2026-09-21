.class Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$3;
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

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$3;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateFail(Lcom/transsion/camera/featurelibs/download/Request;II)V
    .registers 4

    return-void
.end method

.method public updateSuccess(Lcom/transsion/camera/featurelibs/download/Request;[BZ)V
    .registers 4

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$3;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmPortraitProbeManager(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProbeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager$3;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->-$$Nest$fgetmProbeDataCallback(Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;)Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProbeManager;->processPrpneConfig([BLcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;)V

    return-void
.end method
