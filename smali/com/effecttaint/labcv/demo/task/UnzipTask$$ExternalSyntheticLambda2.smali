.class public final synthetic Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda2;->f$0:Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda2;->f$0:Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;

    invoke-static {p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask;->$r8$lambda$fUAUeBkG7-iwHGDFgHzWn7Vx_MM(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;)V

    return-void
.end method
