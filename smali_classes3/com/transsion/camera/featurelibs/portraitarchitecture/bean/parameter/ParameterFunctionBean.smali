.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private back:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;

.field private front:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBack()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;->back:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;

    return-object p0
.end method

.method public getFront()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;->front:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;

    return-object p0
.end method

.method public setBack(Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;->back:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;

    return-void
.end method

.method public setFront(Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;->front:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;

    return-void
.end method
