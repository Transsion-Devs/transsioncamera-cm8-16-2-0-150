.class public Lcom/bytedance/ies/cutsame/cut_android/BasePrepareListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onPreSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V
    .registers 2

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V
    .registers 2

    return-void
.end method
