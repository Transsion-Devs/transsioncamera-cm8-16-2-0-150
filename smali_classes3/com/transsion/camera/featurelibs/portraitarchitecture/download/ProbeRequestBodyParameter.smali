.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private country:Ljava/lang/String;

.field private model:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getInstance()Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getPortraitParameterManager()Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;

    sget-object p1, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->COUNTRY_CODE:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;->country:Ljava/lang/String;

    .line 19
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;->model:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;->country:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;->model:Ljava/lang/String;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;->country:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;->model:Ljava/lang/String;

    return-void
.end method
