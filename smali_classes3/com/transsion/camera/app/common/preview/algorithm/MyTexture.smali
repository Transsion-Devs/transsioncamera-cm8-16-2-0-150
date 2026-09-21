.class public Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public isIdle:Z

.field public isTexToDraw:Z

.field public texId:I

.field public texType:I

.field public width:I


# direct methods
.method constructor <init>(IIII)V
    .registers 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isTexToDraw:Z

    .line 12
    iput p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    .line 13
    iput p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    .line 14
    iput p3, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->width:I

    .line 15
    iput p4, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->height:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTexture{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", texId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", texType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
