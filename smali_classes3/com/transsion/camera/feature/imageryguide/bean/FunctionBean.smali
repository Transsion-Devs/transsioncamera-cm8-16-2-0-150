.class public Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private belongsModeName:Ljava/lang/String;

.field private detailName:Ljava/lang/String;

.field private functionImgFilePath:Ljava/lang/String;

.field private functionName:Ljava/lang/String;

.field private functionUrl:Ljava/lang/String;

.field private isSupport:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBelongsModeName()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->belongsModeName:Ljava/lang/String;

    return-object p0
.end method

.method public getDetailName()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->detailName:Ljava/lang/String;

    return-object p0
.end method

.method public getFunctionImgFilePath()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->functionImgFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFunctionName()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->functionName:Ljava/lang/String;

    return-object p0
.end method

.method public getFunctionUrl()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->functionUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isSupport()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->isSupport:Z

    return p0
.end method

.method public setBelongsModeName(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->belongsModeName:Ljava/lang/String;

    return-void
.end method

.method public setDetailName(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->detailName:Ljava/lang/String;

    return-void
.end method

.method public setFunctionImgFilePath(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->functionImgFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFunctionName(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->functionName:Ljava/lang/String;

    return-void
.end method

.method public setFunctionUrl(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->functionUrl:Ljava/lang/String;

    return-void
.end method

.method public setSupport(Z)V
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->isSupport:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FunctionBean{belongsModeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->belongsModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", functionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", detailName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->detailName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", functionUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->functionUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", functionImgFilePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->functionImgFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->isSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
