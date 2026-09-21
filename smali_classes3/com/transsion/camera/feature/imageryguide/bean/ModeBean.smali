.class public Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private detailBeansList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private imgUrl:Ljava/lang/String;

.field private isSupport:Z

.field private modeImgFilePath:Ljava/lang/String;

.field private modeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;Z)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->modeName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->imgUrl:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->detailBeansList:Ljava/util/List;

    .line 18
    iput-boolean p4, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->isSupport:Z

    return-void
.end method


# virtual methods
.method public getDetailBeansList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->detailBeansList:Ljava/util/List;

    return-object p0
.end method

.method public getImgUrl()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->imgUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getModeImgFilePath()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->modeImgFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->modeName:Ljava/lang/String;

    return-object p0
.end method

.method public isSupport()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->isSupport:Z

    return p0
.end method

.method public setDetailBeansList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->detailBeansList:Ljava/util/List;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setModeImgFilePath(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->modeImgFilePath:Ljava/lang/String;

    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->modeName:Ljava/lang/String;

    return-void
.end method

.method public setSupport(Z)V
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->isSupport:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModeBean{modeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->modeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imgUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", modeImgFilePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->modeImgFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", detailBeansList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->detailBeansList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->isSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
