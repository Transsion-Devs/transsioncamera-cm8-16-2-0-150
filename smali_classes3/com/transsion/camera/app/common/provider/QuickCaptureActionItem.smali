.class public Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mQCAction:I

.field private mQCItemKey:Ljava/lang/String;

.field private mQCNeedAnimation:Z

.field private mQCProcessShutterStartDone:Z

.field private mQCProcessThumbnailDone:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQCAction()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCAction:I

    return p0
.end method

.method public getQCItemKey()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCItemKey:Ljava/lang/String;

    return-object p0
.end method

.method public isQCNeedAnimation()Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCNeedAnimation:Z

    return p0
.end method

.method public isQCProcessShutterStartDone()Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCProcessShutterStartDone:Z

    return p0
.end method

.method public isQCProcessThumbnailDone()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCProcessThumbnailDone:Z

    return p0
.end method

.method public setQCAction(I)V
    .registers 2

    .line 14
    iput p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCAction:I

    return-void
.end method

.method public setQCItemKey(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCItemKey:Ljava/lang/String;

    return-void
.end method

.method public setQCNeedAnimation(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCNeedAnimation:Z

    return-void
.end method

.method public setQCProcessShutterStartDone(Z)V
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCProcessShutterStartDone:Z

    return-void
.end method

.method public setQCProcessThumbnailDone(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->mQCProcessThumbnailDone:Z

    return-void
.end method
