.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private country:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private real_interval:J

.field private tpl_version:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestBodyParameter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo p1, "v2"

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->tpl_version:Ljava/lang/String;

    .line 15
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->model:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->country:Ljava/lang/String;

    .line 21
    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->model:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->country:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getRealInterval()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->real_interval:J

    return-wide v0
.end method

.method public getTpl_version()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->tpl_version:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->country:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->model:Ljava/lang/String;

    return-void
.end method

.method public setRealInterval(J)V
    .registers 3

    .line 53
    iput-wide p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->real_interval:J

    return-void
.end method

.method public setTpl_version(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->tpl_version:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->version:Ljava/lang/String;

    return-void
.end method

.method public updateData(Ljava/lang/String;)V
    .registers 8

    .line 58
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_d

    .line 60
    iput-wide v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->real_interval:J

    return-void

    .line 62
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x64

    cmp-long p1, v2, v4

    if-lez p1, :cond_1f

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->real_interval:J
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1f} :catch_20

    :cond_1f
    return-void

    :catch_20
    move-exception p0

    .line 68
    sget-object p1, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateData] NumberFormatException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
