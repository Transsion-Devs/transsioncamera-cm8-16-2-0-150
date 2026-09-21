.class public Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private defaultIndex:I

.field private detailDescription:Ljava/lang/String;

.field private detailItemBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private detailName:Ljava/lang/String;

.field private itemType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->itemType:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->defaultIndex:I

    return-void
.end method


# virtual methods
.method public getDefaultIndex()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->defaultIndex:I

    return p0
.end method

.method public getDetailDescription()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->detailDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getDetailItemBeanList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->detailItemBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getDetailName()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->detailName:Ljava/lang/String;

    return-object p0
.end method

.method public getItemType()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->itemType:I

    return p0
.end method

.method public setDefaultIndex(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->defaultIndex:I

    return-void
.end method

.method public setDetailDescription(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->detailDescription:Ljava/lang/String;

    return-void
.end method

.method public setDetailItemBeanList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->detailItemBeanList:Ljava/util/List;

    return-void
.end method

.method public setDetailName(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->detailName:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->itemType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetailBean{detailName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->detailName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", detailDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->detailDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->defaultIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", detailItemBeanList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->detailItemBeanList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
