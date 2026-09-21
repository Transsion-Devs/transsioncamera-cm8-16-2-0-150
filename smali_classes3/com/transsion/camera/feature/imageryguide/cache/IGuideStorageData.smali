.class public interface abstract Lcom/transsion/camera/feature/imageryguide/cache/IGuideStorageData;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete()V
.end method

.method public abstract getFunctionBeans()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModeBeans()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSaleModeBeans()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract loadImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;
.end method

.method public abstract unInit()V
.end method

.method public abstract updateAllBeans(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract updateFunctionBeans(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateImageryGuide(Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;)V
.end method

.method public abstract updateModeBeans(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSaleModeBeans(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;)V"
        }
    .end annotation
.end method
