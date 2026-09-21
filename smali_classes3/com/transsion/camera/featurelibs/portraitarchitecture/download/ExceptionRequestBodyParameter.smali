.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private erroeMsg:Ljava/lang/String;

.field private errorCode:I

.field private type:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErroeMsg()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->erroeMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->errorCode:I

    return p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setErroeMsg(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->erroeMsg:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->errorCode:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->type:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->version:Ljava/lang/String;

    return-void
.end method
