.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private female:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

.field private male:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

.field private unknown:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFemale()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;->female:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    return-object p0
.end method

.method public getMale()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;->male:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    return-object p0
.end method

.method public getUnknow()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;->unknown:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    return-object p0
.end method

.method public setFemale(Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;->female:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    return-void
.end method

.method public setMale(Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;->male:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    return-void
.end method

.method public setUnknown(Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;->unknown:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    return-void
.end method
