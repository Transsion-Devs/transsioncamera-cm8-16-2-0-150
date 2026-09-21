.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterBlueValueBean"
.end annotation


# instance fields
.field private monomer_pmaster:Ljava/lang/String;

.field private stereo_pmaster:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMonomer_pmaster()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;->monomer_pmaster:Ljava/lang/String;

    return-object p0
.end method

.method public getStereo_pmaster()Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;->stereo_pmaster:Ljava/lang/String;

    return-object p0
.end method

.method public setMonomer_pmaster(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;->monomer_pmaster:Ljava/lang/String;

    return-void
.end method

.method public setStereo_pmaster(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;->stereo_pmaster:Ljava/lang/String;

    return-void
.end method
