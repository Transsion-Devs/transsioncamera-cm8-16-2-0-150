.class public Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewTag"
.end annotation


# instance fields
.field public downLoadFailed:Z

.field public position:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;->position:I

    .line 189
    iput-boolean p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;->downLoadFailed:Z

    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 1

    .line 193
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;->position:I

    return p0
.end method

.method public isDownLoadFailed()Z
    .registers 1

    .line 197
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;->downLoadFailed:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewTag{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downLoadFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;->downLoadFailed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
