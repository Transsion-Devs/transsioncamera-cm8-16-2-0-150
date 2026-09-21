.class public Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private imgVideoLoadingFailed:Z

.field private itemDescription:Ljava/lang/String;

.field private itemImgVideoFilePath:Ljava/lang/String;

.field private itemImgVideoUrl:Ljava/lang/String;

.field private itemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemDescription()Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getItemImgVideoFilePath()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemImgVideoFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getItemImgVideoUrl()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemImgVideoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method public isImgVideoLoadingFailed()Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->imgVideoLoadingFailed:Z

    return p0
.end method

.method public setImgVideoLoadingFailed(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->imgVideoLoadingFailed:Z

    return-void
.end method

.method public setItemDescription(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemDescription:Ljava/lang/String;

    return-void
.end method

.method public setItemImgVideoFilePath(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemImgVideoFilePath:Ljava/lang/String;

    return-void
.end method

.method public setItemImgVideoUrl(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemImgVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetailItemBean{itemName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", itemImgVideoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemImgVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", itemDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", itemImgVideoFilePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->itemImgVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", imgVideoLoadingFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->imgVideoLoadingFailed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
