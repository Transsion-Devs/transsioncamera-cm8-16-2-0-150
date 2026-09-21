.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;
    }
.end annotation


# instance fields
.field private back:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;

.field private front:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBack()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;->back:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;

    return-object p0
.end method

.method public getFront()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;->front:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;

    return-object p0
.end method

.method public setBack(Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;->back:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;

    return-void
.end method

.method public setFront(Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;->front:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;

    return-void
.end method
