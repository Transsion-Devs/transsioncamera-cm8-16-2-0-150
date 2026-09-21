.class public final synthetic Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/effecttaint/labcv/demo/task/UnzipTask;

.field public final synthetic f$1:Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/effecttaint/labcv/demo/task/UnzipTask;Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda0;->f$0:Lcom/effecttaint/labcv/demo/task/UnzipTask;

    iput-object p2, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda0;->f$1:Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;

    iput-object p3, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda0;->f$0:Lcom/effecttaint/labcv/demo/task/UnzipTask;

    iget-object v1, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda0;->f$1:Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;

    iget-object p0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask;->$r8$lambda$DKR4UGGy139o1gAV4T-l75kV8LY(Lcom/effecttaint/labcv/demo/task/UnzipTask;Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;Ljava/lang/String;)V

    return-void
.end method
