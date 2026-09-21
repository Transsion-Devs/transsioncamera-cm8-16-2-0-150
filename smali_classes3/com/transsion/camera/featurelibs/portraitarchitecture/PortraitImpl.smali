.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 29
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getInstance()Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceBautyDefaultList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getInstance()Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getFaceBautyDefaultList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public preInit(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getInstance()Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->preInit(Landroid/content/Context;)V

    return-void
.end method

.method public update()V
    .registers 1

    .line 19
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getInstance()Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->update()V

    return-void
.end method
