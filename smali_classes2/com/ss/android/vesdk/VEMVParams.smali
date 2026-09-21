.class public Lcom/ss/android/vesdk/VEMVParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEMVParams$MVResolution;
    }
.end annotation


# instance fields
.field public backVolume:F

.field public bgmPath:Ljava/lang/String;

.field public bgmTrimIn:I

.field public bgmTrimOut:I

.field public customRenderRes:Lcom/ss/android/vesdk/VESize;

.field public extraParams:[Ljava/lang/String;

.field public imageResizeRatio:Lcom/ss/android/vesdk/VESize;

.field public imgSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;"
        }
    .end annotation
.end field

.field public isSingleVideo:Z

.field public karaokeAudioDurations:[I

.field public karaokeAudioPaths:[Ljava/lang/String;

.field public karaokeAudioSpeeds:[F

.field public mvDuration:[I

.field public mvPath:Ljava/lang/String;

.field public originalVolume:F

.field public resFillMode:I

.field public resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

.field public resourcesFilePaths:[Ljava/lang/String;

.field public resourcesTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->backVolume:F

    .line 90
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->originalVolume:F

    .line 134
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->customRenderRes:Lcom/ss/android/vesdk/VESize;

    .line 140
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imageResizeRatio:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->resFillMode:I

    .line 254
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    .line 255
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmPath:Ljava/lang/String;

    const/4 v2, -0x1

    .line 258
    iput v2, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimIn:I

    .line 259
    iput v2, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimOut:I

    .line 260
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    .line 261
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    .line 262
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    .line 263
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioPaths:[Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioDurations:[I

    .line 265
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioSpeeds:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->backVolume:F

    .line 90
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->originalVolume:F

    .line 134
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->customRenderRes:Lcom/ss/android/vesdk/VESize;

    .line 140
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imageResizeRatio:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->resFillMode:I

    .line 162
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    .line 165
    sget-object p1, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    .line 166
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    .line 167
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/ss/android/vesdk/VEMVParams$MVResolution;)V
    .registers 7

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->backVolume:F

    .line 90
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->originalVolume:F

    .line 134
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->customRenderRes:Lcom/ss/android/vesdk/VESize;

    .line 140
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imageResizeRatio:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->resFillMode:I

    .line 176
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    .line 179
    iput-object p4, p0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    .line 180
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    .line 181
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->backVolume:F

    .line 90
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->originalVolume:F

    .line 134
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->customRenderRes:Lcom/ss/android/vesdk/VESize;

    .line 140
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imageResizeRatio:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->resFillMode:I

    .line 190
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    .line 193
    iput-object p4, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmPath:Ljava/lang/String;

    .line 194
    iput p5, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimIn:I

    .line 195
    iput p6, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimOut:I

    .line 196
    sget-object p1, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    .line 197
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    .line 198
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IIZ[I)V
    .registers 11

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->backVolume:F

    .line 90
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->originalVolume:F

    .line 134
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->customRenderRes:Lcom/ss/android/vesdk/VESize;

    .line 140
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imageResizeRatio:Lcom/ss/android/vesdk/VESize;

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/ss/android/vesdk/VEMVParams;->resFillMode:I

    .line 207
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    .line 210
    iput-object p4, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmPath:Ljava/lang/String;

    .line 211
    iput p5, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimIn:I

    .line 212
    iput p6, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimOut:I

    .line 213
    sget-object p1, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    .line 214
    iput-boolean p7, p0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    .line 215
    iput-object p8, p0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I[F)V
    .registers 11

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->backVolume:F

    .line 90
    iput v1, p0, Lcom/ss/android/vesdk/VEMVParams;->originalVolume:F

    .line 134
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->customRenderRes:Lcom/ss/android/vesdk/VESize;

    .line 140
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVParams;->imageResizeRatio:Lcom/ss/android/vesdk/VESize;

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/ss/android/vesdk/VEMVParams;->resFillMode:I

    .line 231
    aget-object v1, p3, v0

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz p4, :cond_20

    goto :goto_2a

    .line 233
    :cond_20
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 p1, -0x64

    const-string p2, "Invalid params in karaoke mv mode!"

    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 237
    :cond_2a
    :goto_2a
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    .line 238
    iput-object p2, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    .line 239
    iput-object p3, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    .line 240
    iput-object p4, p0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    .line 241
    iput-object p5, p0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioPaths:[Ljava/lang/String;

    .line 242
    iput-object p6, p0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioDurations:[I

    .line 243
    iput-object p7, p0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioSpeeds:[F

    .line 244
    sget-object p1, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    .line 245
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEMVParams{mvPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resourcesFilePaths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    .line 272
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resourcesTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    .line 273
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isSingleVideo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mvDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    .line 275
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bgmPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bgmTrimIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bgmTrimOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEMVParams;->backVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", originalVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEMVParams;->originalVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resMV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", karaokeAudioPaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioPaths:[Ljava/lang/String;

    .line 283
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", karaokeAudioDurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioDurations:[I

    .line 284
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", karaokeAudioSpeeds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioSpeeds:[F

    .line 285
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customRenderRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVParams;->customRenderRes:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageResizeRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVParams;->imageResizeRatio:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageResFillMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEMVParams;->resFillMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
