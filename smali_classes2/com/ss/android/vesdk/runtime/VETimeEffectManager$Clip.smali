.class public Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/runtime/VETimeEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clip"
.end annotation


# instance fields
.field clipRotate:I

.field clipType:I

.field index:I

.field path:Ljava/lang/String;

.field speed:D

.field type:I

.field vSeqIn:I

.field vSeqOut:I

.field vTrimIn:I

.field vTrimOut:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IIIIIDI)V
    .registers 12

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->type:I

    .line 61
    iput p2, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    .line 62
    iput p4, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->index:I

    .line 63
    iput p5, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    .line 64
    iput p6, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    .line 65
    iput p7, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    .line 66
    iput p8, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    .line 67
    iput-wide p9, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    .line 68
    iput-object p3, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    .line 69
    iput p11, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clip: clipType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " seqin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seqout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trimIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trimOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " clipRotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
