.class Lcom/transsion/camera/utils/sound/ActionSound$Sound;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/sound/ActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sound"
.end annotation


# instance fields
.field needLoop:Z

.field playCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

.field playRequested:Z

.field sampleId:I

.field soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

.field soundFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field soundFilePaths:[Ljava/lang/String;

.field soundLoadCompleteCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;

.field soundResName:Ljava/lang/String;

.field state:I

.field streamId:I

.field usage:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/utils/sound/ActionSound;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    .line 80
    iput p1, p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    const/16 p1, 0xd

    .line 81
    iput p1, p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->usage:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    const-string v2, "Sound: "

    if-eqz v1, :cond_1c

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 90
    :cond_1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_24
    const-string v1, ", sampleId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->streamId:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sound state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
