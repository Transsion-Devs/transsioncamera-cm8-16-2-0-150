.class public final Lcom/transsion/camera/utils/HighFpsResolution;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fps:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/transsion/camera/utils/HighFpsResolution;->width:I

    .line 11
    iput p2, p0, Lcom/transsion/camera/utils/HighFpsResolution;->height:I

    .line 12
    iput p3, p0, Lcom/transsion/camera/utils/HighFpsResolution;->fps:I

    return-void
.end method


# virtual methods
.method public getFps()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/transsion/camera/utils/HighFpsResolution;->fps:I

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 20
    iget p0, p0, Lcom/transsion/camera/utils/HighFpsResolution;->height:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/transsion/camera/utils/HighFpsResolution;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/utils/HighFpsResolution;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/HighFpsResolution;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/HighFpsResolution;->fps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "fps"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
