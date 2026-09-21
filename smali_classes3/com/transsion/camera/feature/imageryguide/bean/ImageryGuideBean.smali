.class public Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private functionBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;"
        }
    .end annotation
.end field

.field private modeBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private saleModeBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->saleModeBeanList:Ljava/util/List;

    .line 14
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->modeBeanList:Ljava/util/List;

    .line 15
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->functionBeanList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFunctionBeanList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->functionBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getModeBeanList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->modeBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getSaleModeBeanList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->saleModeBeanList:Ljava/util/List;

    return-object p0
.end method

.method public setFunctionBeanList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->functionBeanList:Ljava/util/List;

    return-void
.end method

.method public setModeBeanList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->modeBeanList:Ljava/util/List;

    return-void
.end method

.method public setSaleModeBeanList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->saleModeBeanList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageryGuideBean{saleModeBeanList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->saleModeBeanList:Ljava/util/List;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modeBeanList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->modeBeanList:Ljava/util/List;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", functionBeanList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->functionBeanList:Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
